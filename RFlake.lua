-- Gui to Lua
-- Version: 3.2

-- Instances:

local Rageflake = Instance.new("ScreenGui")
local RageflakeOpenBut = Instance.new("TextButton")
local RageflakeScriptsframe = Instance.new("Frame")
local Rageflakename = Instance.new("TextLabel")
local rageflakescriptsbar = Instance.new("Frame")
local Rageflakecredits = Instance.new("TextLabel")
local rageflakeclosebut = Instance.new("TextButton")
local DexV4But = Instance.new("TextButton")
local RemoteSpyBut = Instance.new("TextButton")
local TopK3kBut = Instance.new("TextButton")
local InfiniteYieldBut = Instance.new("TextButton")
local pressenoclipBut = Instance.new("TextButton")
local presseflyBut = Instance.new("TextButton")
local BtoolsBut = Instance.new("TextButton")
local DarkHubBut = Instance.new("TextButton")
local UnnamedEspBut = Instance.new("TextButton")
local PrisonbreakerBut = Instance.new("TextButton")
local TrollGuiBut = Instance.new("TextButton")
local ChatSpamBut = Instance.new("TextButton")
local PrisonLifeTrollGUIBut = Instance.new("TextButton")
local FrixonHubBut = Instance.new("TextButton")
local WSandJpGUiBut = Instance.new("TextButton")
local InfJumpBut = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

Rageflake.ResetOnSpawn = true

Rageflake.Name = "Rageflake"
Rageflake.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Rageflake.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

RageflakeOpenBut.Name = "RageflakeOpenBut"
RageflakeOpenBut.Parent = Rageflake
RageflakeOpenBut.BackgroundColor3 = Color3.fromRGB(122, 6, 2)
RageflakeOpenBut.BorderSizePixel = 0
RageflakeOpenBut.Position = UDim2.new(0.00585651537, 0, 0.573705196, 0)
RageflakeOpenBut.Size = UDim2.new(0, 107, 0, 50)
RageflakeOpenBut.Font = Enum.Font.SourceSans
RageflakeOpenBut.Text = "Open Rageflake"
RageflakeOpenBut.TextColor3 = Color3.fromRGB(255, 255, 255)
RageflakeOpenBut.TextSize = 15.000
RageflakeOpenBut.MouseButton1Down:connect(function()
	RageflakeScriptsframe.Visible = true
end)

RageflakeScriptsframe.Name = "RageflakeScriptsframe"
RageflakeScriptsframe.Parent = Rageflake
RageflakeScriptsframe.BackgroundColor3 = Color3.fromRGB(122, 6, 2)
RageflakeScriptsframe.BorderSizePixel = 0
RageflakeScriptsframe.Position = UDim2.new(0.308931202, 0, 0.0737051815, 0)
RageflakeScriptsframe.Size = UDim2.new(0, 610, 0, 427)
RageflakeScriptsframe.Visible = false
RageflakeScriptsframe.Active = true
RageflakeScriptsframe.Draggable = true

Rageflakename.Name = "Rageflakename"
Rageflakename.Parent = RageflakeScriptsframe
Rageflakename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rageflakename.BackgroundTransparency = 1.000
Rageflakename.Position = UDim2.new(0.335462093, 0, 0, 0)
Rageflakename.Size = UDim2.new(0, 200, 0, 50)
Rageflakename.Font = Enum.Font.SourceSans
Rageflakename.Text = "Rageflake"
Rageflakename.TextColor3 = Color3.fromRGB(255, 255, 255)
Rageflakename.TextSize = 40.000
Rageflakename.TextWrapped = true

rageflakescriptsbar.Name = "rageflakescriptsbar"
rageflakescriptsbar.Parent = Rageflakename
rageflakescriptsbar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
rageflakescriptsbar.BackgroundTransparency = 0.700
rageflakescriptsbar.BorderSizePixel = 0
rageflakescriptsbar.Position = UDim2.new(-1.01815915, 0, 0, 0)
rageflakescriptsbar.Size = UDim2.new(0, 609, 0, 50)

