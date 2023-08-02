--[[
    Cheat Gui
]]

Gui_Version = "0.3.5";

--/////////////////////////////////////////////////////////////////////////

--////Main
--Variables
local camera = workspace.CurrentCamera;
local CoreGui = game:GetService("CoreGui");
local uis = game:GetService("UserInputService");
local run = game:GetService("RunService");
local ReplicatedStorage = game:GetService("ReplicatedStorage");

local plyr = game.Players.LocalPlayer;
local mouse = plyr:GetMouse();
local char = plyr.Character or plyr.CharacterAdded:Wait();
local hrp = char:WaitForChild("HumanoidRootPart", math.huge);
local hum = char:WaitForChild("Humanoid", math.huge);

--Functions

function MakeScriptHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow1234d/dsaaq2/main/private.lua"))()
end

_G.Key = "private"
_G.KeyInput = "string"

plyr.CharacterAdded:Connect(function(New_Char)
    char = New_Char;
    hrp = New_Char:WaitForChild("HumanoidRootPart", math.huge);
    hum = New_Char:WaitForChild("Humanoid", math.huge);
end)

function FireAll_ClickDetectors()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("ClickDetector") then
            fireclickdetector(v);
        end
    end
end

function FireAll_TouchInterests()
    local root = hrp or char:FindFirstChildOfClass("BasePart");
    local function TI_Touch(x)
        x = x:FindFirstAncestorWhichIsA("Part");
        if x and root then
            task.spawn(function()
                firetouchinterest(x, root, 1)
                task.wait();
                firetouchinterest(x, root, 0)
            end)
        end
    end
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("TouchTransmitter") then
            TI_Touch(v);
        end
    end
end

--//Aimbot
local aimbot_conn_1 = nil;
local aimbot_conn_2 = nil;
local aimbot_conn_3 = nil;

local aimbot_team_check = false;
local aimbot_radius = 80;
local aimbot_target_part = "Head";
local aimbot_strict_team_check = false;

function Aimbot_GetClosestVisiblePlayer()
    local t = nil;
    local OnScreen = {};
    local MaxDistance = math.huge;
    for _, p in ipairs(game.Players:GetPlayers()) do
        if p.UserId ~= plyr.UserId then
            local function aimbot_getplayer_check()
                local c = p.Character;
                if c then
                    local r = nil;
                    if aimbot_target_part == "Head" then
                        r = c:FindFirstChild("Head");
                    elseif aimbot_target_part == "Torso" then
                        r = c:FindFirstChild("UpperTorso") or c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso");
                    end
                    if r then
                        pcall(function()
                            local Visible = camera:WorldToScreenPoint(r.Position);
                            if Visible then
                                local v1 = Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y);
                                local v2 = Vector2.new(Visible.X, Visible.Y);
                                local VectorDistace = (v1-v2).Magnitude;
                                if VectorDistace < aimbot_radius then
                                    table.insert(OnScreen, r);
                                end
                            end
                        end)
                    end
                end
            end
            if aimbot_team_check == true then
                if p.TeamColor ~= plyr.TeamColor then
                    if aimbot_strict_team_check then
                        if p.Team ~= plyr.Team then
                            aimbot_getplayer_check();
                        end
                    else
                        aimbot_getplayer_check();
                    end
                end
            else
                aimbot_getplayer_check();
            end
        end
    end
    for _, root in pairs(OnScreen) do
        if hrp and root then
            local Distance = (hrp.Position - root.Position).Magnitude;
            if Distance < MaxDistance then
                MaxDistance = Distance;
                t = root;
            end
        end
    end
    return t;
end

function ToggleAimbot(E)
    if E then
        local function Aimbot_Activate(e)
            if e then
                aimbot_conn_1 = run.Heartbeat:Connect(function()
                    task.spawn(function()
                        local ClosestVisiblePart = Aimbot_GetClosestVisiblePlayer();
                        if ClosestVisiblePart then
                            pcall(function()
                                camera.CFrame = CFrame.new(camera.CFrame.Position, ClosestVisiblePart.Position);
                            end)
                        end
                    end)
                end)
            else
                pcall(function()
                    aimbot_conn_1:Disconnect();
                end)
                aimbot_conn_1 = nil;
            end
        end
        aimbot_conn_2 = mouse.Button2Down:Connect(function()
            Aimbot_Activate(true);
        end)
        aimbot_conn_3 = mouse.Button2Up:Connect(function()
            Aimbot_Activate(false);
        end)
    else
        pcall(function()
            aimbot_conn_1:Disconnect();
        end)
        aimbot_conn_1 = nil;
        pcall(function()
            aimbot_conn_2:Disconnect();
        end)
        aimbot_conn_2 = nil;
        pcall(function()
            aimbot_conn_3:Disconnect();
        end)
        aimbot_conn_3 = nil;
    end
