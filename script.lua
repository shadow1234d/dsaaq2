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
--Tab 0
Tab0:AddLabel("Version: 3.5.15-BETA"..Gui_Version);

Tab0:AddButton({
	Name = "Destroy Gui",
	Callback = function()
        OrionLib:Destroy();
  	end    
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
	Name = "Doors spawner 2",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/OldEntityGUI/main/OldEntityGUI'))()
  	end
})

MainTab:AddButton({
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
	Name = "Build A Boat For Treasure!",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/Build-A-Boat'))()
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
local Default_Disable = true;
OrionLib:Init()
--////