Rageflakecredits.Name = "Rageflakecredits"
Rageflakecredits.Parent = Rageflakename
Rageflakecredits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rageflakecredits.BackgroundTransparency = 1.000
Rageflakecredits.BorderSizePixel = 0
Rageflakecredits.Position = UDim2.new(-1.07999992, 0, 0, 0)
Rageflakecredits.Size = UDim2.new(0, 151, 0, 23)
Rageflakecredits.Font = Enum.Font.SourceSans
Rageflakecredits.Text = "By RedoGaming#7191"
Rageflakecredits.TextColor3 = Color3.fromRGB(255, 255, 255)
Rageflakecredits.TextSize = 14.000

rageflakeclosebut.Name = "rageflakeclosebut"
rageflakeclosebut.Parent = RageflakeScriptsframe
rageflakeclosebut.BackgroundColor3 = Color3.fromRGB(35, 1, 0)
rageflakeclosebut.BorderSizePixel = 0
rageflakeclosebut.Position = UDim2.new(0.894116402, 0, 0, 0)
rageflakeclosebut.Size = UDim2.new(0, 64, 0, 50)
rageflakeclosebut.Font = Enum.Font.SourceSans
rageflakeclosebut.Text = "X"
rageflakeclosebut.TextColor3 = Color3.fromRGB(182, 8, 2)
rageflakeclosebut.TextSize = 40.000
rageflakeclosebut.MouseButton1Down:connect(function()
	RageflakeScriptsframe.Visible = false
end)

DexV4But.Name = "DexV4But"
DexV4But.Parent = RageflakeScriptsframe
DexV4But.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
DexV4But.Position = UDim2.new(0.0180327874, 0, 0.175644025, 0)
DexV4But.Size = UDim2.new(0, 122, 0, 49)
DexV4But.Font = Enum.Font.SourceSans
DexV4But.Text = "Dex V4"
DexV4But.TextColor3 = Color3.fromRGB(255, 255, 255)
DexV4But.TextSize = 14.000
DexV4But.MouseButton1Down:connect(function()
	loadstring(game:GetObjects('rbxassetid://2180084478')[1].Source)()
end)

RemoteSpyBut.Name = "RemoteSpyBut"
RemoteSpyBut.Parent = RageflakeScriptsframe
RemoteSpyBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
RemoteSpyBut.Position = UDim2.new(0.26557377, 0, 0.175644025, 0)
RemoteSpyBut.Size = UDim2.new(0, 122, 0, 49)
RemoteSpyBut.Font = Enum.Font.SourceSans
RemoteSpyBut.Text = "Remote Spy"
RemoteSpyBut.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoteSpyBut.TextSize = 14.000
RemoteSpyBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/7JKhfPp6'))()
end)

TopK3kBut.Name = "TopK3kBut"
TopK3kBut.Parent = RageflakeScriptsframe
TopK3kBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
TopK3kBut.Position = UDim2.new(0.516393423, 0, 0.175644025, 0)
TopK3kBut.Size = UDim2.new(0, 122, 0, 49)
TopK3kBut.Font = Enum.Font.SourceSans
TopK3kBut.Text = "TopK3k V3"
TopK3kBut.TextColor3 = Color3.fromRGB(255, 255, 255)
TopK3kBut.TextSize = 14.000
TopK3kBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/9Mz5DQ5a'))()
end)

InfiniteYieldBut.Name = "InfiniteYieldBut"
InfiniteYieldBut.Parent = RageflakeScriptsframe
InfiniteYieldBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
InfiniteYieldBut.Position = UDim2.new(0.763934433, 0, 0.175644025, 0)
InfiniteYieldBut.Size = UDim2.new(0, 122, 0, 49)
InfiniteYieldBut.Font = Enum.Font.SourceSans
InfiniteYieldBut.Text = "Infinite Yield"
InfiniteYieldBut.TextColor3 = Color3.fromRGB(255, 255, 255)
InfiniteYieldBut.TextSize = 14.000
InfiniteYieldBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