end
--//

--//Esp
local esp_conn_1 = nil;
local esp_conn_2 = nil;
local esp_conn_3 = nil;

local esp_transparency = 0.5;
local esp_blacklist_team = false;
local esp_enabled = false;
local esp_strict_team_blacklist = false;

function esp_update_esp_t()
    for _, v in pairs(CoreGui:GetChildren()) do
        if string.find(v.Name, "_ESP") and v:IsA("Folder") then
            for _, v in pairs(v:GetChildren()) do
                if v:IsA("BoxHandleAdornment") then
                    v.Transparency = esp_transparency;
                end
            end
        end
    end
end

function esp_update_esp_b(toggle_main)
    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= plyr then
            local function esp_update_start(toggle)
                local folder = CoreGui:FindFirstChild(v.Name.."_ESP");
                if toggle then
                    if folder then
                        for _, t in pairs(folder:GetChildren()) do
                            if t:IsA("BoxHandleAdornment") then
                                t:Destroy();
                            end
                        end
                    end
                else
                    if not folder then
                        folder = Instance.new("Folder", CoreGui);
                        folder.Name = v.Name.."_ESP";
                    end
                    if folder and #folder:GetChildren() <= 0 then
                        if esp_enabled then
                            local v_char = v.Character;
                            if v_char then
                                for _, t in pairs(v_char:GetChildren()) do
                                    if t:IsA("BasePart") then
                                        local bha = Instance.new("BoxHandleAdornment", folder);
                                        bha.Adornee = t;
                                        bha.Size = t.Size;
                                        bha.ZIndex = 10;
                                        bha.Transparency = esp_transparency;
                                        bha.AlwaysOnTop = true;
                                        bha.Color = v.TeamColor;
                                    end
                                end
                            end
                        end
                    end
                end
            end
            if toggle_main then
                if (v.TeamColor ~= plyr.TeamColor) then
                    if (esp_strict_team_blacklist == true) then
                        if (v.Team ~= plyr.Team) then
                            esp_update_start(false);
                        else
                            esp_update_start(true);
                        end
                    else
                        esp_update_start(false);
                    end
                else
                    esp_update_start(true);
                end
            else
                esp_update_start(false);
            end
        end
    end
end

