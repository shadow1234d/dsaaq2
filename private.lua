local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Private Script", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local scr = Window:MakeTab({
	Name = "Owned Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

scr:AddButton({
	Name = "Key System",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/shadow1234d/dsaaq2/main/main.lua')))()
  	end    
})

scr:AddButton({
	Name = "Hacker's GUI",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow1234d/dsaaq2/main/script.lua"))()
  	end    
})

scr:AddButton({
	Name = "Old Script",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/s0shadow0BG/ShadowHack1542/main/hack.lua'))()
  	end    
})