pressenoclipBut.Name = "pressenoclipBut"
pressenoclipBut.Parent = RageflakeScriptsframe
pressenoclipBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
pressenoclipBut.Position = UDim2.new(0.763934433, 0, 0.355971873, 0)
pressenoclipBut.Size = UDim2.new(0, 122, 0, 49)
pressenoclipBut.Font = Enum.Font.SourceSans
pressenoclipBut.Text = "E to Noclip"
pressenoclipBut.TextColor3 = Color3.fromRGB(255, 255, 255)
pressenoclipBut.TextSize = 14.000
pressenoclipBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/1Ax1bQ5Z'))()
end)

presseflyBut.Name = "presseflyBut"
presseflyBut.Parent = RageflakeScriptsframe
presseflyBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
presseflyBut.Position = UDim2.new(0.516393423, 0, 0.355971873, 0)
presseflyBut.Size = UDim2.new(0, 122, 0, 49)
presseflyBut.Font = Enum.Font.SourceSans
presseflyBut.Text = "E to Fly"
presseflyBut.TextColor3 = Color3.fromRGB(255, 255, 255)
presseflyBut.TextSize = 14.000
presseflyBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/FVPeT737'))()
end)

BtoolsBut.Name = "BtoolsBut"
BtoolsBut.Parent = RageflakeScriptsframe
BtoolsBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
BtoolsBut.Position = UDim2.new(0.26557374, 0, 0.355971873, 0)
BtoolsBut.Size = UDim2.new(0, 122, 0, 49)
BtoolsBut.Font = Enum.Font.SourceSans
BtoolsBut.Text = "Btools"
BtoolsBut.TextColor3 = Color3.fromRGB(255, 255, 255)
BtoolsBut.TextSize = 14.000
BtoolsBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/GyZ5cwpV'))()
end)

DarkHubBut.Name = "DarkHubBut"
DarkHubBut.Parent = RageflakeScriptsframe
DarkHubBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
DarkHubBut.Position = UDim2.new(0.0180327594, 0, 0.355971873, 0)
DarkHubBut.Size = UDim2.new(0, 122, 0, 49)
DarkHubBut.Font = Enum.Font.SourceSans
DarkHubBut.Text = "Dark Hub"
DarkHubBut.TextColor3 = Color3.fromRGB(255, 255, 255)
DarkHubBut.TextSize = 14.000
DarkHubBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('http://script.darkhub.xyz/script.txt'))()
end)

UnnamedEspBut.Name = "UnnamedEspBut"
UnnamedEspBut.Parent = RageflakeScriptsframe
UnnamedEspBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
UnnamedEspBut.Position = UDim2.new(0.0180327594, 0, 0.526932061, 0)
UnnamedEspBut.Size = UDim2.new(0, 122, 0, 49)
UnnamedEspBut.Font = Enum.Font.SourceSans
UnnamedEspBut.Text = "Unnamed ESP"
UnnamedEspBut.TextColor3 = Color3.fromRGB(255, 255, 255)
UnnamedEspBut.TextSize = 14.000
UnnamedEspBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/gYK459T8'))()
end)

PrisonbreakerBut.Name = "PrisonbreakerBut"
PrisonbreakerBut.Parent = RageflakeScriptsframe
PrisonbreakerBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
PrisonbreakerBut.Position = UDim2.new(0.26557374, 0, 0.526932061, 0)
PrisonbreakerBut.Size = UDim2.new(0, 122, 0, 49)
PrisonbreakerBut.Font = Enum.Font.SourceSans
PrisonbreakerBut.Text = "Prisonbreaker V1.5"
PrisonbreakerBut.TextColor3 = Color3.fromRGB(255, 255, 255)
PrisonbreakerBut.TextSize = 14.000
PrisonbreakerBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/pPW4pg2i'))()
end)

TrollGuiBut.Name = "TrollGuiBut"
TrollGuiBut.Parent = RageflakeScriptsframe
TrollGuiBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
TrollGuiBut.Position = UDim2.new(0.516393423, 0, 0.526932061, 0)
TrollGuiBut.Size = UDim2.new(0, 122, 0, 49)
TrollGuiBut.Font = Enum.Font.SourceSans
TrollGuiBut.Text = "Troll GUI"
TrollGuiBut.TextColor3 = Color3.fromRGB(255, 255, 255)
TrollGuiBut.TextSize = 14.000
TrollGuiBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/w723JNs7'))()
end)

