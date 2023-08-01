local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Key System | 100% LOADED", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--TABS
local Tab1 = Window:MakeTab({
	Name = "Key System",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--PARAGRAPHS
Tab1:AddParagraph("WARNING","If you do not know the key, you shouldnt becouse this is a private script!")
Tab2:AddParagraph("CREDITS","Made by s0shadow0BG1, known as TheShadowReturned!")

--Inputs

Tab1:AddTextbox({
	Name = "Enter Key!",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})
--functions

function MakeScriptHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow1234d/dsaaq2/main/script.lua"))()
end

_G.Key = "ILoveCats"
_G.KeyInput = "string"
--Buttons

Tab1:AddButton({
	Name = "Check Key",
	Callback = function()
      	if _G.KeyInput == _G.Key then
        MakeScriptHub()
        end
  	end    
})

Tab2:AddButton({
	Name = "Destroy Gui",
	Callback = function()
        OrionLib:Destroy();
  	end    
})
OrionLib:Init()