function ToggleEsp(toggle)
    if toggle then
        local function Esp_PlayerFound(p)
            local esp_char_conn1 = nil;
            local esp_char_conn2 = nil;
            local esp_plyr_conn1 = nil;
            local folder = CoreGui:FindFirstChild(p.Name.."_ESP");
            if not folder then
                folder = Instance.new("Folder", CoreGui);
                folder.Name = p.Name.."_ESP";
            end
            if p ~= plyr then
                local function esp_disconnect_functions()
                    pcall(function()
                        esp_char_conn1:Disconnect();
                        esp_char_conn2:Disconnect();
                        esp_plyr_conn1:Disconnect();
                    end)
                    esp_char_conn1 = nil;
                    esp_char_conn2 = nil;
                    esp_plyr_conn1 = nil;
                end
                local function Esp_CharFound(c)
                    if not toggle then
                        esp_disconnect_functions();
                        return;
                    end
                    if esp_blacklist_team == true then
                        if (p.TeamColor == plyr.TeamColor) then
                            if esp_strict_team_blacklist == true then
                                if (p.Team == plyr.Team) then
                                    return;
                                end
                            else
                                return;
                            end
                        end
                    end
                    task.spawn(function()
                        task.wait();
                        for _, v in pairs(c:GetChildren()) do
                            if v:IsA("BasePart") then
                                local bha = Instance.new("BoxHandleAdornment", folder);
                                bha.Adornee = v;
                                bha.Size = v.Size;
                                bha.ZIndex = 10;
                                bha.Transparency = esp_transparency;
                                bha.AlwaysOnTop = true;
                                bha.Color = p.TeamColor;
                            end
                        end
                    end)
                    esp_char_conn2 = c.ChildAdded:Connect(function(child)
                        if child:IsA("BasePart") then
                            if folder then
                                local bha = Instance.new("BoxHandleAdornment", folder);
                                bha.Adornee = child;
                                bha.Size = child.Size;
                                bha.ZIndex = 10;
                                bha.Transparency = esp_transparency;
                                bha.AlwaysOnTop = true;
                                bha.Color = p.TeamColor;
                            end
                        end
                    end)
                end
                if p.Character then
                    Esp_CharFound(p.Character);
                end
                esp_char_conn1 = p.CharacterAdded:Connect(Esp_CharFound);
                esp_plyr_conn1 = p.Changed:Connect(function(property)
                    if property == "TeamColor" then
                        if folder then
                            for _, v in pairs(folder:GetChildren()) do
                                if v:IsA("BoxHandleAdornment") then
                                    v.Color = p.TeamColor;
                                end
                            end
                        end
                    end
                    if property == "Team" then
                        if folder then
                            for _, v in pairs(folder:GetChildren()) do
                                if v:IsA("BoxHandleAdornment") then
                                    v.Color = p.TeamColor;
                                end
                            end
                        end
                        esp_update_esp_b(esp_blacklist_team);
                    end
                end)
            end
        end
        for _, v in pairs(game.Players:GetPlayers()) do
            Esp_PlayerFound(v);
        end
        esp_conn_1 = game.Players.PlayerAdded:Connect(function(plyr)
            Esp_PlayerFound(plyr);
        end)
        esp_conn_2 = game.Players.PlayerRemoving:Connect(function(p)
            local gui_found = CoreGui:FindFirstChild(p.Name.."_ESP");
            if gui_found then
                gui_found:Destroy();
            end
        end)
        esp_conn_3 = plyr.Changed:Connect(function(property)
            if property == "Team" or property == "TeamColor" then
                ToggleEsp(false);
                task.wait();
                if esp_enabled == true then
                    ToggleEsp(true);
                end
            end
        end)
    else
        pcall(function()
            esp_conn_1:Disconnect();
        end)
        esp_conn_1 = nil;
        pcall(function()
            esp_conn_2:Disconnect();
        end)
        esp_conn_2 = nil;
        pcall(function()
            esp_conn_3:Disconnect();
        end)
        esp_conn_3 = nil;
        for _, v in pairs(CoreGui:GetChildren()) do
            if string.find(v.Name, "_ESP") and v:IsA("Folder") then
                v:Destroy();
            end
        end
    end
end
--//

--//Inf Jump
local inf_jump_conn1 = nil;
local inf_jump_conn2 = nil;

local inf_jump_can_jump = true;

function ToggleInfJump(toggle)
    if toggle then
        inf_jump_conn1 = uis.JumpRequest:Connect(function()
            if (hum) and (hum.Health > 0) and (inf_jump_can_jump == true) then
                hum:ChangeState(Enum.HumanoidStateType.Jumping);
                inf_jump_can_jump = false;
            end
        end)
        inf_jump_conn2 = uis.InputEnded:Connect(function(input, _)
            if input.KeyCode == Enum.KeyCode.Space then
                inf_jump_can_jump = true;
            end
        end)
    else
        pcall(function()
            inf_jump_conn1:Disconnect();
        end)
        inf_jump_conn1 = nil;
        pcall(function()
            inf_jump_conn2:Disconnect();
        end)
        inf_jump_conn2 = nil;
    end
end
--//
--////

--////GUI
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))();

local Window1 = OrionLib:MakeWindow({
    Name = "Hacking | 100% loaded";
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "Orion_Gui",
    IntroText = "The Hacker's GUI"
})

--Functions
function Gui_Notify(title, content, time)
    OrionLib:MakeNotification({
        Name = title,
        Content = content,
        Image = "rbxassetid://4483345998",
        Time = time
    })
end