ChatSpamBut.Name = "ChatSpamBut"
ChatSpamBut.Parent = RageflakeScriptsframe
ChatSpamBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
ChatSpamBut.Position = UDim2.new(0.763934374, 0, 0.526932061, 0)
ChatSpamBut.Size = UDim2.new(0, 122, 0, 49)
ChatSpamBut.Font = Enum.Font.SourceSans
ChatSpamBut.Text = "Spam Chat"
ChatSpamBut.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatSpamBut.TextSize = 14.000
ChatSpamBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/AAc7X4RT'))()
end)

PrisonLifeTrollGUIBut.Name = "PrisonLifeTrollGUIBut"
PrisonLifeTrollGUIBut.Parent = RageflakeScriptsframe
PrisonLifeTrollGUIBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
PrisonLifeTrollGUIBut.Position = UDim2.new(0.763934374, 0, 0.704918027, 0)
PrisonLifeTrollGUIBut.Size = UDim2.new(0, 122, 0, 49)
PrisonLifeTrollGUIBut.Font = Enum.Font.SourceSans
PrisonLifeTrollGUIBut.Text = "Prison Life Troll GUI"
PrisonLifeTrollGUIBut.TextColor3 = Color3.fromRGB(255, 255, 255)
PrisonLifeTrollGUIBut.TextSize = 14.000
PrisonLifeTrollGUIBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/cFNuexAy'))()
end)

FrixonHubBut.Name = "FrixonHubBut"
FrixonHubBut.Parent = RageflakeScriptsframe
FrixonHubBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
FrixonHubBut.Position = UDim2.new(0.516393423, 0, 0.704918027, 0)
FrixonHubBut.Size = UDim2.new(0, 122, 0, 49)
FrixonHubBut.Font = Enum.Font.SourceSans
FrixonHubBut.Text = "Frixon Hub"
FrixonHubBut.TextColor3 = Color3.fromRGB(255, 255, 255)
FrixonHubBut.TextSize = 14.000
FrixonHubBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://gist.githubusercontent.com/RedoGaming/459eb467f3df927b07ca398a68f3b053/raw/6d1f7a2c8fefd072dc53ebbbec38c6f93c7de1ad/Frixon%2520Hub!%2520New%2520OP%2520Exploit%2520Hub%2520for%2520Roblox!'))()
end)

WSandJpGUiBut.Name = "WSandJpGUiBut"
WSandJpGUiBut.Parent = RageflakeScriptsframe
WSandJpGUiBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
WSandJpGUiBut.Position = UDim2.new(0.26557374, 0, 0.704918027, 0)
WSandJpGUiBut.Size = UDim2.new(0, 122, 0, 49)
WSandJpGUiBut.Font = Enum.Font.SourceSans
WSandJpGUiBut.Text = "WS and JP GUI"
WSandJpGUiBut.TextColor3 = Color3.fromRGB(255, 255, 255)
WSandJpGUiBut.TextSize = 14.000
WSandJpGUiBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/inrTe9u6'))()
end)

InfJumpBut.Name = "InfJumpBut"
InfJumpBut.Parent = RageflakeScriptsframe
InfJumpBut.BackgroundColor3 = Color3.fromRGB(199, 3, 0)
InfJumpBut.Position = UDim2.new(0.0180327594, 0, 0.704918027, 0)
InfJumpBut.Size = UDim2.new(0, 122, 0, 49)
InfJumpBut.Font = Enum.Font.SourceSans
InfJumpBut.Text = "Infinite Jump"
InfJumpBut.TextColor3 = Color3.fromRGB(255, 255, 255)
InfJumpBut.TextSize = 14.000
InfJumpBut.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/ddhcJY4T'))()
end)

TextLabel.Parent = RageflakeScriptsframe
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.26557377, 0, 0.850117087, 0)
TextLabel.Size = UDim2.new(0, 275, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 30.000
TextLabel.TextWrapped = true
TextLabel.Text = "Thanks for Using Rageflake"