--Tabs
local Tab0 = Window1:MakeTab({
	Name = "About",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab1 = Window1:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window1:MakeTab({
	Name = "Esp",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab3 = Window1:MakeTab({
	Name = "Aimbot",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab4 = Window1:MakeTab({
	Name = "Game",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab5 = Window1:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab6 = Window1:MakeTab({
	Name = "Game Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab7 = Window1:MakeTab({
	Name = "2nd Game Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Randomscripts = Window1:MakeTab({
	Name = "Miscellaneous",
    Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Specific = Window1:MakeTab({
	Name = "Specific Games",
    Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local private = Window1:MakeTab({
	Name = "Private Script",
    Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SpecificSection1 = Specific:AddSection({
	Name = "Rainbow Friends"
})

local SpecificSection2 = Specific:AddSection({
	Name = "Epic Minigames"
})

local SpecificSection3 = Specific:AddSection({
	Name = "Horrific Housing"
})

local SpecificSection4 = Specific:AddSection({
	Name = "Build A Boat For Treasure"
})

local SpecificSection5 = Specific:AddSection({
	Name = "Victory Race"
})

local SpecificSection6 = Specific:AddSection({
	Name = "Prison Life"
})

local SpecificSection7 = Specific:AddSection({
	Name = "JailBreak"
})

local SpecificSection8 = Specific:AddSection({
	Name = "Murder Mystery 2"
})

local SpecificSection9 = Specific:AddSection({
	Name = "Motorcycle Mayhem"
})

local SpecificSection10 = Specific:AddSection({
	Name = "Natural Disasters Island"
})

local SpecificSection11 = Specific:AddSection({
	Name = "Tower Of Hell"
})

local SpecificSection12 = Specific:AddSection({
	Name = "Apeirophobia"
})

local SpecificSection13 = Specific:AddSection({
	Name = "Kitty"
})

local SpecificSection14 = Specific:AddSection({
	Name = "Mad City"
})
--Tab 0
Tab0:AddLabel("Version: 3.5.15-BETA"..Gui_Version);

Tab0:AddButton({
	Name = "Destroy Gui",
	Callback = function()
        OrionLib:Destroy();
  	end    
})

--Tab 1
local Default_Disable = false;
Tab1:AddSlider({
	Name = "Walk Speed",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(150,150,150),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		if (hum) and hum.Health > 0 then
            --(function()
                hum.WalkSpeed = Value;
            --end)
        end
	end    
})

local Default_Disable = false;
Tab1:AddSlider({
	Name = "Jump Height",
	Min = 0,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(150,150,150),
	Increment = 1,
	ValueName = "Height",
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		if (hum) and hum.Health > 0 then
            pcall(function()
                hum.JumpPower = Value;
            end)
        end
	end    
})

local Default_Disable = false;
Tab1:AddToggle({
	Name = "Inf Jump",
	Default = false,
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
        ToggleInfJump(Value);
	end    
})

--Tab 2
local Default_Disable = false;
Tab2:AddToggle({
	Name = "Esp",
	Default = false,
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
        esp_enabled = Value;
		ToggleEsp(Value);
	end    
})

Tab2:AddLabel("Settings");

local Default_Disable = false;
Tab2:AddToggle({
	Name = "Blacklist Team",
	Default = false,
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		esp_blacklist_team = Value;
        esp_update_esp_b(Value);
	end
})

local Default_Disable = false;
Tab2:AddToggle({
	Name = "Strict Blacklist Team (Use With Blacklist Team)",
	Default = false,
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		esp_strict_team_blacklist = Value;
	end
})

local Default_Disable = false;
Tab2:AddSlider({
	Name = "Esp Box Transparency",
	Min = 0,
	Max = 1,
	Default = 0.5,
	Color = Color3.fromRGB(150,150,150),
	Increment = 0.1,
	ValueName = "Transparency",
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		esp_transparency = Value;
        esp_update_esp_t();
	end    
})

--Tab 3
local Default_Disable = false;
Tab3:AddToggle({
	Name = "Aimbot",
	Default = false,
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		ToggleAimbot(Value);
	end
})

Tab3:AddLabel("Settings");

local Default_Disable = false;
Tab3:AddToggle({
	Name = "Team Check",
	Default = false,
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		aimbot_team_check = Value;
	end
})

local Default_Disable = false;
Tab3:AddToggle({
	Name = "Strict Team Check (Use With Team Check)",
	Default = false,
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		aimbot_strict_team_check = Value;
	end
})

local Default_Disable = false;
Tab3:AddSlider({
	Name = "Check Radius Around Mouse",
	Min = 0,
	Max = 500,
	Default = 80,
	Color = Color3.fromRGB(150,150,150),
	Increment = 5,
	ValueName = "Pixels",
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		aimbot_radius = Value;
	end    
})

local Default_Disable = false;
Tab3:AddDropdown({
	Name = "Target Part",
	Default = "Head",
	Options = {"Head", "Torso"},
	Callback = function(Value)
        if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		aimbot_target_part = tostring(Value);
	end    
})

--Tab 4
Tab4:AddTextbox({
	Name = "Chat Message (Undetectable)",
	Default = "Enter Message Here",
	TextDisappear = true,
	Callback = function(Value)
		local event1 = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents");
        if event1 then
            local event2 = event1:FindFirstChild("SayMessageRequest");
            if event2 then
                local args = {[1] = Value, [2] = "All"};
                event2:FireServer(unpack(args));
            end
        end
	end	  
})

Tab4:AddButton({
	Name = "Fire All Click Detectors",
	Callback = function()
        if (fireclickdetector) then
            FireAll_ClickDetectors();
        else
            Gui_Notify("ERROR", "Your exploit is incompatible!", 5);
        end
  	end
})

Tab4:AddButton({
	Name = "Fire All Touch Interests",
	Callback = function()
        if (fireclickdetector) then
            FireAll_TouchInterests();
        else
            Gui_Notify("ERROR", "Your exploit is incompatible!", 5);
        end
  	end    
})
--//

--TAB5
Tab5:AddButton({
	Name = "Infinite yield!",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow1234d/dsaaq2/main/infy.lua"))()
  	end
})

Tab5:AddButton({
	Name = "Dex!",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
  	end
})

Tab5:AddButton({
	Name = "TurtleSpy!",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
  	end
})

Tab5:AddButton({
	Name = "SimpleSpy!",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua", true))()
  	end
})

Tab5:AddButton({
	Name = "Doors spawner",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/DoorsEntitySummonerGUI/main/EntityGUI'))()
  	end
})

Tab5:AddButton({
	Name = "Build a boat boss spawn",
	Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/wZcf0PwT'))()
  	end    
})
--//

--TAB6
Tab6:AddButton({
    Name = "VG Hub build a boat for treasure",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/Build-A-Boat'))()
    end
})

Tab6:AddButton({
	Name = "Insane elevator!",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nadir3709/ScriptHub/main/KeySystem"))()
  	end
})

Tab6:AddButton({
	Name = "Arsenal!",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow1234d/dsaaq2/main/arsenal.lua"))()
  	end
})

Tab6:AddButton({
	Name = "BedWars!",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  	end
})

Tab6:AddButton({
	Name = "Doors!",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/6kfed0tP"))()
  	end
})

Tab6:AddButton({
	Name = "BloxFruits!",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/toosiwhip/statue/main/script"))()
  	end
})
--//

--TAB7
Tab7:AddButton({
	Name = "Expedition Antarctica!",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ir0kz/script/main/Expedition%20Antarctica.lua"))()
  	end
})
--rscripts
Randomscripts:AddButton({
    Name = "Infinite Yield FE Admin",
    Callback = function()
        loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

Randomscripts:AddButton({
    Name = "CMD-X FE Admin",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
    end
})

Randomscripts:AddButton({
    Name = "Remote Spy Developer Console Mode",
    Callback = function()
                --[[

            -Created by Vaeb.

        ]]

        _G.scanRemotes = true

        _G.ignoreNames = {
            Event = true;
            MessagesChanged = true;
        }

        setreadonly(getrawmetatable(game), false)
        local pseudoEnv = {}
        local gameMeta = getrawmetatable(game)

        local tabChar = "      "

        local function getSmaller(a, b, notLast)
            local aByte = a:byte() or -1
            local bByte = b:byte() or -1
            if aByte == bByte then
                if notLast and #a == 1 and #b == 1 then
                    return -1
                elseif #b == 1 then
                    return false
                elseif #a == 1 then
                    return true
                else
                    return getSmaller(a:sub(2), b:sub(2), notLast)
                end
            else
                return aByte < bByte
            end
        end

        local function parseData(obj, numTabs, isKey, overflow, noTables, forceDict)
            local objType = typeof(obj)
            local objStr = tostring(obj)
            if objType == "table" then
                if noTables then
                    return objStr
                end
                local isCyclic = overflow[obj]
                overflow[obj] = true
                local out = {}
                local nextIndex = 1
                local isDict = false
                local hasTables = false
                local data = {}

                for key, val in next, obj do
                    if not hasTables and typeof(val) == "table" then
                        hasTables = true
                    end

                    if not isDict and key ~= nextIndex then
                        isDict = true
                    else
                        nextIndex = nextIndex + 1
                    end

                    data[#data+1] = {key, val}
                end

                if isDict or hasTables or forceDict then
                    out[#out+1] = (isCyclic and "Cyclic " or "") .. "{"
                    table.sort(data, function(a, b)
                        local aType = typeof(a[2])
                        local bType = typeof(b[2])
                        if bType == "string" and aType ~= "string" then
                            return false
                        end
                        local res = getSmaller(aType, bType, true)
                        if res == -1 then
                            return getSmaller(tostring(a[1]), tostring(b[1]))
                        else
                            return res
                        end
                    end)
                    for i = 1, #data do
                        local arr = data[i]
                        local nowKey = arr[1]
                        local nowVal = arr[2]
                        local parseKey = parseData(nowKey, numTabs+1, true, overflow, isCyclic)
                        local parseVal = parseData(nowVal, numTabs+1, false, overflow, isCyclic)
                        if isDict then
                            local nowValType = typeof(nowVal)
                            local preStr = ""
                            local postStr = ""
                            if i > 1 and (nowValType == "table" or typeof(data[i-1][2]) ~= nowValType) then
                                preStr = "\n"
                            end
                            if i < #data and nowValType == "table" and typeof(data[i+1][2]) ~= "table" and typeof(data[i+1][2]) == nowValType then
                                postStr = "\n"
                            end
                            out[#out+1] = preStr .. string.rep(tabChar, numTabs+1) .. parseKey .. " = " .. parseVal .. ";" .. postStr
                        else
                            out[#out+1] = string.rep(tabChar, numTabs+1) .. parseVal .. ";"
                        end
                    end
                    out[#out+1] = string.rep(tabChar, numTabs) .. "}"
                else
                    local data2 = {}
                    for i = 1, #data do
                        local arr = data[i]
                        local nowVal = arr[2]
                        local parseVal = parseData(nowVal, 0, false, overflow, isCyclic)
                        data2[#data2+1] = parseVal
                    end
                    out[#out+1] = "{" .. table.concat(data2, ", ") .. "}"
                end

                return table.concat(out, "\n")
            else
                local returnVal = nil
                if (objType == "string" or objType == "Content") and (not isKey or tonumber(obj:sub(1, 1))) then
                    local retVal = '"' .. objStr .. '"'
                    if isKey then
                        retVal = "[" .. retVal .. "]"
                    end
                    returnVal = retVal
                elseif objType == "EnumItem" then
                    returnVal = "Enum." .. tostring(obj.EnumType) .. "." .. obj.Name
                elseif objType == "Enum" then
                    returnVal = "Enum." .. objStr
                elseif objType == "Instance" then
                    returnVal = obj.Parent and obj:GetFullName() or obj.ClassName
                elseif objType == "CFrame" then
                    returnVal = "CFrame.new(" .. objStr .. ")"
                elseif objType == "Vector3" then
                    returnVal = "Vector3.new(" .. objStr .. ")"
                elseif objType == "Vector2" then
                    returnVal = "Vector2.new(" .. objStr .. ")"
                elseif objType == "UDim2" then
                    returnVal = "UDim2.new(" .. objStr:gsub("[{}]", "") .. ")"
                elseif objType == "BrickColor" then
                    returnVal = "BrickColor.new(\"" .. objStr .. "\")"
                elseif objType == "Color3" then
                    returnVal = "Color3.new(" .. objStr .. ")"
                elseif objType == "NumberRange" then
                    returnVal = "NumberRange.new(" .. objStr:gsub("^%s*(.-)%s*$", "%1"):gsub(" ", ", ") .. ")"
                elseif objType == "PhysicalProperties" then
                    returnVal = "PhysicalProperties.new(" .. objStr .. ")"
                else
                    returnVal = objStr
                end
                return returnVal
            end
        end

        function tableToString(t)
            return parseData(t, 0, false, {}, nil, false)
        end

        local detectClasses = {
            BindableEvent = true;
            BindableFunction = true;
            RemoteEvent = true;
            RemoteFunction = true;
        }

        local classMethods = {
            BindableEvent = "Fire";
            BindableFunction = "Invoke";
            RemoteEvent = "FireServer";
            RemoteFunction = "InvokeServer";
        }

        local realMethods = {}

        for name, enabled in next, detectClasses do
            if enabled then
                realMethods[classMethods[name]] = Instance.new(name)[classMethods[name]]
            end
        end

        for key, value in next, gameMeta do pseudoEnv[key] = value end

        local incId = 0

        local function getValues(self, key, ...)
            return {realMethods[key](self, ...)}
        end

        gameMeta.__index, gameMeta.__namecall = function(self, key)
            if not realMethods[key] or _G.ignoreNames[self.Name] or not _G.scanRemotes then return pseudoEnv.__index(self, key) end
            return function(_, ...)
                incId = incId + 1
                local nowId = incId
                local strId = "[RemoteSpy_" .. nowId .. "]"

                local allPassed = {...}
                local returnValues = {}

                local ok, data = pcall(getValues, self, key, ...)

                if ok then
                    returnValues = data
                    print("\n" .. strId .. " ClassName: " .. self.ClassName .. " | Path: " .. self:GetFullName() .. " | Method: " .. key .. "\n" .. strId .. " Packed Arguments: " .. tableToString(allPassed) .. "\n" .. strId .. " Packed Returned: " .. tableToString(returnValues) .. "\n")
                else
                    print("\n" .. strId .. " ClassName: " .. self.ClassName .. " | Path: " .. self:GetFullName() .. " | Method: " .. key .. "\n" .. strId .. " Packed Arguments: " .. tableToString(allPassed) .. "\n" .. strId .. " Packed Returned: [ERROR] " .. data .. "\n")
                end

                return unpack(returnValues)
            end
        end

        print("\nRan Vaeb's RemoteSpy\n")
    end
})

Randomscripts:AddButton({
    Name = "helicopter",
    Callback = function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
		spawn(function()
			local speaker = game.Players.LocalPlayer
			local Anim = Instance.new("Animation")
			     Anim.AnimationId = "rbxassetid://27432686"
			     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			bruh:Play()
			bruh:AdjustSpeed(0)
			speaker.Character.Animate.Disabled = true
			local hi = Instance.new("Sound")
			hi.Name = "Sound"
			hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
			hi.Volume = 2
			hi.Looped = true
			hi.archivable = false
			hi.Parent = game.Workspace
			hi:Play()

			local spinSpeed = 40
			local Spin = Instance.new("BodyAngularVelocity")
			Spin.Name = "Spinning"
			Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			Spin.MaxTorque = Vector3.new(0, math.huge, 0)
			Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
		end)
	else
		spawn(function()
			local speaker = game.Players.LocalPlayer
			local Anim = Instance.new("Animation")
			     Anim.AnimationId = "rbxassetid://507776043"
			     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			bruh:Play()
			bruh:AdjustSpeed(0)
			speaker.Character.Animate.Disabled = true
			local hi = Instance.new("Sound")
			hi.Name = "Sound"
			hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
			hi.Volume = 2
			hi.Looped = true
			hi.archivable = false
			hi.Parent = game.Workspace
			hi:Play()

			local spinSpeed = 40
			local Spin = Instance.new("BodyAngularVelocity")
			Spin.Name = "Spinning"
			Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			Spin.MaxTorque = Vector3.new(0, math.huge, 0)
			Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
		end)    
	end
	local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
	local u = game.Players.LocalPlayer
	local urchar = u.Character

	task.spawn(function()
		qUp = Mouse.KeyUp:Connect(function(KEY)
			if KEY == 'q' then
				urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight - 3
			end
		end)
		eUp = Mouse.KeyUp:Connect(function(KEY)
		if KEY == 'e' then
			urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight + 3
		end
	end)
	end)
    end
})

Randomscripts:AddButton({
    Name = "DINO TRANSFORM (REQUIRES R6 AND A SPECIFIC AVATAR)",
    Callback = function()
        loadstring(game:HttpGetAsync(('https://raw.githubusercontent.com/PYXDYT/DinoBlox/main/FE%20Script'),true))()
    end
})

Randomscripts:AddButton({
    Name = "ZOMBIE SUMMON (REQUIRES R6 AND A SPECIFIC AVATAR)",
    Callback = function()
        loadstring(game:HttpGetAsync("https://gist.githubusercontent.com/someunknowndude/18f1d979ad9a25ad69064be75f55f735/raw/dc36f1e9ad906a7434bd77bcd0ce8218fb5f4d88/zombie.lua"))()
    end
})

Randomscripts:AddButton({
    Name = "backdoor.exe v8, allows you to run SS scripts on certain games",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua"))();
    end
})

Randomscripts:AddButton({
    Name = "Unanchored Part Bringer GUI",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/WkZwcGjf", true))()
    end
})

Randomscripts:AddButton({
    Name = "LeftCtrl+Click TP",
    Callback = function()
        local Plr = game:GetService("Players").LocalPlayer local Mouse = Plr:GetMouse()

	Mouse.Button1Down:connect( function() if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end if not Mouse.Target then return end Plr.Character:MoveTo(Mouse.Hit.p) end )
    end
})

Randomscripts:AddButton({
    Name = "Dark Dex V4",
    Callback = function()
        loadstring(game:HttpGetAsync(("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4")))()
    end
})

Randomscripts:AddButton({
    Name = "Rage Flake",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow1234d/dsaaq2/main/RFlake.lua"))()
    end
})

Randomscripts:AddButton({
    Name = "Frixon Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow1234d/dsaaq2/main/FrixonHub.lua"))()
    end
})

Randomscripts:AddButton({
    Name = "Unnamed ESP",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
    end
})

Randomscripts:AddButton({
    Name = "Builder Tools",
    Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
    end
})
--sscripts
SpecificSection1:AddButton({
    Name = "Rainbow Friends GUI",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
    end
})

SpecificSection1:AddButton({
    Name = "Better Rainbow Friends GUI",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TweedLeak/Scripts/main/Rainbow-Friends.lua"))()
    end
})

SpecificSection2:AddButton({
    Name = "Epic Minigames GUI",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Epic%20Minigames/EpicMinigamesGUI"))()
    end
})


SpecificSection3:AddButton({
    Name = "Horrific Housing GUI",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/typical-overk1ll/scripts/main/HorrificHousing",true))()
    end
})

SpecificSection4:AddButton({
    Name = "Build A Boat For Treasure GUI",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/Build-A-Boat'))()
    end
})

SpecificSection5:AddButton({
    Name = "Victory Race GUI",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/SmoxHub/SmoxHub-V2/main/Victory-Race-V2", true))()
    end
})

SpecificSection6:AddButton({
    Name = "M9 Giver",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
    end
})

SpecificSection6:AddButton({
    Name = "Remington 870 Giver",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
    end
})

SpecificSection6:AddButton({
    Name = "AK47 Giver",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
    end
})

SpecificSection6:AddButton({
    Name = "M4A1 Giver (must have the gamepass)",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
    end
})

SpecificSection6:AddButton({
    Name = "Riot Shield Giver (must have the gamepass)",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.giver["Riot Shield"].ITEMPICKUP)
    end
})

SpecificSection6:AddButton({
    Name = "Hammer Giver (check the console if it doesn't work)",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        if game.Workspace.Prison_ITEMS.single["Hammer"].ITEMPICKUP then
            itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.single["Hammer"].ITEMPICKUP)
        else
            print("You need to wait for the Hammer to respawn in order to be given it. You also need to be a Prisoner.")
        end
    end
})

SpecificSection6:AddButton({
    Name = "Crude Knife Giver (check the console if it doesn't work)",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        if game.Workspace.Prison_ITEMS.single["Crude Knife"].ITEMPICKUP then
            itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.single["Crude Knife"].ITEMPICKUP)
        else
            print("You need to wait for the Crude Knife to respawn in order to be given it. You also need to be a Prisoner.")
        end
    end
})

SpecificSection6:AddButton({
    Name = "Key Card Giver (check the console if it doesn't work)",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        if game.Workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP then
            itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP)
        else
            print("There needs to be a key card that has been already dropped in the map. Such ways this could happen: A cop being killed, and it dropping a key card.")
        end
    end
})

SpecificSection6:AddButton({
    Name = "Prison Life Admin",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife"))()
    end
})

SpecificSection7:AddButton({
    Name = "JailBreak",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/piglex9/icetray3/main/latest.lua"))()
    end
})

SpecificSection7:AddButton({
    Name = "JailBreak 2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow1234d/dsaaq2/main/jb.lua"))()
    end
})

SpecificSection8:AddButton({
    Name = "Murder Mystery 2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vwSaraa/LunarHub/main/mm2"))()
    end
})

SpecificSection8:AddButton({
    Name = "Murder Mystery 2 Second Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow1234d/dsaaq2/main/mm2.lua"))()
    end
})

SpecificSection9:AddButton({
    Name = "Motorcycle Mayhem",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/cwUuTKjF"))()
    end
})

SpecificSection10:AddButton({
    Name = "Natural Disaster Island",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/garfield%20hub", true))()
    end
})

SpecificSection11:AddButton({
    Name = "Tower Of Hell",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/TowerOfHell/main/OpenSource.lua"))()
    end
})

SpecificSection12:AddButton({
    Name = "Apeirophobia",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/0ptVa7Dn'))()
    end
})

SpecificSection13:AddButton({
    Name = "Kitty",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/MwXkxRam"))()
    end
})

SpecificSection13:AddButton({
    Name = "Mad City",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/8Q7y93US", true))()
    end
})
--private
private:AddTextbox({
	Name = "Enter Key!",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

private:AddButton({
	Name = "Check Key",
	Callback = function()
      	if _G.KeyInput == _G.Key then
        MakeScriptHub()
        end
  	end    
})

private:AddButton({
	Name = "Destroy Gui",
	Callback = function()
        OrionLib:Destroy();
  	end    
})
local Default_Disable = true;
OrionLib:Init()
--////
