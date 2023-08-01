-- Gui to Lua
-- Version: 3.2

-- Instances:

local FrixonHub = Instance.new("ScreenGui")
local FrixonHubScripts = Instance.new("Frame")
local FrixonName = Instance.new("TextLabel")
local FrixonScriptsCredits = Instance.new("TextLabel")
local GrabKnifeBut = Instance.new("TextButton")
local SuicideGunBut = Instance.new("TextButton")
local TeslaHubBut = Instance.new("TextButton")
local ArsenalKillAllBut = Instance.new("TextButton")
local InfiniteYieldBut = Instance.new("TextButton")
local RevizAdminBut = Instance.new("TextButton")
local PrisonLifeBut = Instance.new("TextButton")
local CBROKillAllBut = Instance.new("TextButton")
local KATGUIBut = Instance.new("TextButton")
local LegacyHubBut = Instance.new("TextButton")
local OwlHubBut = Instance.new("TextButton")
local MM2GUIBut = Instance.new("TextButton")
local MadPaintballBut = Instance.new("TextButton")
local UnnamedESPBut = Instance.new("TextButton")
local GamesUniteBut = Instance.new("TextButton")
local FlingGUIBut = Instance.new("TextButton")
local ThanksForUsingFrixon = Instance.new("TextLabel")
local Scriptsclosebut = Instance.new("TextButton")
local FrixonOpenBut = Instance.new("TextButton")

--Properties:

FrixonHub.ResetOnSpawn = true

FrixonHub.Name = "FrixonHub"
FrixonHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FrixonHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FrixonHubScripts.Name = "FrixonHubScripts"
FrixonHubScripts.Parent = FrixonHub
FrixonHubScripts.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
FrixonHubScripts.BorderSizePixel = 0
FrixonHubScripts.Position = UDim2.new(0.276720405, 0, 0.0737051368, 0)
FrixonHubScripts.Size = UDim2.new(0, 610, 0, 427)
FrixonHubScripts.Visible = false
FrixonHubScripts.Active = true
FrixonHubScripts.Draggable = true

FrixonName.Name = "FrixonName"
FrixonName.Parent = FrixonHubScripts
FrixonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FrixonName.BackgroundTransparency = 1.000
FrixonName.BorderSizePixel = 0
FrixonName.Position = UDim2.new(0.336065561, 0, 0.0163934417, 0)
FrixonName.Size = UDim2.new(0, 200, 0, 50)
FrixonName.Font = Enum.Font.SourceSans
FrixonName.Text = "Frixon Hub"
FrixonName.TextColor3 = Color3.fromRGB(255, 255, 255)
FrixonName.TextScaled = true
FrixonName.TextSize = 14.000
FrixonName.TextWrapped = true

FrixonScriptsCredits.Name = "FrixonScriptsCredits"
FrixonScriptsCredits.Parent = FrixonHubScripts
FrixonScriptsCredits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FrixonScriptsCredits.BackgroundTransparency = 1.000
FrixonScriptsCredits.BorderSizePixel = 0
FrixonScriptsCredits.Position = UDim2.new(0.0131147541, 0, 0, 0)
FrixonScriptsCredits.Size = UDim2.new(0, 123, 0, 33)
FrixonScriptsCredits.Font = Enum.Font.SourceSans
FrixonScriptsCredits.Text = "By RedoGaming#7191"
FrixonScriptsCredits.TextColor3 = Color3.fromRGB(255, 255, 255)
FrixonScriptsCredits.TextSize = 14.000

GrabKnifeBut.Name = "GrabKnifeBut"
GrabKnifeBut.Parent = FrixonHubScripts
GrabKnifeBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
GrabKnifeBut.BorderSizePixel = 0
GrabKnifeBut.Position = UDim2.new(0.0295081977, 0, 0.199063227, 0)
GrabKnifeBut.Size = UDim2.new(0, 122, 0, 49)
GrabKnifeBut.Font = Enum.Font.SourceSans
GrabKnifeBut.Text = "Grab Knife"
GrabKnifeBut.TextColor3 = Color3.fromRGB(255, 255, 255)
GrabKnifeBut.TextSize = 14.000
GrabKnifeBut.MouseButton1Down:connect(function() 
	math.randomseed(tick())
local player = game.Players.LocalPlayer
local rekt = {}
local paralyzed = false
local curpoint = nil
local curpart = nil
local finishnum = 1
local zombiemode = false
local zombies = {}
local lastgui = nil
local mouse = player:GetMouse()

function getplr(char)
	local plr = nil
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Character == char then
			plr = v
		end
	end
	return plr
end

function bleed(frick)
	while frick.Parent ~= nil do
	local reeee = coroutine.wrap(function()
	local thing = Instance.new('Part',game.Workspace)
	thing.Size = Vector3.new(0.2,0.2,0.2)
	thing.CFrame = frick.CFrame
	thing.Shape = Enum.PartType.Ball
	thing.CFrame = frick.CFrame
	thing.Transparency = 1
	thing.BrickColor = BrickColor.new('Maroon')
	thing.Material = Enum.Material.SmoothPlastic
	thing.Name = "Blood"
	thing.CanCollide =false
	local rawrxd = Instance.new('BodyForce',thing)
	rawrxd.Force = frick.CFrame.upVector*(math.random()*2)+Vector3.new(math.random(-5, 5)/10,1.5,0)
	local coru = coroutine.wrap(function()
		wait(0.01)
		rawrxd:Destroy()
	end)
	coru()
	local ree = Instance.new('ParticleEmitter',thing)
	ree.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(100,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(100,0,0))})
	ree.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.1),NumberSequenceKeypoint.new(1,0.1)})
	ree.Texture = 'rbxassetid://867743272'
	ree.Lifetime = NumberRange.new(0.4)
	ree.Rate = 50
	ree.LockedToPart = true
	ree.Speed = NumberRange.new(0, 2)  
	
	thing.Touched:connect(function(tou)
		if tou.Parent and tou.Parent:IsA('Tool') == false and tou.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil and tou.Parent:FindFirstChildOfClass('Humanoid') == nil and tou.Name ~= "Blood" and tou.Parent.Name ~= "Projectile" and tou.Parent.Name ~= "big ass knife" and tou.Parent ~= player.Character and tou.Parent.ClassName ~= "Accessory" and tou.Parent.Name ~= "bitch ass knife" then
			local pos = Vector3.new(thing.Position.X,(tou.Position.Y+(tou.Size.Y/2))+0.02,thing.Position.Z)
			thing:Destroy()
			if tou.Name == "BloodPuddle" then
				local reee = tou.CFrame
				if tou.Transparency > -0.2 then
					tou.Transparency = tou.Transparency -0.1
				end
				if tou.Size.X < 10 then
					tou.Size = tou.Size+Vector3.new(0.1,0,0.1)
					tou.CFrame = reee
				end
			else
				local bloodlol = Instance.new('Part',workspace)
				bloodlol.Size=Vector3.new(1,0.2,1)
				bloodlol.Name = "BloodPuddle"
				bloodlol.Anchored = true
				bloodlol.CanCollide = false
				bloodlol.Material = Enum.Material.SmoothPlastic
				bloodlol.BrickColor = BrickColor.new('Maroon')
				local cyl = Instance.new('CylinderMesh',bloodlol)
				cyl.Scale = Vector3.new(1,0.1,1)
				bloodlol.CFrame = CFrame.new(pos)
				local coru=coroutine.wrap(function()
					while bloodlol.Parent ~= nil do
						if bloodlol.Transparency < 1 then
							bloodlol.Transparency = bloodlol.Transparency+0.05
						else
							bloodlol:Destroy()
						end
						wait(0.1)
					end
				end)
				coru()
			end
		end
	end)
	local coru = coroutine.wrap(function()
		wait(1)
		thing:Destroy()
	end)
	coru()
	end)
	reeee()
	wait()
	end
end

function killz(playa,hitz,kneef,explode,pool,head,charred,override)
	local soundy = false
	local heyy = hitz
	if hitz == "Right Arm" then
	local Limb = playa:FindFirstChild("Right Arm")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Right Shoulder') then ters["Right Shoulder"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "RightShoulder"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end
			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
		end	
	elseif hitz == "Left Arm" then
		local Limb = playa:FindFirstChild("Left Arm")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Left Shoulder') then ters["Left Shoulder"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.CanCollide = true
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = ters
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
		end
	elseif hitz == "Right Leg" then
		local Limb = playa:FindFirstChild("Right Leg")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Right Hip') then ters["Right Hip"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "Right Hip"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end
			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
				local dos = Instance.new('Part',workspace)
				uno.CFrame = playa:FindFirstChild(hitz).CFrame
				dos.CFrame = kneef["big ass knife"].CFrame
				local weld = Instance.new('Weld',kneef["big ass knife"])
				weld.Part0 = playa:FindFirstChild(hitz)
				weld.Part1 = kneef["big ass knife"]
				weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
				uno:Destroy()
				dos:Destroy()
				playa:FindFirstChild(hitz).Anchored = false
				for i, v in pairs(kneef:GetChildren()) do
					if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
			if playa then
				table.insert(rekt,playa)
			end
		end
	elseif hitz == "Left Leg" then
		local Limb = playa:FindFirstChild("Left Leg")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Left Hip') then ters["Left Hip"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
		Limb.CFrame = ters.CFrame * CFrame.new(0.5, -2, 0)
			Limb.CFrame = ters.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftHip"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			Limb.CanCollide = false
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
			if playa then
				table.insert(rekt,playa)
			end
		end
	elseif playa then
		if finishnum ~= 1 then
			local coru=coroutine.wrap(function()
			player.Character.Head.Psycho.Playing = true
			wait(3)
			player.Character.Head.Psycho.Playing = false
			end)
			coru()
		end
		local playa2 = playa
		playa.Archivable = true
		local playa = playa:Clone()
		playa.Archivable = false
		playa2:Destroy()
		playa.Parent = workspace
		local Gibs = game.Workspace
		local Torso = playa.Torso
		local Head = playa:FindFirstChild("Head")
		local function Scan(ch)
		local e
		for e = 1,#ch do
			Scan(ch[e]:GetChildren())
			if (ch[e].ClassName == "Weld" and ch[e]:FindFirstChild('Part1') and ch[e].Part1.Name ~= 'Projectile') or ch[e].ClassName == "Motor6D" or ch[e].ClassName == "Rotate" or (ch[e]:IsA('BasePart') and ch[e].Size == Vector3.new(1, 1, 1)) then
				ch[e]:remove()
			end
		end
		end
	Scan(playa:GetChildren())
		if playa:FindFirstChild('HumanoidRootPart') and (zombiemode == false or override) then
			playa:FindFirstChild('HumanoidRootPart'):Destroy()
		end
		local hum2 = playa:FindFirstChildOfClass("Humanoid")
	if zombiemode == true and override == false then
		soundy = true
	end
	if string.sub(hum2.Parent.Name,string.len(hum2.Parent.Name)-8,string.len(hum2.Parent.Name)) ~= "'s Zombie" then
		override = true
	end
	if hum2 ~= nil then
		hum2.Name = "Humanoid2"
		hum2.Health = 0
		if zombiemode == false or override == true then
			table.insert(rekt,hum2.Parent)
		else
			local gyro = Instance.new('BodyGyro',Torso)
			hum2.PlatformStand = false
			for i,v in pairs(hum2.Parent.Torso:GetChildren()) do
				if v:IsA('BodyGyro') then v:Destroy() end
			end
			if playa:FindFirstChild('HumanoidRootPart') then
				hum2.Parent.HumanoidRootPart.CFrame = hum2.Parent.Torso.CFrame
				local weldcrucial = Instance.new('Weld',hum2.Parent.HumanoidRootPart)
				weldcrucial.Part0 = hum2.Parent.HumanoidRootPart
				weldcrucial.Part1 = hum2.Parent.Torso
			end
		end
	end
	local ch = playa:GetChildren()
	local i
	for i = 1,#ch do
		if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
			ch[i]:remove()
		end
	end

		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = Torso
			Neck.Part1 = Head
			if pool then
				local part = Instance.new('Part',Torso)
				part.Position = Vector3.new(0,10,0)
				part.Size = Vector3.new(0.2,0.2,0.2)
				part.Transparency = 1
				part.CanCollide = false
				local we = Instance.new('Weld',Torso)
				we.Part0 = Torso
				we.Part1 = part
				we.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
				local coru=coroutine.wrap(function()
				bleed(part)
				end)
				coru()
			end
			if head == false or head == nil then
				Neck.C0 = CFrame.new(0, 1.5, 0)
			else
				Neck.C0 = CFrame.new(0, 1.5, 0.2)*CFrame.Angles(0.5, 0.25, 0.25)
				local bleedpart = Instance.new("Part", Torso)
				bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
				bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
				bleedpart.CanCollide = false
				bleedpart.Position = Head.Position + Vector3.new(0, 1, 0)
				bleedpart.Transparency = 1
	
				local bleedpartweld = Instance.new("Weld", Torso)
				bleedpartweld.Part0 = Torso
				bleedpartweld.Part1 = bleedpart
				bleedpartweld.C0 = CFrame.Angles(-1, 0, -0.35) * CFrame.new(0, 1, 0.8)
				local coru = coroutine.wrap(function()
				bleed(bleedpart)
				end)
				coru()
			end
			Neck.C1 = CFrame.new()
			Neck.Parent = Torso
		end
		local Limb = playa:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "RightShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Left Arm")
		if Limb then
	
			Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Right Leg")
		if Limb then
			Limb.CanCollide = false
			Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "RightHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CanCollide = true
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Left Leg")
		if Limb then
			Limb.CanCollide = false
			Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			if zombiemode == false or override then
			B.CanCollide = true
			end
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		--[[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = playa
		local Weld = Instance.new("Weld")
		Weld.Part0 = Torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Torso
		--]]
		playa.Parent = Gibs
		if kneef and explode == nil then
			local coru = coroutine.wrap(function()
				if playa:FindFirstChild(hitz) then
					local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if explode == nil or explode == false then
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.CanCollide = false
					bleedpart.Position = Head.Position + Vector3.new(0, 1, 0)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
			end)
			coru()
		end
		if explode then
			local movevector = CFrame.new(explode.Position,Torso.Position).lookVector
			local repulse = Instance.new('BodyForce',Torso)
            repulse.Force = movevector*10000 + Vector3.new(0,5000,0)
            game.Debris:AddItem(repulse,0.05)
		end
		if charred and zombiemode == false then
			for i,v in pairs(playa:GetChildren()) do
				if v:IsA('BasePart') then
					v.BrickColor = BrickColor.Black()
					local fire = Instance.new('Fire',v)
					fire.Size = 5
					fire.Heat = 5
				elseif v:IsA('Accessory') then
					for a,c in pairs(v:GetChildren()) do
						if c:IsA('BasePart') then
							c.BrickColor = BrickColor.Black()
							local fire = Instance.new('Fire',v)
							fire.Size = 5
							fire.Heat = 5
							for o,p in pairs(c:GetChildren()) do
								if p:IsA("SpecialMesh") then
									p.TextureId = ""
								end
							end
						end
					end
				end
			end
		end
		if soundy then
			local sound = Instance.new('Sound',Head)
			sound.SoundId = 'rbxassetid://903640857'
			sound.Volume = 1
			sound:Play()
			sound.Ended:connect(function() 
				sound:Destroy()
				local ambient = Instance.new('Sound',Head)
				ambient.Volume = 0.25
				ambient.Looped = true
				ambient.SoundId = 'rbxassetid://903641031'
				ambient:Play()
			end)
		end
		if override then
			if (string.len(hum2.Parent.Name) < 9 or string.sub(hum2.Parent.Name,string.len(hum2.Parent.Name)-8,string.len(hum2.Parent.Name)) ~= "'s Zombie") and zombiemode == true and #zombies < 10 then
				local coru = coroutine.wrap(function()
					wait(4.5)
					hum2.Parent.Name = hum2.Parent.Name.."'s Zombie"
					hum2.HipHeight = 0.2
					wait(0.5)
					killz(hum2.Parent,"Head",nil,nil,false,false,false,false)
				end)
				coru()
			else
				game:GetService('Debris'):AddItem(playa, 12)
			end
		else
			hum2.Health = 0
			table.insert(zombies,playa)
			local attack = Instance.new('Sound',Head)
			attack.SoundId = 'rbxassetid://903641424'
			attack.Volume = 2
			for i,v in pairs(playa:GetChildren()) do
				if v:IsA('BasePart') and v:FindFirstChildOfClass('TouchTransmitter') == nil then
					v.Touched:connect(function(hit)
						if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') then
							local found = false
							if hit.Parent == player.Character then
								found = true
							end
							for a,c in pairs(zombies) do
								if c == hit.Parent then
									found = true
								end
							end
							if found == false and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
								attack:Play()
								if hit.Parent:FindFirstChildOfClass('Humanoid').Health - 2 <= 0 then
									hit.Parent:FindFirstChildOfClass('Humanoid').Health = 0
									wait()
									killz(hit.Parent,"Head")
								else
									hit.Parent:FindFirstChildOfClass('Humanoid'):TakeDamage(2)
								end
							end
						end
					end)
				end
			end
			local coru = coroutine.wrap(function()
				wait(2)
				for i,v in pairs(playa:GetChildren()) do
				if v:IsA('BasePart') then
					for a,c in pairs(v:GetChildren()) do
						if c:IsA('Fire') or c:IsA('ParticleEmitter') then
							c:Destroy()
						end
					end
				elseif v:IsA('Accessory') then
					for a,c in pairs(v:GetChildren()) do
						if c:IsA('BasePart') then
							for b,d in pairs(c:GetChildren()) do
								if d:IsA('Fire') or d:IsA('ParticleEmitter') then
									d:Destroy()
								end
							end
						end
					end
				end
			end
			end)
			coru()
		end
	end	
end

mouse.KeyDown:connect(function(key)
	if key == "t" and mouse.Target then
		local hum = mouse.Target.Parent:FindFirstChildOfClass('Humanoid')
		if hum == nil then hum = mouse.Target.Parent.Parent:FindFirstChildOfClass('Humanoid') end
		if curpoint == nil then
			if hum and hum.Parent:FindFirstChild('Head') then
				curpart = hum.Parent.Head
			else
				curpart = nil
				curpoint = mouse.Hit.p
			end
			if player.PlayerGui:FindFirstChild('Notification') then player.PlayerGui.Notification:Destroy() end
			notify("ZOMBIE TARGET SET",false)
		else
			curpart = nil
			curpoint = nil
			if player.PlayerGui:FindFirstChild('Notification') then player.PlayerGui.Notification:Destroy() end
			notify("ZOMBIE TARGET REMOVED",false)
		end
	elseif key == "y" then
		for o,p in pairs(zombies) do
			local coru = coroutine.wrap(function()
			if p:FindFirstChild('Torso') then
			killz(p,"Head",nil,nil,false,false,false,true)
			else
			table.remove(zombies,o)
			end
			end)
			coru()
			wait()
		end
		for i,v in pairs(zombies) do
			table.remove(zombies,i)
		end
		if player.PlayerGui:FindFirstChild('Notification') then player.PlayerGui.Notification:Destroy() end
		notify("ZOMBIES TERMINATED",false)
	end
end)

function nub()
repeat wait() until player.Character and player.Character:FindFirstChild('Torso')
local me = player.Character
local point = me.HumanoidRootPart
local playergui = player.PlayerGui
local rightshoulderz = me.Torso["Right Shoulder"]:Clone()
local leftshoulderz = me.Torso["Left Shoulder"]:Clone()
local torsojoint = me.HumanoidRootPart["RootJoint"]:Clone()
local lefthipz = me.Torso["Left Hip"]:Clone()
local righthipz = me.Torso["Right Hip"]:Clone()
local mode = "kill"
local lerpz = false
local active = false
local acting = false
local hit = false
local canClick = true
local stabbing = false
local grabbing = false
local finishing = false
local kyssing = false
local canbackgroundmusic = true
local cancolorfilter = true
local spinboolean = false
local grabbed = nil
local doing = false
local rightshoulder = nil
local leftshoulder = nil
local headweld = nil
local knifeparts = {}
local usable = true
finishnum = 1

function notify(msg,forever)
	local doit = coroutine.wrap(function()
		local gui = Instance.new('ScreenGui',playergui)
		gui.Name = "Notification"
		local frame = Instance.new('Frame',gui)
		frame.Position = UDim2.new(0,0,0,0)
		frame.Size = UDim2.new(1,0,0.2,0)
		frame.BackgroundTransparency = 1
		local txt = Instance.new('TextLabel',frame)
		txt.TextColor3 = Color3.new(255,255,255)
		txt.TextStrokeColor3 = Color3.new(0, 0, 0)
		txt.TextStrokeTransparency = 0
		txt.BackgroundTransparency = 1
		txt.Text = ""
		txt.Size = UDim2.new(1,0,0.3,0)
		txt.Position = UDim2.new(0,0,0.4,0)
		txt.TextScaled = true
		txt.Font = "Code"
		txt.TextXAlignment = "Center"
		local tap = Instance.new("Sound")
		tap.Parent = gui
		tap.SoundId = "rbxassetid://147982968"
		tap.TimePosition = 0.1
		local str = msg
		local len = string.len(str)
		for i=1,len do
			txt.Text = string.sub(str,1,i)
			pitche = math.random(20, 40)/10
			tap.PlaybackSpeed = pitche
			tap:Play()
			wait(0.01)
		end
		if forever == false then
			wait(1)
			while txt.TextTransparency < 1 do
				txt.TextTransparency = txt.TextTransparency + 0.1
				txt.TextStrokeTransparency = txt.TextStrokeTransparency + 0.1
				wait(0.001)
			end
			gui:Destroy()
		end
	end)
	doit()
end

wait(0.5)
notify("PRESS [Z] TO EQUIP KNIFE || Created by mustardfoot and Tollonis",true)
local laugh = Instance.new('Sound',me.Head)
laugh.SoundId = 'rbxassetid://378827985'
laugh.Name = "Psycho"
laugh.Volume = 5
-- 1 - bitch ass knife
local obj1 = Instance.new("Model")
obj1.Name = "bitch ass knife"
obj1.Parent = game.Workspace

-- 2 - Grab
local obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(20.4525032, 6.14501333, -134.399979)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.Concrete
obj2.Size = Vector3.new(1, 0.25, 0.25)
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Anchored = true
obj2.BrickColor = BrickColor.new("Black")
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Cylinder
obj2.Name = "Grab"
obj2.Parent = obj1

-- 3 - handletopcap
local obj3 = Instance.new("Part")
obj3.CFrame = CFrame.new(Vector3.new(19.9725456, 6.14502859, -134.399933)) * CFrame.Angles(0, 1.5707963705063, 0)
obj3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Material = Enum.Material.Concrete
obj3.Size = Vector3.new(0.349999994, 0.349999994, 0.349999994)
obj3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Anchored = true
obj3.BrickColor = BrickColor.new("Black")
obj3.Friction = 0.30000001192093
obj3.Shape = Enum.PartType.Ball
obj3.Name = "handletopcap"
obj3.Parent = obj1

-- 4 - handlebottomcap
local obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(20.9725285, 6.14502859, -134.399918)) * CFrame.Angles(0, 1.5707963705063, 0)
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.Concrete
obj4.Size = Vector3.new(0.25, 0.25, 0.25)
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Anchored = true
obj4.BrickColor = BrickColor.new("Black")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Ball
obj4.Name = "handlebottomcap"
obj4.Parent = obj1

-- 5 - handleguardmid
local obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(19.9474983, 6.14502859, -134.399918)) * CFrame.Angles(0, 1.5707963705063, 0)
obj5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Material = Enum.Material.Concrete
obj5.Size = Vector3.new(0.349999994, 0.349999994, 0.100000001)
obj5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Anchored = true
obj5.BrickColor = BrickColor.new("Black")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Block
obj5.Name = "handleguardmid"
obj5.Parent = obj1

-- 6 - handleguardcap1
local obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(19.9474983, 6.32502794, -134.399918)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Material = Enum.Material.Concrete
obj6.Size = Vector3.new(0.100000001, 0.349999994, 0.349999994)
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Anchored = true
obj6.BrickColor = BrickColor.new("Black")
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Cylinder
obj6.Name = "handleguardcap1"
obj6.Parent = obj1

-- 7 - handleguardcap2
local obj7 = Instance.new("Part")
obj7.CFrame = CFrame.new(Vector3.new(19.9474983, 5.97502899, -134.399918)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
obj7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.Material = Enum.Material.Concrete
obj7.Size = Vector3.new(0.100000009, 0.349999994, 0.349999994)
obj7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.Anchored = true
obj7.BrickColor = BrickColor.new("Black")
obj7.Friction = 0.30000001192093
obj7.Shape = Enum.PartType.Cylinder
obj7.Name = "handleguardcap2"
obj7.Parent = obj1

-- 8 - big ass knife
local obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(18.4375095, 6.14502859, -134.401321)) * CFrame.Angles(0, 1.5707963705063, 0)
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Material = Enum.Material.Metal
obj8.Size = Vector3.new(0.0500000007, 0.280000001, 0.839999795)
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Anchored = true
obj8.BrickColor = BrickColor.new("Lily white")
obj8.Friction = 0.30000001192093
obj8.Shape = Enum.PartType.Block
obj8.Name = "big ass knife"
obj8.Parent = obj1

-- 9 - Mesh
local obj9 = Instance.new("BlockMesh")
obj9.Scale = Vector3.new(0.5, 1, 1)
obj9.Parent = obj8

-- 10 - big ass knife
local obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(19.7425137, 6.14502859, -134.401321)) * CFrame.Angles(0, 1.5707963705063, 0)
obj10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Material = Enum.Material.Metal
obj10.Size = Vector3.new(0.0500000007, 0.280000001, 0.289999962)
obj10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Anchored = true
obj10.BrickColor = BrickColor.new("Lily white")
obj10.Friction = 0.30000001192093
obj10.Shape = Enum.PartType.Block
obj10.Name = "big ass knife"
obj10.Parent = obj1
local knife = obj10

-- 11 - Mesh
local obj11 = Instance.new("BlockMesh")
obj11.Scale = Vector3.new(0.5, 1, 1)
obj11.Parent = obj10

-- 12 - big ass knife
local obj12 = Instance.new("Part")
obj12.CFrame = CFrame.new(Vector3.new(19.1075306, 6.08502865, -134.401321)) * CFrame.Angles(0, 1.5707963705063, 0)
obj12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Material = Enum.Material.Metal
obj12.Size = Vector3.new(0.0500000007, 0.159999996, 0.979999959)
obj12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Anchored = true
obj12.BrickColor = BrickColor.new("Lily white")
obj12.Friction = 0.30000001192093
obj12.Shape = Enum.PartType.Block
obj12.Name = "big ass knife"
obj12.Parent = obj1

-- 13 - Mesh
local obj13 = Instance.new("BlockMesh")
obj13.Scale = Vector3.new(0.5, 1, 1)
obj13.Parent = obj12

-- 14 - serration
local obj14 = Instance.new("WedgePart")
obj14.CFrame = CFrame.new(Vector3.new(19.4963322, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Material = Enum.Material.Metal
obj14.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Anchored = true
obj14.BrickColor = BrickColor.new("Lily white")
obj14.Friction = 0.30000001192093
obj14.Name = "serration"
obj14.Parent = obj1

-- 15 - Mesh
local obj15 = Instance.new("BlockMesh")
obj15.Scale = Vector3.new(0.5, 1, 1)
obj15.Parent = obj14

-- 16 - serration
local obj16 = Instance.new("WedgePart")
obj16.CFrame = CFrame.new(Vector3.new(19.2763138, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Material = Enum.Material.Metal
obj16.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Anchored = true
obj16.BrickColor = BrickColor.new("Lily white")
obj16.Friction = 0.30000001192093
obj16.Name = "serration"
obj16.Parent = obj1

-- 17 - Mesh
local obj17 = Instance.new("BlockMesh")
obj17.Scale = Vector3.new(0.5, 1, 1)
obj17.Parent = obj16

-- 18 - serration
local obj18 = Instance.new("WedgePart")
obj18.CFrame = CFrame.new(Vector3.new(19.3863068, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Material = Enum.Material.Metal
obj18.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Anchored = true
obj18.BrickColor = BrickColor.new("Lily white")
obj18.Friction = 0.30000001192093
obj18.Name = "serration"
obj18.Parent = obj1

-- 19 - Mesh
local obj19 = Instance.new("BlockMesh")
obj19.Scale = Vector3.new(0.5, 1, 1)
obj19.Parent = obj18

-- 20 - serration
local obj20 = Instance.new("WedgePart")
obj20.CFrame = CFrame.new(Vector3.new(19.5963173, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Material = Enum.Material.Metal
obj20.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Anchored = true
obj20.BrickColor = BrickColor.new("Lily white")
obj20.Friction = 0.30000001192093
obj20.Name = "serration"
obj20.Parent = obj1

-- 21 - Mesh
local obj21 = Instance.new("BlockMesh")
obj21.Scale = Vector3.new(0.5, 1, 1)
obj21.Parent = obj20

-- 22 - serration
local obj22 = Instance.new("WedgePart")
obj22.CFrame = CFrame.new(Vector3.new(19.1663074, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.Material = Enum.Material.Metal
obj22.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.Anchored = true
obj22.BrickColor = BrickColor.new("Lily white")
obj22.Friction = 0.30000001192093
obj22.Name = "serration"
obj22.Parent = obj1

-- 23 - Mesh
local obj23 = Instance.new("BlockMesh")
obj23.Scale = Vector3.new(0.5, 1, 1)
obj23.Parent = obj22

-- 24 - serration
local obj24 = Instance.new("WedgePart")
obj24.CFrame = CFrame.new(Vector3.new(18.9663048, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Material = Enum.Material.Metal
obj24.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Anchored = true
obj24.BrickColor = BrickColor.new("Lily white")
obj24.Friction = 0.30000001192093
obj24.Name = "serration"
obj24.Parent = obj1

-- 25 - Mesh
local obj25 = Instance.new("BlockMesh")
obj25.Scale = Vector3.new(0.5, 1, 1)
obj25.Parent = obj24

-- 26 - serration
local obj26 = Instance.new("WedgePart")
obj26.CFrame = CFrame.new(Vector3.new(18.8562984, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.Material = Enum.Material.Metal
obj26.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.Anchored = true
obj26.BrickColor = BrickColor.new("Lily white")
obj26.Friction = 0.30000001192093
obj26.Name = "serration"
obj26.Parent = obj1

-- 27 - Mesh
local obj27 = Instance.new("BlockMesh")
obj27.Scale = Vector3.new(0.5, 1, 1)
obj27.Parent = obj26

-- 28 - serration
local obj28 = Instance.new("WedgePart")
obj28.CFrame = CFrame.new(Vector3.new(19.0663071, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.Material = Enum.Material.Metal
obj28.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.Anchored = true
obj28.BrickColor = BrickColor.new("Lily white")
obj28.Friction = 0.30000001192093
obj28.Name = "serration"
obj28.Parent = obj1

-- 29 - Mesh
local obj29 = Instance.new("BlockMesh")
obj29.Scale = Vector3.new(0.5, 1, 1)
obj29.Parent = obj28

-- 30 - knifetip1
local obj30 = Instance.new("WedgePart")
obj30.CFrame = CFrame.new(Vector3.new(18.0163059, 6.14381599, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.Material = Enum.Material.Metal
obj30.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.Anchored = true
obj30.BrickColor = BrickColor.new("Lily white")
obj30.Friction = 0.30000001192093
obj30.Name = "knifetip1"
obj30.Parent = obj1

-- 31 - Mesh
local obj31 = Instance.new("BlockMesh")
obj31.Scale = Vector3.new(0.5, 1, 1)
obj31.Parent = obj30

-- 32 - redstuff
local obj32 = Instance.new("Part")
obj32.CFrame = CFrame.new(Vector3.new(19.9470005, 5.9749999, -134.399994)) * CFrame.Angles(-0, 0, -0)
obj32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.Material = Enum.Material.SmoothPlastic
obj32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.Size = Vector3.new(0.0500000007, 0.360000014, 0.360000014)
obj32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.BrickColor = BrickColor.new("Institutional white")
obj32.Friction = 0.30000001192093
obj32.Shape = Enum.PartType.Cylinder
obj32.Name = "redstuff"
obj32.Anchored = true
obj32.Parent = obj1


-- 33 - redstuff
local obj33 = Instance.new("Part")
obj33.CFrame = CFrame.new(Vector3.new(18.9800053, 6.1400156, -134.404984)) * CFrame.Angles(-0, 0, -0)
obj33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.Material = Enum.Material.SmoothPlastic
obj33.Size = Vector3.new(1.81999993, 0.100000001, 0.0500000007)
obj33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.BrickColor = BrickColor.new("Institutional white")
obj33.Friction = 0.30000001192093
obj33.Shape = Enum.PartType.Block
obj33.Name = "redstuff"
obj33.Anchored = true
obj33.Parent = obj1

-- 34 - redstuff
local obj34 = Instance.new("Part")
obj34.CFrame = CFrame.new(Vector3.new(19.9470005, 6.32499981, -134.399994)) * CFrame.Angles(-0, 0, -0)
obj34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.Size = Vector3.new(0.0500000007, 0.360000014, 0.360000014)
obj34.Material = Enum.Material.SmoothPlastic
obj34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.BrickColor = BrickColor.new("Institutional white")
obj34.Friction = 0.30000001192093
obj34.Shape = Enum.PartType.Cylinder
obj34.Name = "redstuff"
obj34.Anchored = true
obj34.Parent = obj1

-- 35 - redstuff
local obj35 = Instance.new("Part")
obj35.CFrame = CFrame.new(Vector3.new(19.8830166, 6.14501476, -134.399963)) * CFrame.Angles(-0, 0, -0)
obj35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.Size = Vector3.new(0.0500000007, 0.319999993, 0.319999993)
obj35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.BrickColor = BrickColor.new("Institutional white")
obj35.Friction = 0.30000001192093
obj35.Shape = Enum.PartType.Cylinder
obj35.Material = Enum.Material.SmoothPlastic
obj35.Name = "redstuff"
obj35.Anchored = true
obj35.Parent = obj1

-- 36 - redstuff
local obj36 = Instance.new("Part")
obj36.CFrame = CFrame.new(Vector3.new(20.9430103, 6.14501476, -134.399963)) * CFrame.Angles(-0, 0, -0)
obj36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.Material = Enum.Material.SmoothPlastic
obj36.Size = Vector3.new(0.0500000007, 0.25999999, 0.25999999)
obj36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.BrickColor = BrickColor.new("Institutional white")
obj36.Friction = 0.30000001192093
obj36.Shape = Enum.PartType.Cylinder
obj36.Name = "redstuff"
obj36.Anchored = true
obj36.Parent = obj1

-- 37 - redstuff
local obj37 = Instance.new("WedgePart")
obj37.CFrame = CFrame.new(Vector3.new(18.066288, 6.14381599, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.Material = Enum.Material.SmoothPlastic
obj37.Size = Vector3.new(0.0500000007, 0.0700000003, 0.0700000003)
obj37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.Anchored = true
obj37.BrickColor = BrickColor.new("Institutional white")
obj37.Friction = 0.30000001192093
obj37.Name = "redstuff"
obj37.Anchored = true
obj37.Parent = obj1

-- 38 - redstuff
local obj38 = Instance.new("Part")
obj38.CFrame = CFrame.new(Vector3.new(20.1230125, 6.14501476, -134.399979)) * CFrame.Angles(-0, 0, -0)
obj38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.Material = Enum.Material.SmoothPlastic
obj38.Size = Vector3.new(0.0500000007, 0.25999999, 0.25999999)
obj38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.BrickColor = BrickColor.new("Institutional white")
obj38.Friction = 0.30000001192093
obj38.Shape = Enum.PartType.Cylinder
obj38.Name = "redstuff"
obj38.Anchored = true
obj38.Parent = obj1

local function recurse(objnum)
	table.insert(knifeparts,{objnum,objnum.Parent})
	for i,v in pairs(objnum:GetChildren()) do
		recurse(v)
	end
end

recurse(obj1)

local audio = Instance.new('Sound',knife)
audio.Volume = 2

local audio2 = Instance.new('Sound',knife)
audio2.Volume = 2

local holdpart = Instance.new("Part")
holdpart.Parent = me
holdpart.Size = Vector3.new(0.4, 0.4, 0.2)
holdpart.Position = me.Head.Position + Vector3.new(0, 1, 0)
holdpart.BrickColor = BrickColor.new("Burnt Sienna")

local previous = nil
for i,v in pairs(obj1:GetChildren()) do
	if v:IsA('BasePart') then
		if previous then
			local weld = Instance.new('Weld',v)
			weld.Part0 = v
			weld.Part1 = previous
			weld.C0 = v.CFrame:inverse() * previous.CFrame
			previous.Anchored = false
			previous.CanCollide = false
			local vee = v
			weld.AncestryChanged:connect(function(mez,par)
				wait()
				weld.Parent = vee
			end)
		end
		previous = v
	end
end
previous.Anchored = false
previous.CanCollide = false

local holdpartweld = Instance.new("Weld", me.Torso)
holdpartweld.Part0 = me.Torso
holdpartweld.Part1 = holdpart
holdpartweld.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-1, -0.8, 0.15)

holdpartweld.AncestryChanged:connect(function(mez,par)
	if par ~= me.Torso then
		wait()
		holdpartweld.Parent = me.Torso
	end
end)

local knifeweld = Instance.new('Weld',me.Torso)
knifeweld.Part0 = me.Torso
knifeweld.Part1 = obj2
knifeweld.C1 = CFrame.Angles(0,math.rad(90),0) * CFrame.new(1, 0.8, 0.55)
knifeweld.AncestryChanged:connect(function(mez,par)
	if par ~= me.Torso then
		wait()
		knifeweld.Parent = me.Torso
	end
end)
local ScreenGui = Instance.new("ScreenGui")
local CustomizeGui = Instance.new("Frame")
local Customize = Instance.new("TextLabel")
local ClosestColor = Instance.new("TextLabel")
local Line = Instance.new("TextLabel")
local Color = Instance.new("ImageLabel")
local Close = Instance.new("TextButton")
local RedHue = Instance.new("TextLabel")
local GreenHue = Instance.new("TextLabel")
local RedInput = Instance.new("TextBox")
local BlueHue = Instance.new("TextLabel")
local GreenInput = Instance.new("TextBox")
local TransInput = Instance.new("TextBox")
local BlueInput = Instance.new("TextBox")
local Message = Instance.new("TextLabel")
local Message2 = Instance.new("TextLabel")
local TrailTransparency = Instance.new("TextLabel")
local TrailInput = Instance.new("TextBox")
local MusicOption = Instance.new("TextButton")
local ScreenOption = Instance.new("TextButton")
local ScreenOptionTxt = Instance.new("TextLabel")
local MusicOptionTxt = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = playergui

CustomizeGui.Name = "CustomizeGui"
CustomizeGui.Parent = ScreenGui
CustomizeGui.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
CustomizeGui.BackgroundTransparency = 0.5
CustomizeGui.BorderColor3 = Color3.new(0, 0, 0)
CustomizeGui.BorderSizePixel = 2
CustomizeGui.Position = UDim2.new(0, 0, 0.5, 0)
CustomizeGui.Size = UDim2.new(0.449999988, 0, 0.449999988, 0)

Customize.Name = "Customize"
Customize.Parent = CustomizeGui
Customize.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Customize.BackgroundTransparency = 0.75
Customize.BorderSizePixel = 0
Customize.Size = UDim2.new(1, 0, 0.200000003, 0)
Customize.FontSize = Enum.FontSize.Size28
Customize.Text = "ACCENT COLOR CUSTOMIZATION"
Customize.TextColor3 = Color3.new(1, 1, 1)
Customize.TextScaled = true
Customize.TextSize = 25
Customize.TextStrokeTransparency = 0.5
Customize.TextWrapped = true

ClosestColor.Name = "ClosestColor"
ClosestColor.Parent = CustomizeGui
ClosestColor.BackgroundColor3 = Color3.new(1, 1, 1)
ClosestColor.BackgroundTransparency = 1
ClosestColor.Position = UDim2.new(0, 0, 0.850000024, 0)
ClosestColor.Size = UDim2.new(1, 0, 0.150000006, 0)
ClosestColor.Font = Enum.Font.SourceSansLight
ClosestColor.FontSize = Enum.FontSize.Size32
ClosestColor.Text = "Your color is closest to Institutional White"
ClosestColor.TextColor3 = Color3.new(1, 1, 1)
ClosestColor.TextSize = 30
ClosestColor.TextStrokeTransparency = 0.5

Line.Name = "Line"
Line.Parent = CustomizeGui
Line.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Line.BackgroundTransparency = 0.5
Line.BorderColor3 = Color3.new(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.200000003, 0)
Line.Size = UDim2.new(1, 0, 0.0299999993, 0)
Line.Font = Enum.Font.SourceSans
Line.FontSize = Enum.FontSize.Size14
Line.Text = " "
Line.TextSize = 14

Color.Name = "Color"
Color.Parent = CustomizeGui
Color.BackgroundColor3 = Color3.new(1, 1, 1)
Color.BorderSizePixel = 0
Color.Position = UDim2.new(0.699999988, 0, 0.419999987, 0)
Color.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
Color.SizeConstraint = Enum.SizeConstraint.RelativeYY

MusicOption.Parent = CustomizeGui
MusicOption.Name = "MusicOption"
MusicOption.BackgroundColor3 = Color3.new(0, 1, 0)
MusicOption.BorderSizePixel = 1
MusicOption.Position = UDim2.new(0.01, 0, -0.12, 0)
MusicOption.Size = UDim2.new(0.05, 0, 0.1, 0)
MusicOption.Text = ""
MusicOption.BackgroundTransparency = 0.5

ScreenOption.Parent = CustomizeGui
ScreenOption.Name = "ScreenOption"
ScreenOption.BackgroundColor3 = Color3.new(0, 1, 0)
ScreenOption.BorderSizePixel = 1
ScreenOption.Position = UDim2.new(0.01, 0, -0.23, 0)
ScreenOption.Size = UDim2.new(0.05, 0, 0.1, 0)
ScreenOption.Text = ""
ScreenOption.BackgroundTransparency = 0.5

ScreenOptionTxt.Name = "ScreenOptionTxt"
ScreenOptionTxt.Parent = CustomizeGui
ScreenOptionTxt.BackgroundColor3 = Color3.new(1, 1, 1)
ScreenOptionTxt.BackgroundTransparency = 1
ScreenOptionTxt.Position = UDim2.new(0.07, 0, -0.23, 0)
ScreenOptionTxt.Size = UDim2.new(1, 0, 0.07, 0)
ScreenOptionTxt.Font = Enum.Font.SourceSans
ScreenOptionTxt.FontSize = Enum.FontSize.Size24
ScreenOptionTxt.Text = "Psychopath Red Filter"
ScreenOptionTxt.TextColor3 = Color3.new(1, 1, 1)
ScreenOptionTxt.TextScaled = true
ScreenOptionTxt.TextSize = 20
ScreenOptionTxt.TextStrokeColor3 = Color3.new(0, 0, 0)
ScreenOptionTxt.TextStrokeTransparency = 0.5
ScreenOptionTxt.TextWrapped = true
ScreenOptionTxt.TextXAlignment = "Left"

MusicOptionTxt.Name = "MusicOptionTxt"
MusicOptionTxt.Parent = CustomizeGui
MusicOptionTxt.BackgroundColor3 = Color3.new(1, 1, 1)
MusicOptionTxt.BackgroundTransparency = 1
MusicOptionTxt.Position = UDim2.new(0.07, 0, -0.12, 0)
MusicOptionTxt.Size = UDim2.new(1, 0, 0.07, 0)
MusicOptionTxt.Font = Enum.Font.SourceSans
MusicOptionTxt.FontSize = Enum.FontSize.Size24
MusicOptionTxt.Text = "Psychopath Background Music"
MusicOptionTxt.TextColor3 = Color3.new(1, 1, 1)
MusicOptionTxt.TextScaled = true
MusicOptionTxt.TextSize = 20
MusicOptionTxt.TextStrokeColor3 = Color3.new(0, 0, 0)
MusicOptionTxt.TextStrokeTransparency = 0.5
MusicOptionTxt.TextWrapped = true
MusicOptionTxt.TextXAlignment = "Left"

Close.Name = "Close"
Close.Parent = CustomizeGui
Close.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Close.BackgroundTransparency = 0.5
Close.BorderColor3 = Color3.new(0, 0, 0)
Close.BorderSizePixel = 2
Close.Position = UDim2.new(1.005, 0, 0, 0)
Close.Size = UDim2.new(0.100000001, 0, 0.2, 0)
Close.Font = Enum.Font.SourceSans
Close.FontSize = Enum.FontSize.Size14
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextScaled = true
Close.TextSize = 14
Close.TextStrokeTransparency = 0
Close.TextWrapped = true

RedHue.Name = "RedHue"
RedHue.Parent = CustomizeGui
RedHue.BackgroundColor3 = Color3.new(1, 1, 1)
RedHue.BackgroundTransparency = 1
RedHue.Position = UDim2.new(0.100000001, 0, 0.400000006, 0)
RedHue.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
RedHue.Font = Enum.Font.SourceSans
RedHue.FontSize = Enum.FontSize.Size24
RedHue.Text = "RED Hue Value: "
RedHue.TextColor3 = Color3.new(1, 1, 1)
RedHue.TextScaled = true
RedHue.TextSize = 20
RedHue.TextStrokeColor3 = Color3.new(1, 0, 0)
RedHue.TextStrokeTransparency = 0.75
RedHue.TextWrapped = true

GreenHue.Name = "GreenHue"
GreenHue.Parent = CustomizeGui
GreenHue.BackgroundColor3 = Color3.new(1, 1, 1)
GreenHue.BackgroundTransparency = 1
GreenHue.Position = UDim2.new(0.100000001, 0, 0.5, 0)
GreenHue.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
GreenHue.Font = Enum.Font.SourceSans
GreenHue.FontSize = Enum.FontSize.Size24
GreenHue.Text = "GREEN Hue Value:"
GreenHue.TextColor3 = Color3.new(1, 1, 1)
GreenHue.TextScaled = true
GreenHue.TextSize = 20
GreenHue.TextStrokeColor3 = Color3.new(0, 1, 0)
GreenHue.TextStrokeTransparency = 0.75
GreenHue.TextWrapped = true

RedInput.Name = "RedInput"
RedInput.Parent = CustomizeGui
RedInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
RedInput.BackgroundTransparency = 0.5
RedInput.BorderSizePixel = 0
RedInput.Position = UDim2.new(0.419999987, 0, 0.425000007, 0)
RedInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
RedInput.Font = Enum.Font.SourceSans
RedInput.FontSize = Enum.FontSize.Size14
RedInput.Text = "255"
RedInput.TextColor3 = Color3.new(1, 1, 1)
RedInput.TextSize = 14
RedInput.TextStrokeTransparency = 0

BlueHue.Name = "BlueHue"
BlueHue.Parent = CustomizeGui
BlueHue.BackgroundColor3 = Color3.new(1, 1, 1)
BlueHue.BackgroundTransparency = 1
BlueHue.Position = UDim2.new(0.100000001, 0, 0.600000024, 0)
BlueHue.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
BlueHue.Font = Enum.Font.SourceSans
BlueHue.FontSize = Enum.FontSize.Size24
BlueHue.Text = "BLUE Hue Value:"
BlueHue.TextColor3 = Color3.new(1, 1, 1)
BlueHue.TextScaled = true
BlueHue.TextSize = 20
BlueHue.TextStrokeColor3 = Color3.new(0, 0, 1)
BlueHue.TextStrokeTransparency = 0.75
BlueHue.TextWrapped = true

TrailTransparency.Name = "TrailTransparency"
TrailTransparency.Parent = CustomizeGui
TrailTransparency.BackgroundColor3 = Color3.new(1, 1, 1)
TrailTransparency.BackgroundTransparency = 1
TrailTransparency.Position = UDim2.new(0.090000001, 0, 0.700000024, 0)
TrailTransparency.Size = UDim2.new(0.310000012, 0, 0.100000001, 0)
TrailTransparency.Font = Enum.Font.SourceSans
TrailTransparency.FontSize = Enum.FontSize.Size24
TrailTransparency.Text = "Trail Transparency:"
TrailTransparency.TextColor3 = Color3.new(1, 1, 1)
TrailTransparency.TextScaled = true
TrailTransparency.TextSize = 20
TrailTransparency.TextStrokeColor3 = Color3.new(0, 0, 0)
TrailTransparency.TextWrapped = true

GreenInput.Name = "GreenInput"
GreenInput.Parent = CustomizeGui
GreenInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
GreenInput.BackgroundTransparency = 0.5
GreenInput.BorderSizePixel = 0
GreenInput.Position = UDim2.new(0.419999987, 0, 0.524999976, 0)
GreenInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
GreenInput.Font = Enum.Font.SourceSans
GreenInput.FontSize = Enum.FontSize.Size14
GreenInput.Text = "255"
GreenInput.TextColor3 = Color3.new(1, 1, 1)
GreenInput.TextSize = 14
GreenInput.TextStrokeTransparency = 0

TransInput.Name = "TransInput"
TransInput.Parent = CustomizeGui
TransInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TransInput.BackgroundTransparency = 0.5
TransInput.BorderSizePixel = 0
TransInput.Position = UDim2.new(0.419999987, 0, 0.725000024, 0)
TransInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
TransInput.Font = Enum.Font.SourceSans
TransInput.FontSize = Enum.FontSize.Size14
TransInput.Text = "50"
TransInput.TextColor3 = Color3.new(1, 1, 1)
TransInput.TextSize = 14
TransInput.TextStrokeTransparency = 0

BlueInput.Name = "BlueInput"
BlueInput.Parent = CustomizeGui
BlueInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
BlueInput.BackgroundTransparency = 0.5
BlueInput.BorderSizePixel = 0
BlueInput.Position = UDim2.new(0.419999987, 0, 0.625, 0)
BlueInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
BlueInput.Font = Enum.Font.SourceSans
BlueInput.FontSize = Enum.FontSize.Size14
BlueInput.Text = "255"
BlueInput.TextColor3 = Color3.new(1, 1, 1)
BlueInput.TextSize = 14
BlueInput.TextStrokeTransparency = 0

Message.Name = "Message"
Message.Parent = CustomizeGui
Message.BackgroundColor3 = Color3.new(1, 1, 1)
Message.BackgroundTransparency = 1
Message.Position = UDim2.new(0, 0, 0.2500004, 0)
Message.Size = UDim2.new(1, 0, 0.100000006, 0)
Message.Font = Enum.Font.SourceSans
Message.FontSize = Enum.FontSize.Size18
Message.Text = "|| Inputs must be values ||"
Message.TextColor3 = Color3.new(1, 1, 1)
Message.TextScaled = true
Message.TextSize = 15
Message.TextStrokeTransparency = 0.75
Message.TextWrapped = true

local attun = Instance.new("Attachment", knife)
attun.Position = Vector3.new(0, 0.1, -1.75)
local atdos = Instance.new("Attachment", knife)
atdos.Position = Vector3.new(0, -0.1, 0.5)
local trail = Instance.new("Trail", knife)
trail.LightEmission = 0.5
trail.Attachment0 = attun
trail.Attachment1 = atdos
trail.Lifetime = 0.175
trail.MinLength = 0
trail.Enabled = false

function updatez()
	local rc = tonumber(RedInput.Text)
	local gc = tonumber(GreenInput.Text)
	local bc = tonumber(BlueInput.Text)
	local tcupd = tonumber(TransInput.Text)
	if rc == nil then
		rc = 0
	end
	if gc == nil then
		gc = 0
	end
	if bc == nil then
		bc = 0
	end
	if tcupd == nil then
		tcupd = 0
	end
	local tc = tcupd/100
	Color.BackgroundColor3 = Color3.fromRGB(rc,gc,bc)
	ClosestColor.Text = "Your color is closest to "..tostring(BrickColor.new(Color3.fromRGB(rc,gc,bc)))
	obj32.Color = Color3.fromRGB(rc,gc,bc)
	obj33.Color = Color3.fromRGB(rc,gc,bc)
	obj34.Color = Color3.fromRGB(rc,gc,bc)
	obj35.Color = Color3.fromRGB(rc,gc,bc)
	obj36.Color = Color3.fromRGB(rc,gc,bc)
	obj37.Color = Color3.fromRGB(rc,gc,bc)
	obj38.Color = Color3.fromRGB(rc,gc,bc)
	trail.Color = ColorSequence.new(Color3.fromRGB(rc, gc, bc))
	trail.Transparency = NumberSequence.new(tc)
	TrailTransparency.TextStrokeTransparency = tc
end

RedInput.Changed:connect(function(val)
	if val == "Text" and tonumber(RedInput.Text) then
		RedInput.Text = tostring(tonumber(RedInput.Text))
		if tonumber(RedInput.Text) > 255 then
			RedInput.Text = '255'
		end
	elseif val == "Text" then
		RedInput.Text = ""
	end
	updatez()
end)
GreenInput.Changed:connect(function(val)
	if val == "Text" and tonumber(GreenInput.Text) then
		GreenInput.Text = tostring(tonumber(GreenInput.Text))
		if tonumber(GreenInput.Text) > 255 then
			GreenInput.Text = '255'
		end
	elseif val == "Text" then
		GreenInput.Text = ""
	end
	updatez()
end)
BlueInput.Changed:connect(function(val)
	if val == "Text" and tonumber(BlueInput.Text) then
		BlueInput.Text = tostring(tonumber(BlueInput.Text))
		if tonumber(BlueInput.Text) > 255 then
			BlueInput.Text = '255'
		end
	elseif val == "Text" then
		BlueInput.Text = ""
	end
	updatez()
end)
TransInput.Changed:connect(function(val)
	if val == "Text" and tonumber(TransInput.Text) then
		TransInput.Text = tostring(tonumber(TransInput.Text))
		if tonumber(TransInput.Text) > 100 then
			TransInput.Text = '100'
		end
	elseif val == "Text" then
		TransInput.Text = ""
	end
	updatez()
end)

Close.MouseButton1Click:connect(function()
	if lerpz == false then
		lerpz = true
		if Close.Text ~= "+" then
			CustomizeGui:TweenPosition(UDim2.new(-0.45,0,0.5,0,Enum.EasingDirection.Out,Enum.EasingStyle.Quint,2))
			for i=1,10 do
				Close.TextTransparency = i/10
				Close.TextStrokeTransparency = i/10
				wait(0.01)
			end
			Close.Text = "+"
			for i=1,10 do
				Close.TextTransparency = (10-i+1)/10
				Close.TextStrokeTransparency = (10-i+1)/10
				wait(0.01)
			end
			lerpz = false
		else
			CustomizeGui:TweenPosition(UDim2.new(0,0,0.5,0,Enum.EasingDirection.Out,Enum.EasingStyle.Quint,2))
			for i=1,10 do
				Close.TextTransparency = i/10
				Close.TextStrokeTransparency = i/10
				wait(0.01)
			end
			Close.Text = "X"
			for i=1,10 do
				Close.TextTransparency = (10-i+1)/10
				Close.TextStrokeTransparency = (10-i+1)/10
				wait(0.01)
			end
			lerpz = false
		end
	end
end)

MusicOption.MouseButton1Click:connect(function()
	if canbackgroundmusic == true then
		canbackgroundmusic = false
		MusicOption.BackgroundColor3 = Color3.new(1, 0, 0)
	else
		canbackgroundmusic = true
		MusicOption.BackgroundColor3 = Color3.new(0, 1, 0)
	end
end)

ScreenOption.MouseButton1Click:connect(function()
	if cancolorfilter == true then
		cancolorfilter = false
		ScreenOption.BackgroundColor3 = Color3.new(1, 0, 0)
	else
		cancolorfilter = true
		ScreenOption.BackgroundColor3 = Color3.new(0, 1, 0)
	end
end)

function equip()
	local doit = coroutine.wrap(function()
	if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') then
		acting = true
		local arm = me["Right Arm"]
		local arm2 = me["Left Arm"]
		local tors = me.Torso
		local weld = Instance.new('Weld',arm)
		weld.Part0 = arm
		weld.Part1 = tors
		weld.C0 = CFrame.new(-1.5,0,0)
		local weld2 = Instance.new("Weld", arm2)
		weld2.Part0 = arm2
		weld2.Part1 = tors
		weld2.C0 = CFrame.new(1.5, 0, 0)
		wait(0.001)
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-0.2,0.2,-0.5)*CFrame.Angles(0,-3.1,0.9),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0.6, 0) * CFrame.Angles(0,0,0.5),i)
			wait(0.001)
		end
		wait(0.15)
		trail.Enabled = true
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-0.5,2,0)*CFrame.Angles(0,0,-1.55),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0, 0), i)
			wait(0.001)
		end
		trail.Enabled = false
		wait(0.2)
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-1.5,0,0),i)
			wait(0.001)
		end
		weld:Destroy()
		weld2:Remove()
		if tors ~= nil then
			rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
		end
	end
	acting = false
	end)
	doit()
end

function kysnigga()
	if kyssing == true then return end
	kyssing = true
	acting = true
	decearingTHING = math.random(1, 100)
	if decearingTHING == 4 then
		decearingEGG = Instance.new("Sound", me.Torso)
		decearingEGG.SoundId = "rbxassetid://138084557"
		decearingEGG.PlaybackSpeed = math.random(10, 12) / 10
		decearingEGG.TimePosition = 0.2
		decearingEGG:Play()
	end
	me.Humanoid.WalkSpeed = 0
	me.Humanoid.JumpPower = 0
	
	local rightarm = Instance.new("Weld", me.Torso)
	rightarm.Part0 = me.Torso
	rightarm.Part1 = me["Right Arm"]
	rightarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(1.5, 0, 0)
	
	local leftarm = Instance.new("Weld", me.Torso)
	leftarm.Part0 = me.Torso
	leftarm.Part1 = me["Left Arm"]
	leftarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-1.5, 0, 0)
	
	local tors = Instance.new("Weld", me.HumanoidRootPart)
	tors.Part0 = me.HumanoidRootPart
	tors.Part1 = me.Torso
	tors.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
	
	local rightleg = Instance.new("Weld", me.Torso)
	rightleg.Part0 = me.Torso
	rightleg.Part1 = me["Right Leg"]
	rightleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0.5, -2, 0)
	
	local leftleg = Instance.new("Weld", me.Torso)
	leftleg.Part0 = me.Torso
	leftleg.Part1 = me["Left Leg"]
	leftleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-0.5, -2, 0)
	
	for i = 0, 1, 0.03 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-10), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-80), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-80), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), i)
		wait()
	end
	for i = 0, 1, 0.03 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(5), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, 0.15) * CFrame.Angles(math.rad(-95), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, 0.15) * CFrame.Angles(math.rad(-95), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1, 0.3, -1.5) * CFrame.Angles(math.rad(90), 0, math.rad(-35)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1, 0.3, -1.5) * CFrame.Angles(math.rad(90), 0, math.rad(35)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.new(1.35, 0, 1) * CFrame.Angles(1.55, math.rad(-180), 1), i)
		wait()
	end
	local bleedzer = Instance.new('Part',me.Torso)
	bleedzer.CFrame = me.Torso.CFrame
	bleedzer.Size = Vector3.new(0.1,0.1,0.1)
	bleedzer.Transparency = 1
	bleedzer.CanCollide = false
	local weld = Instance.new('Weld',bleedzer)
	weld.Part0 = bleedzer
	weld.Part1 = me.Torso
	weld.C0= CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90),0,0)
	local woodpekker = coroutine.wrap(function()
		bleed(bleedzer)
	end)
	woodpekker()
	audio.SoundId = "rbxassetid://199977936"
	audio.PlaybackSpeed = 1.5
	audio:Play()
	audio2.SoundId = "rbxassetid://220834019"
	audio2.PlaybackSpeed = 1
	audio2.TimePosition = 0.1
	audio2:Play()
	for i = 0, 1, 0.1 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1, 0, 0) * CFrame.Angles(math.rad(70), 0, math.rad(-35)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1, 0, 0) * CFrame.Angles(math.rad(70), 0, math.rad(35)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.new(1.35, 0, 1) * CFrame.Angles(1.55, math.rad(-180), 1), i)
		wait()
	end
	wait(1)
	audio.SoundId = "rbxassetid://210943487"
	audio.TimePosition = 0.2
	audio.PlaybackSpeed = 0.75
	audio:Play()
	for i = 0, 1, 0.03 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1, 0.3, -1.5) * CFrame.Angles(math.rad(70), 0, math.rad(-35)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1, 0.3, -1.5) * CFrame.Angles(math.rad(70), 0, math.rad(35)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.new(1.35, 0, 1) * CFrame.Angles(1.55, math.rad(-180), 1), i)
		wait()
	end
	for i = 0, 1, 0.03 do
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 0, -0.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1.5, 0, -0.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0), i)
		wait()
	end
	wait(0.24)
	if me:FindFirstChildOfClass('Humanoid') then
		me:FindFirstChildOfClass('Humanoid').Health = 0
	end
	wait(0.01)
	killz(me,me.Torso.Name,nil,nil,true)
	
	tors:Remove()
	rightarm:Remove()
	rightleg:Remove()
	leftleg:Remove()
	leftarm:Remove()
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	torsojoint:Clone().Parent = me.HumanoidRootPart
	lefthipz:Clone().Parent = me.Torso
	righthipz:Clone().Parent = me.Torso
	me.Humanoid.JumpPower = 50
	me.Humanoid.WalkSpeed = 16
	acting = false
	canClick = true
	doing = false
	hit = false
	kyssing = false
	if decearingTHING == 4 then
		decearingEGG:Remove()
	end
end

function bleedout()
	local doit = coroutine.wrap(function()
		local targe = grabbed
		local num = 0
		while targe and targe:FindFirstChildOfClass('Humanoid') and targe:FindFirstChildOfClass('Humanoid').Health > 0 and num < 11 do
			if targe.Head:FindFirstChild('Died') then
				tone = math.random(6, 12) / 10
				targe.Head.Died.PlaybackSpeed = tone
				targe.Head.Died:Play()
			else
				local deathsound = Instance.new('Sound',targe.Head)
				deathsound.Name = "Died"
				deathsound.SoundId = 'rbxasset://sounds/uuhhh.mp3'
				deathsound.Volume = 0.65
				deathsound.EmitterSize = 5
				deathsound.MaxDistance = 150
				tone = math.random(5, 15) / 10
				targe.Head.Died.PlaybackSpeed = tone
				targe.Head.Died:Play()
			end
			targe:FindFirstChildOfClass('Humanoid').Health = targe:FindFirstChildOfClass('Humanoid').Health - 7
			num = num+1
			wait(0.325)
		end
		targe:FindFirstChildOfClass('Humanoid').Health = 0
		wait()
		killz(targe,'Head',nil,nil,false,true)
		wait(2)
		targe:Remove()
	end)
	doit()
end

function liedown()
	local doit = coroutine.wrap(function()
	local targe = grabbed
		wait(2)
		if targe and targe:FindFirstChildOfClass('Humanoid') then
			targe:FindFirstChildOfClass('Humanoid').PlatformStand = false
		end
	end)
	doit()
end

function grab()
	local doit = coroutine.wrap(function()
	acting = true
	me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed + 3
	local arm = me["Right Arm"]
	local tors = me.Torso
	local arm2 = me["Left Arm"]
	local humanroot = me.HumanoidRootPart
	local weld2 = Instance.new('Weld',arm)
	weld2.Part0 = arm
	weld2.Part1 = tors
	weld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
	local weld3 = Instance.new('Weld',arm2)
	weld3.Part0 = arm2
	weld3.Part1 = tors
	weld3.C0 = CFrame.new(1.5,0,-0.3) * CFrame.Angles(0.3,0.1,0)
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or humanroot == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.2,1.3,0.4)*CFrame.Angles(0.5,0,-1.2),i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.2,1.3,0)*CFrame.Angles(0,0,1.2),i)
		knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), -1.55) * CFrame.new(0, 0.95, 0)
		wait(0.01)
	end
	grabbing = true
	trail.Enabled = true
	for i = 0,1,0.10 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or humanroot == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-1.5, 0, -1.3), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.5, 0, 1.1), i)
		wait(0.01)
	end
	trail.Enabled = false
	wait(0.5)
	grabbing = false
	me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed - 3
	if grabbed == nil then
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0),i)
			knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0)
			wait(0.001)
		end
		weld2:Destroy()
		weld3:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
		acting = false
		canClick = true
	end
	end)
	doit()
end

function kill()
	paralyzed = false
	if grabbed.Torso:FindFirstChild("TargetWeld") == nil or grabbed:FindFirstChildOfClass('Humanoid').Health <= 0 then hardrelease() return end
	targetweld = grabbed.Torso.TargetWeld
	targetweld2 = nil
	local reee = grabbed:FindFirstChild("Left Arm")
	if reee and reee:FindFirstChild("Weld") then
		targetweld2 = reee.Weld
	end
	for i, v in pairs(grabbed:GetChildren()) do
		if v.Name == "Part" then
			v.CanCollide = true
		end
	end
	targetweld3pt = grabbed:FindFirstChild("Right Arm")
	local targetrightshoulder = rightshoulder
	local targetleftshoulder = leftshoulder
	local targetweld3 = Instance.new("Weld", targetweld3pt)
	targetweld3.Part0 = grabbed.Torso
	targetweld3.Part1 = targetweld3pt
	targetweld3.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(1.5, 0, 0)
	
	local doit = coroutine.wrap(function()
	local arm = me["Right Arm"]
	local tors = grabbed.Torso
	local arm2 = me["Left Arm"]
	if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
	doing = true
	local weld2 = arm:FindFirstChildOfClass('Weld')
	local weld3 = arm2:FindFirstChildOfClass('Weld')
	local humanroot = me.HumanoidRootPart
	
	for i = 0,1,0.1 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-1.9, 0, -1.4), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 0.5, -0.5)* CFrame.Angles(-1.5, 0.4, 1.1), i)
		wait(0.01)
	end
	
	audio:Stop()
	audio.SoundId = "rbxassetid://517040733"
	tone = math.random(1, 3)
	if tone == 1 then audio.PlaybackSpeed = 0.8 audio.TimePosition = 0.3 end
	if tone == 2 then audio.PlaybackSpeed = 1 audio.TimePosition = 0.1 end
	if tone == 3 then audio.PlaybackSpeed = 1.2 audio.TimePosition = 0.2 end
	audio:Play()
	
	local bleedpart = Instance.new("Part", grabbed)
	bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
	bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
	bleedpart.CanCollide = false
	bleedpart.Position = grabbed.Head.Position + Vector3.new(0, 1, 0)
	bleedpart.Transparency = 1
	
	local bleedpartweld = Instance.new("Weld", grabbed.Torso)
	bleedpartweld.Part0 = grabbed.Torso
	bleedpartweld.Part1 = bleedpart
	bleedpartweld.C0 = CFrame.Angles(-1, 0, -0.35) * CFrame.new(0, 1, 0.8)
	local coru=coroutine.wrap(function()
	bleed(bleedpart)
	end)
	coru()
	
	local slightthrow = Instance.new("BodyThrust", grabbed.Torso)
	slightthrow.Force = Vector3.new(0, 0, -2500)
	
	local slightthrow2 = Instance.new("BodyAngularVelocity", grabbed.Torso)
	slightthrow2.AngularVelocity = Vector3.new(0, -1000, 0)
	slightthrow2.MaxTorque = Vector3.new(1000, 1000, 1000)
	
	if grabbed:FindFirstChildOfClass('Humanoid') then
		grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = true
	end
	
	killz(grabbed,'Left Leg')
	killz(grabbed,'Left Arm')
	killz(grabbed,'Right Leg')
	killz(grabbed,'Right Arm')
	
	trail.Enabled = true
	
	for i = 0,1,0.2 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 1.7, -0.5)* CFrame.Angles(-0.25, 0, -1.4), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1.6, -0.5)* CFrame.Angles(-1.5, -1, 1.1), i)
		wait(0.01)
	end
	
	trail.Enabled = false
	
	bleedout()
	
	rightshoulderz:Clone().Parent = me.Torso
		leftshoulderz:Clone().Parent = me.Torso
	grabbed = nil
	
	if humanroot:FindFirstChild('Holder') then
		humanroot.Holder:Destroy()
	end
	
	wait(0.2)
	slightthrow:Remove()
	slightthrow2:Remove()
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5, 0, 0)* CFrame.Angles(0, 0, 0), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.5, 0, 0)* CFrame.Angles(0, 0, 0), i)
		knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0)
		wait(0.01)
	end
	
	weld2:Destroy()
	weld3:Destroy()
	targetweld = nil
	targetweld2 = nil
	targetweld3 = nil
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	acting = false
	canClick = true
	doing = false
	end)
	doit()
end

function finish()
	if finishing == true then return end
	finishing = true
	acting = true
	decearingTHING = math.random(1, 100)
	if decearingTHING == 4 then
		decearingEGG = Instance.new("Sound", me.Torso)
		decearingEGG.SoundId = "rbxassetid://138084557"
		decearingEGG.PlaybackSpeed = math.random(10, 12) / 10
		decearingEGG.TimePosition = 0.2
		decearingEGG:Play()
	end
	me.Humanoid.WalkSpeed = 0
	me.Humanoid.JumpPower = 0
	
	local rightarm = Instance.new("Weld", me.Torso)
	rightarm.Part0 = me.Torso
	rightarm.Part1 = me["Right Arm"]
	rightarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(1.5, 0, 0)
	
	local tors = Instance.new("Weld", me.HumanoidRootPart)
	tors.Part0 = me.HumanoidRootPart
	tors.Part1 = me.Torso
	tors.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
	
	local rightleg = Instance.new("Weld", me.Torso)
	rightleg.Part0 = me.Torso
	rightleg.Part1 = me["Right Leg"]
	rightleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0.5, -2, 0)
	
	local leftleg = Instance.new("Weld", me.Torso)
	leftleg.Part0 = me.Torso
	leftleg.Part1 = me["Left Leg"]
	leftleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-0.5, -2, 0)
	
	for i = 0, 1, 0.05 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -2, 0.2) * CFrame.Angles(math.rad(-15), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -2, 0.2) * CFrame.Angles(math.rad(-15), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 1.9, 0) * CFrame.Angles(math.rad(179), math.rad(179), 0), i)
		wait()
	end
	for i=1,finishnum do
		local num1 = 0.5
		local num2 = 0.5
		local num3 = 0.25
	if finishnum ~= 1 then
		num3 = 0
	end
	trail.Enabled = true
	for i = 0, 1, num1 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-60), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1.5, 0) * CFrame.Angles(math.rad(0), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -0.7, -1) * CFrame.Angles(math.rad(10), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 1.9, -1) * CFrame.Angles(math.rad(160), math.rad(150), 0), i)
		wait()
	end
	wait()
	for i = 0, 1, num2 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-20), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1.5, 0) * CFrame.Angles(math.rad(-30), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -0.7, -1) * CFrame.Angles(math.rad(-20), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 1.9, 0.2) * CFrame.Angles(math.rad(250), math.rad(180), 0), i)
		wait()
	end
	trail.Enabled = false
	wait(num3)
	end
	wait()
	for i = 0, 1, 0.05 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -2, 0) * CFrame.Angles(0, 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -2, 0) * CFrame.Angles(0, 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0), i)
		wait()
	end
	tors:Remove()
	rightarm:Remove()
	rightleg:Remove()
	leftleg:Remove()
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	torsojoint:Clone().Parent = me.HumanoidRootPart
	lefthipz:Clone().Parent = me.Torso
	righthipz:Clone().Parent = me.Torso
	me.Humanoid.JumpPower = 50
	me.Humanoid.WalkSpeed = 16
	acting = false
	canClick = true
	doing = false
	hit = false
	finishing = false
	if decearingTHING == 4 then
		decearingEGG:Remove()
	end
end

function throw()
	if grabbed.Torso:FindFirstChild("TargetWeld") == nil or grabbed:FindFirstChildOfClass('Humanoid').Health <= 0 then return end
	paralyzed = false
	targetweld = grabbed.Torso.TargetWeld
	local ree = grabbed:FindFirstChild("Left Arm")
	targetweld2 =nil
	if ree and ree:FindFirstChild("Weld") then
		targetweld2 = ree.Weld
	end
	
	for i, v in pairs(grabbed:GetChildren()) do
		if v.Name == "Part" then
			v.CanCollide = true
		end
	end
	
	
	local doit = coroutine.wrap(function()
	local arm = me["Right Arm"]
	local tors = grabbed.Torso
	local arm2 = me["Left Arm"]
	local targrightshoulder = rightshoulder
	
	local targleftshoulder = leftshoulder
	if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
	doing = true
	local weld2 = arm:FindFirstChildOfClass('Weld')
	local weld3 = arm2:FindFirstChildOfClass('Weld')
	local humanroot = me.HumanoidRootPart
	
	for i = 0,1,0.2 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 1.7, -0.5)* CFrame.Angles(-0.25, 1, -1.4), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1.6, -0.5)* CFrame.Angles(-1.5, -1, 1.1), i)
		targetweld.C0 = targetweld.C0:lerp(CFrame.new(0, 1.5, 0)*CFrame.Angles(0, 0, 0), i)
		if targetweld2 then
			targetweld2.C0 = targetweld2.C0:lerp(CFrame.new(-1.5, 0, 0)*CFrame.Angles(0, 0, 0), i)
		end
		wait(0.01)
	end
	
	audio:Stop()
	audio.SoundId = "rbxassetid://536642316"
	tone = math.random(1, 3)
	if tone == 1 then audio.PlaybackSpeed = 0.8 audio.TimePosition = 0.08 end
	if tone == 2 then audio.PlaybackSpeed = 1 audio.TimePosition = 0.1 end
	if tone == 3 then audio.PlaybackSpeed = 1.2 audio.TimePosition = 0.12 end
	audio:Play()
	
	local slightthrow = Instance.new("BodyVelocity", grabbed.Torso)
	slightthrow.Velocity = Vector3.new(0,20,0)+(me.Torso.CFrame.lookVector*20)
	slightthrow.P = 5000
	slightthrow.MaxForce = Vector3.new(9000001,9000001,9000001)
	local point = grabbed.Torso.Position
	local aaaaaa = grabbed
	liedown()
	
	rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
	grabbed = nil
	
	if humanroot:FindFirstChild('Holder') then
		humanroot.Holder:Destroy()
	end
	local coru = coroutine.wrap(function()
		while aaaaaa and aaaaaa:FindFirstChild('Torso') and (aaaaaa.Torso.Position-point).magnitude < 5 do wait(0.001) end
		if aaaaaa:FindFirstChildOfClass('Humanoid') then
			aaaaaa:FindFirstChildOfClass('Humanoid').Name = "Humanoid"
			aaaaaa:FindFirstChildOfClass('Humanoid').JumpPower = 50
			aaaaaa:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
		end
		slightthrow:Remove()
	end)
	coru()
	
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0),i)
		wait(0.01)
	end
	weld2:Destroy()
	weld3:Destroy()
	targetweld:Remove()
	if targetweld2 then
		targetweld2:Remove()
	end
	if rightshoulder then
	rightshoulder:Clone().Parent = tors
	end
	if leftshoulder then
	leftshoulder:Clone().Parent = tors
	end
	headweld:Clone().Parent = tors
	rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
	acting = false
	canClick = true
	doing = false
	end)
	doit()
end

cfn,ang,mr,int=CFrame.new,CFrame.Angles,math.rad,Instance.new
bc=BrickColor.new
local minimumsize = Vector3.new(0.7,0.7,0.7) 
local surface_between_splitted_parts = 'SmoothNoOutlines'
local fragmentable = workspace
local list = {}
local brickcount = 0
local storage = {}
local fillup = 1000
local maximumstorage = 2000 
local storage_position = Vector3.new(0,0,5000) 
local stored_partsize = Vector3.new(1,1,1) 
local parts_created_per_frame = 5 

local minimumsize = Vector3.new(0.7,0.7,0.7) 
local surface_between_splitted_parts = 'SmoothNoOutlines'
local fragmentable = workspace
local list = {}
local brickcount = 0
local storage = {}
local fillup = 1000
local maximumstorage = 2000
local storage_position = Vector3.new(0,0,5000) 
local stored_partsize = Vector3.new(1,1,1)
local parts_created_per_frame = 5 


function fragmentate(cframe,size,color,explosion_position,explosion_blastradius,backsurface,bottomsurface,frontsurface,leftsurface,rightsurface,topsurface,transparency,reflectance,material)
	local xi = size.X >= minimumsize.X*(1+explosion_blastradius/16) and 2 or 1 
	local yi = size.Y >= minimumsize.Y*(1+explosion_blastradius/16) and 2 or 1
	local zi = size.Z >= minimumsize.Z*(1+explosion_blastradius/16) and 2 or 1
	if xi == 1 and yi == 1 and zi == 1 or (cframe.p-explosion_position).magnitude > size.magnitude/2 + explosion_blastradius then 
		if xi == 1 and yi == 1 and zi == 1 then return end 
		if #storage > 0 then
			local p = storage[1]
			p.BrickColor = color
			p.Size = size
			p.Anchored = false
			p.BackSurface = backsurface
			p.BottomSurface = bottomsurface
			p.FrontSurface = frontsurface
			p.LeftSurface = leftsurface
			p.RightSurface = rightsurface
			p.TopSurface = topsurface
			p.Transparency = transparency
			p.CFrame = cframe
			p.Reflectance = reflectance
			p.Material = material
			game:GetService('Debris'):AddItem(p,30)
			p:BreakJoints()
			table.remove(storage,1)
		else
			local p = Instance.new("Part",fragmentable)
			p.BrickColor = color
			p.FormFactor = "Custom"
			p.Size = size
			p.BackSurface = backsurface
			p.BottomSurface = bottomsurface
			p.FrontSurface = frontsurface
			p.LeftSurface = leftsurface
			p.RightSurface = rightsurface
			p.TopSurface = topsurface
			p.Transparency = transparency
			p.Material = material
		    if p.Transparency>0.285 then
			    p.Anchored = false
			else
			    p.Anchored=false
			    p.Material='Wood'
				game:GetService('Debris'):AddItem(p,10)
			end
			p.CFrame = cframe
			p.Reflectance = reflectance
			p:BreakJoints()
		end
		return 
	end
	local mody = math.random(-125,125)/1000
	for y = 1,yi do
		if math.random()> 0.5 then
			local modx = math.random(-125,125)/1000
			for x = 1,xi do
				local modz = math.random(-125,125)/1000
				for z = 1,zi do --offset = x/xi-0.75+modx)
					fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)),
						Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
						zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z or mustardfoot_was_here),color,explosion_position,explosion_blastradius,
						z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
						z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
						y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance,material) 
				end
				
			end
		else
			local modz = math.random(-125,125)/1000
			for z = 1,zi do
				local modx = math.random(-125,125)/1000
				for x = 1,xi do
					fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)),
						Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
						zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z),color,explosion_position,explosion_blastradius,
						z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
						z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
						y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance,material)
				end
			end
		end
	end				
end

function start_fragmentation(position,radius,nuh)
	local search = Region3.new(position-Vector3.new(radius,radius,radius)*1.1,position+Vector3.new(radius,radius,radius)*1.1)
	repeat
	local finish = false
	local parts = workspace:FindPartsInRegion3WithIgnoreList(search,list,100)
	for i = 1,#parts do
		table.insert(list,1,parts[i])
	end
	finish = true
	until #parts < 100 and finish
	local t = tick()
	for i = 1,#list do
		local p = list[i]
		if p:IsA('UnionOperation') == false and p:IsA('CornerWedgePart') == false and p:IsA('TrussPart') == false and p:IsA('WedgePart') == false and p.Parent and p.Parent ~= obj1 and p.Parent.Name ~= "Projectile" and p:IsDescendantOf(fragmentable) and p:GetMass()<50000 and p.Transparency>0.285 and p.Name~='Base' and p.Parent:FindFirstChildOfClass('Humanoid') == nil and p.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil and p:IsDescendantOf(me)==false then
			fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance,p.Material)
			if #storage < maximumstorage and p.Shape == "Block" then 
				p.Anchored = false
				p.FormFactor = "Custom"
				p.Size = stored_partsize
				p.Position = storage_position
				table.insert(storage,1,p)
			else 
				p:Destroy()
			end
	    end
		if nuh == false and p.Parent and p.Parent ~= obj1 and p.Parent.Name ~= "Projectile" and p:IsDescendantOf(fragmentable) and p:GetMass()<53000 and p.Transparency<0.05 and p.Name~='Base' and tostring(p.Material)=='Enum.Material.Wood' and p:IsDescendantOf(me)==false then
			fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance,p.Material)
			if #storage < maximumstorage and p.Shape == "Block" then
				p.Anchored = false
				p.Material='Wood'
				p.FormFactor = "Custom"
				p.Size = stored_partsize
				p.Position = storage_position
				table.insert(storage,1,p)
			else 
				p:Destroy()
			end
		end
	end	
	list = {}
end


function fling()
local doit = coroutine.wrap(function()
if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') and me:FindFirstChild('HumanoidRootPart') then
	acting = true
	for i=1,finishnum do
	local weld2 = Instance.new('Weld',me["Right Arm"])
	weld2.Part0 = me["Right Arm"]
	weld2.Part1 = me["Torso"]
	weld2.C0 = CFrame.new(-1.5,0,0)
	if finishnum == 1 then
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0),i)
		wait(0.01)	
	end
	end
	audio.SoundId = "rbxassetid://166083610"
	audio.PlaybackSpeed = 1
	audio.TimePosition = 0.1
	audio:Play()
	if finishnum == 1 then
	for i = 0,1,0.5 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0),i)
		wait(0.001)	
	end
	end
	weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
	local knofe = obj1:Clone()
	for i, v in pairs(obj1:GetChildren()) do
		if v:IsA('BasePart') then
		v.Transparency = 1
		end
	end
	knofe.Parent = workspace
	knofe.Name = "Projectile"
	knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
	knofe:FindFirstChild("Trail", true).Enabled = true
	local heck = Instance.new('BodyVelocity',knofe.Grab)
	heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*120
	local coru = coroutine.wrap(function()
		wait(0.45)
		if heck then
			heck:Destroy()
		end
	end)
	coru()
	local able = true
	knofe["big ass knife"].Touched:connect(function(hit)
		if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Transparency < 1 and knofe.Grab.CanCollide == false and hit.Parent ~= me and hit.Parent.Parent ~= me then
			local thing = hit.Parent:FindFirstChildOfClass('Humanoid')
			local ree = hit.Parent
			if thing == nil then
				ree = hit.Parent.Parent
			end
			if ree:FindFirstChildOfClass('Humanoid').Health > 0 then
				knofe:FindFirstChild("Trail", true).Enabled = false
				game:GetService('Debris'):AddItem(knofe,5)
				tone = math.random(1, 3)
				local sound = Instance.new('Sound',knofe.Grab)
				if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
				if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
				if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
				sound.PlaybackSpeed = 1
				sound:Play()
				for i, v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					v.Anchored = true
					end
				end
				hit.Anchored = true
				if ree:FindFirstChildOfClass('Humanoid') and hit.Name == "Torso" or hit.Name == "Head" then
					ree:FindFirstChildOfClass('Humanoid').Health = 0
				end
				wait()
				killz(ree,hit.Name,knofe)
			else
				knofe:FindFirstChild("Trail", true).Enabled = false
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				game:GetService('Debris'):AddItem(knofe,5)
				tone = math.random(1, 3)
				local sound = Instance.new('Sound',knofe.Grab)
				if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
				if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
				if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
				sound.PlaybackSpeed = 1
				sound:Play()
				for i, v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.Anchored = false
					end
				end
				hit.Anchored = true
				wait(0.001)
				hit.Anchored = false
				for i, v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.Anchored = false
					end
				end
				if knofe then
					local coru = coroutine.wrap(function()
						if hit then
							local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
						end
					end)
					coru()
				end
			end
		elseif hit.Parent and hit.Parent ~= me and hit.Parent.Parent ~= me and hit.CanCollide and knofe.Grab.CanCollide == false then
			if hit.Transparency and (hit.Transparency<=0.285 or hit:GetMass()<=3000) then
				knofe:FindFirstChild("Trail", true).Enabled = false
				local sound = Instance.new('Sound',knofe.Grab)
				sound.SoundId = 'rbxassetid://267585646'
				sound:Play()
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
						v.Anchored = true
					end
				end
				wait()
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
							for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
						v.Anchored = false
					end
				end
				game:GetService('Debris'):AddItem(knofe,5)
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					end
				end
			end
			if hit.Parent and hit.Transparency>0.285 and able == true and hit:GetMass()<3000 and hit.Parent:FindFirstChildOfClass('Humanoid') == nil and (hit.Parent.Parent == nil or hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil) then
				knofe:FindFirstChild("Trail", true).Enabled = false
				able = false
				local sound = Instance.new('Sound',knofe.Grab)
				sound.SoundId = 'rbxassetid://144884907'
				sound:Play()
				local coru = coroutine.wrap(function()
					start_fragmentation(knofe["big ass knife"].Position,1.25,knofe)
				end)
				coru()
			end
		end
	end)
	if finishnum == 1 then
	for i= 0,1,0.1 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		wait(0.001)
	end
	else
		for i= 0,1,0.5 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		wait(0.001)
	end
	end
	for i,v in pairs(obj1:GetChildren()) do
		if v:IsA('BasePart') then
		v.Transparency = 0
		end
	end
	weld2:Destroy()
	rightshoulderz:Clone().Parent = me.Torso
	end
	acting = false
	canClick = true
end
end)
doit()
end

function instasplode()
	local coru = coroutine.wrap(function()
		acting = true
		for i=1,1 do
		local weld2 = Instance.new('Weld',me["Right Arm"])
		weld2.Part0 = me["Right Arm"]
		weld2.Part1 = me["Torso"]
		weld2.C0 = CFrame.new(-1.5,0,0)
		if finishnum == 1 then
		for i = 0,1,0.05 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0),i)
			wait(0.01)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0)
		audio.SoundId = "rbxassetid://166083610"
		audio.PlaybackSpeed = 1
		audio.TimePosition = 0.1
		audio:Play()
		if finishnum == 1 then
		for i = 0,1,0.5 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0),i)
			wait(0.001)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
		local knofe = obj1:Clone()
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 1
			end
		end
		knofe.Parent = workspace
		knofe.Name = "Projectile"
		knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
		knofe:FindFirstChild("Trail", true).Enabled = false
		fireofjesUS = Instance.new("Fire", knofe.Grab)
		local heck = Instance.new('BodyVelocity',knofe.Grab)
		heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*120
		local coru = coroutine.wrap(function()
			wait(0.45)
			if heck then
				heck:Destroy()
			end
		end)
		coru()
		knofe["big ass knife"].Touched:connect(function(hit)
			if hit.Parent ~= me and hit.Parent.Parent ~= me and hit.Transparency < 1 and knofe.Grab.CanCollide == false then
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					end
				end
				local hum = hit.Parent:FindFirstChildOfClass('Humanoid')
				if hum == nil then
					hum = hit.Parent.Parent:FindFirstChildOfClass('Humanoid')
				end
				if knofe then
					local coru = coroutine.wrap(function()
						if hit then
							local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
						end
					end)
					coru()
				end
					local sound = Instance.new('Sound',knofe.Grab)
					sound.Name = "BOOM"
					sound.EmitterSize = 25
					sound.SoundId = 'rbxassetid://476477344'
					sound.Volume = 0.5
					sound:Play()
					local exppart = Instance.new("Part", game.Workspace)
					exppart.Size = Vector3.new(0.2, 0.2, 0.2)
					exppart.Anchored = true
					exppart.CanCollide = false
					exppart.CFrame = CFrame.new(knofe.Grab.CFrame.p)
					exppart.Transparency = 1
					local expaccent = Instance.new("ParticleEmitter", exppart)
					expaccent.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))})
					expaccent.LightEmission = 0.2
					expaccent.LightInfluence = 0.3
					expaccent.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
					expaccent.Acceleration = Vector3.new(0, 30, 0)
					expaccent.Drag = 15
					expaccent.LockedToPart = false
					expaccent.Lifetime = NumberRange.new(0.5, 1.5)
					expaccent.Rate = 2000
					expaccent.Speed = NumberRange.new(0,0)
					expaccent.SpreadAngle = Vector2.new(360, 360)
					expaccent:Clone().Parent = exppart
					expaccent:Clone().Parent = exppart
					local exp = Instance.new('Explosion',game.Workspace)
					exp.Position = knofe["big ass knife"].Position
					exp.ExplosionType = Enum.ExplosionType.NoCraters
					exp.BlastRadius = 5
					exp.Visible = false
					exp.BlastPressure = 0
					exp.DestroyJointRadiusPercent = 0
					exp.Hit:connect(function(hit)
						if hit.Parent and hit.Parent ~= me and hit.Parent.Name ~= "bitch ass knife" then
							wait(0.001)
							tgt = hit
							local coru=coroutine.wrap(function(tgtt)
								local fireofgods = Instance.new("Fire", tgtt)
								fireofgods.Size = 0
								fireofgods.Heat = 0
								local fireofgodsaccent = expaccent:Clone()
								fireofgodsaccent.Parent = hit
								fireofgodsaccent.Rate = 0
								fireofgodsaccent.Speed = NumberRange.new(5, 50)
								fireofgodsaccent.SpreadAngle = Vector2.new(45, 45)
								fireofgodsaccent.Acceleration = Vector3.new(0, 20, 0)
								
								while fireofgods.Size < 10 do
									fireofgods.Size = fireofgods.Size + 0.1
									fireofgods.Heat = fireofgods.Heat + 0.1
									fireofgodsaccent.Rate = fireofgodsaccent.Rate + 1
									wait()
								end
								if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') == nil and hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil then
									hit:BreakJoints()
								elseif hit.Parent and hit.Parent:IsA('Accessory') then
									for i,v in pairs(hit:GetChildren()) do
										if v:IsA('SpecialMesh') then
											v.TextureId = ""
										end
									end
								end
								hit.BrickColor = BrickColor.new("Black")
								for i,v in pairs(hit.Parent:GetChildren()) do
									if v:IsA('Shirt') or v:IsA('Pants') then
										v:Destroy()
									end
								end
								
								while fireofgods.Size > 5 do
									fireofgods.Size = fireofgods.Size - 0.1
									fireofgods.Heat = fireofgods.Heat - 0.1
									wait()
								end
								fireofgods:Destroy()
								if hit.Parent then
									if hit.Parent:FindFirstChildOfClass('Humanoid') == nil and hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil then
										local p = hit
										fragmentate(p.CFrame,p.Size,p.BrickColor,p.Position,0.01,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance,p.Material)
										hit:Remove()
									elseif hit.Parent:FindFirstChildOfClass('Humanoid') ~= nil then
										print(hit.Name)
										if hit.Name == "Torso" or hit.Name == "Head" then
											print('ohhh YAAAA')
											hit.Parent:FindFirstChildOfClass('Humanoid').Health = 0
										end
										wait()
										killz(hit.Parent,hit.Name,nil,nil,false,false,true)
									end
								end
							end)
							coru(tgt)
						end
					end)
					local explosionaccenttimeout = coroutine.wrap(function()
						wait(0.2)
						for i, exploodn in pairs(exppart:GetChildren()) do
							exploodn.Enabled = false
						end
						wait(2)
						for i, exploodn in pairs(exppart:GetChildren()) do
							exploodn:Remove()
						end
					end)
					explosionaccenttimeout()
					for i,v in pairs(knofe:GetChildren()) do
						if v:IsA('BasePart') then
						v.Transparency = 1
						end
					end
					exp.AncestryChanged:connect(function() knofe:Destroy() end)
				coru()
			end
		end)
		if finishnum == 1 then
		for i= 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
			wait(0.001)
		end
		else
			wait(0.1)
		end
		weld2.C0 = CFrame.new(-1.5,0,0)
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 0
			end
		end
		weld2:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
		end
		acting = false
		canClick = true
	end)
	coru()
end

function fireworkit()
	local coru = coroutine.wrap(function()
		acting = true
		local ree = 1
		if finishnum > 1 then
			ree = 3
		end
		for i=1,ree do
		local weld2 = Instance.new('Weld',me["Right Arm"])
		weld2.Part0 = me["Right Arm"]
		weld2.Part1 = me["Torso"]
		weld2.C0 = CFrame.new(-1.5,0,0)
		weld2.C0 = CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0)
		audio.SoundId = "rbxassetid://166083610"
		audio.PlaybackSpeed = 1
		audio.TimePosition = 0.1
		audio:Play()
		weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
		local knofe = obj1:Clone()
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 1
			end
		end
		local sound = Instance.new('Sound',knofe.Grab)
		sound.Volume = 0.25
		sound.EmitterSize = 200
		sound.MaxDistance = 300
		sound.SoundId = 'rbxassetid://551051176'
		sound:Play()
		knofe.Parent = workspace
		knofe.Name = "Projectile"
		knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
		local partic = Instance.new('ParticleEmitter',knofe.Grab)
		partic.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.4,Color3.fromRGB(255,125,0)),ColorSequenceKeypoint.new(0.8,Color3.new(1,1,0)),ColorSequenceKeypoint.new(1,Color3.new(1,1,1))})
		partic.LightEmission = 0.5
		partic.LightInfluence = 0
		partic.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(1,0.15)})
		partic.Rotation = NumberRange.new(0,90)
		partic.SpreadAngle = Vector2.new(5,5)
		partic.Speed = NumberRange.new(20)
		partic.Texture = 'rbxassetid://603193846'
		partic.EmissionDirection = Enum.NormalId.Left
		partic.Lifetime = NumberRange.new(0.5,1)
		partic.Rate = 100
		local heck = Instance.new('BodyVelocity',knofe.Grab)
		heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*240
		local coru=coroutine.wrap(function()
		wait(1.2)
			sound:Destroy()
			local sound2 = Instance.new('Sound',workspace)
			sound2.SoundId = 'rbxassetid://138080762'
			sound2:Play()
			if heck then
				heck:Destroy()
			end
			for i,v in pairs(knofe:GetChildren()) do
				v.Anchored = true
			end
			partic.Enabled = false
			local colorscheme = math.random(1,4)
			--1 - red & orange
			--2 - blue & pink
			--3 - green & purple
			--4 - blue, red, white
			local colar1 = Color3.fromRGB(255,0,0)
			local colar2 = Color3.fromRGB(255,125,0)
			local colar3 = Color3.fromRGB(255,255,255)
			if colorscheme == 2 then
				colar1 = Color3.fromRGB(0,132,255)
				colar2 = Color3.fromRGB(243,105,255)
			elseif colorscheme == 3 then
				colar1 = Color3.fromRGB(76,255,0)
				colar2 = Color3.fromRGB(128,0,255)
			elseif colorscheme == 4 then
				colar2 = Color3.fromRGB(0,132,255)
			end
			local partic2 = Instance.new('ParticleEmitter',knofe.Grab)
			partic2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar1),ColorSequenceKeypoint.new(1,colar1)})
			partic2.LightEmission = 0.5
			partic2.LightInfluence = 0
			partic2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(1,0.1)})
			partic2.Rotation = NumberRange.new(0,90)
			partic2.SpreadAngle = Vector2.new(180,180)
			partic2.Speed = NumberRange.new(20)
			partic2.Texture = 'rbxassetid://603193846'
			partic2.EmissionDirection = Enum.NormalId.Right
			partic2.Lifetime = NumberRange.new(2,2.5)
			partic2.Rate = 1000
			partic2.Drag = 1
			local partic3 = partic2:Clone()
			partic3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar2),ColorSequenceKeypoint.new(1,colar2)})
			partic3.Parent = knofe.Grab
			if colorscheme == 4 then
				local partic4 = partic2:Clone()
				partic4.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar3),ColorSequenceKeypoint.new(1,colar3)})
				partic4.Parent = knofe.Grab
			end
			wait(1)
			for i,v in pairs(knofe.Grab:GetChildren()) do
				if v:IsA('ParticleEmitter') then
					v.Enabled = false
				end
			end
			sound:Destroy()
			wait(2)
			knofe:Destroy()
		end)
		coru()
		wait(0.1)
		weld2.C0 = CFrame.new(-1.5,0,0)
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 0
			end
		end
		weld2:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
		end
		acting = false
		canClick = true
	end)
	coru()
end

function paralyze()
	local coru = coroutine.wrap(function()
		if paralyzed == true then return end
		paralyzed = true
		local arm = me["Right Arm"]
		local tors = grabbed.Torso
		local arm2 = me["Left Arm"]
		if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
		doing = true
		local weld2 = arm:FindFirstChildOfClass('Weld')
		local weld3 = arm2:FindFirstChildOfClass('Weld')
		local humanroot = me.HumanoidRootPart
		for i = 0,1,0.075 do
			weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-2, 0, -1.5), i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.4, 0, 1.1), i)
			wait(0.01)
		end
		for i = 0,1,0.30 do
			weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-0.75, 0, -1.75), i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.4, 0, 1.1), i)
			wait(0.01)
		end
		killz(grabbed,'Left Leg')
		killz(grabbed,'Left Arm')
		killz(grabbed,'Right Leg')
		killz(grabbed,'Right Arm')
		
		for i, v in pairs(grabbed:GetChildren()) do
			if v.Name == "Part" then
				v.CanCollide = false
			end
		end
		
		audio:Stop()
		audio.SoundId = "rbxassetid://2801263"
		tone = math.random(1, 3)
		if tone == 1 then audio.PlaybackSpeed = 0.8 audio.TimePosition = 0 end
		if tone == 2 then audio.PlaybackSpeed = 1 audio.TimePosition = 0 end
		if tone == 3 then audio.PlaybackSpeed = 1.2 audio.TimePosition = 0 end
		audio:Play()
		
		local bleedpart = Instance.new("Part", grabbed)
		bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
		bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
		bleedpart.CanCollide = false
		bleedpart.Position = grabbed.Head.Position + Vector3.new(0, 1, 0)
		bleedpart.Transparency = 1
		
		local bleedpartweld = Instance.new("Weld", grabbed.Torso)
		bleedpartweld.Part0 = grabbed.Torso
		bleedpartweld.Part1 = bleedpart
		bleedpartweld.C0 = CFrame.Angles(-1, 0, -0.35) * CFrame.new(0, 1, 0.8)
		local cuntruu=coroutine.wrap(function()
			bleed(bleedpart)
		end)
		local thicc = coroutine.wrap(function()
			wait(3)
			bleedpart:Remove()
		end)
		cuntruu()
		thicc()
	
		for i = 0,1,0.075 do
			weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-1.5, 0, -1.3), i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.5, 0, 1.1), i)
			wait(0.01)
		end
		acting = true
		canClick = true
		doing = false
	end)
	coru()
end

function explode()
	local coru = coroutine.wrap(function()
		acting = true
		for i=1,finishnum do
		local weld2 = Instance.new('Weld',me["Right Arm"])
		weld2.Part0 = me["Right Arm"]
		weld2.Part1 = me["Torso"]
		weld2.C0 = CFrame.new(-1.5,0,0)
		if finishnum == 1 then
		for i = 0,1,0.05 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0),i)
			wait(0.01)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0)
		audio.SoundId = "rbxassetid://166083610"
		audio.PlaybackSpeed = 1
		audio.TimePosition = 0.1
		audio:Play()
		if finishnum == 1 then
		for i = 0,1,0.5 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0),i)
			wait(0.001)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
		local knofe = obj1:Clone()
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 1
			end
		end
		knofe.Parent = workspace
		knofe.Name = "Projectile"
		knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
		knofe:FindFirstChild("Trail", true).Enabled = false
		local heck = Instance.new('BodyVelocity',knofe.Grab)
		heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*120
		local coru = coroutine.wrap(function()
			wait(0.45)
			if heck then
				heck:Destroy()
			end
		end)
		coru()
		knofe["big ass knife"].Touched:connect(function(hit)
			if hit.Parent ~= me and hit.Parent.Parent ~= me and hit.Transparency < 1 and knofe.Grab.CanCollide == false then
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					end
				end
				local hum = hit.Parent:FindFirstChildOfClass('Humanoid')
				if hum == nil then
					hum = hit.Parent.Parent:FindFirstChildOfClass('Humanoid')
				end
				if hum then
					tone = math.random(1, 3)
					local sound = Instance.new('Sound',knofe.Grab)
					if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
					if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
					if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
					sound.PlaybackSpeed = 1
					sound:Play()
				else
					local sound = Instance.new('Sound',knofe.Grab)
					sound.SoundId = 'rbxassetid://267585646'
					sound:Play()
				end
				if knofe then
					local coru = coroutine.wrap(function()
						if hit then
							local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
						end
					end)
					coru()
				end
				local coru = coroutine.wrap(function()
					for i=1,15,0.7 do
						local sound = Instance.new('Sound',knofe.Grab)
						if knofe then
							if knofe.serration.BrickColor == BrickColor.new('Really red') then
								for i, v in pairs(knofe:GetChildren()) do
									if v.Name == "big ass knife" or v.Name == "serration" or v.Name == "knifetip1" or v.Name == "fricc" then
										v.BrickColor = BrickColor.new('Lily white')
										v.Material = Enum.Material.SmoothPlastic
									end
								end
							else
								for i,v in pairs(knofe:GetChildren()) do
									if v.Name == "big ass knife" or v.Name == "serration" or v.Name == "knifetip1" or v.Name == "fricc" then
										v.BrickColor = BrickColor.new('Really red')
										v.Material = Enum.Material.Neon
										sound.SoundId = 'rbxassetid://300473653'
										sound.Volume = 0.75
										sound.TimePosition = 0.05
										sound.EmitterSize = 25
										sound.PlaybackSpeed = 1
										sound:Play()
									end
								end
							end
							wait(1/i)
							sound:Destroy()
						end
					end
					local sound = Instance.new('Sound',knofe.Grab)
					sound.Name = "BOOM"
					sound.EmitterSize = 25
					sound.SoundId = 'rbxassetid://12222084'
					sound.TimePosition = 0.1
					sound.Volume = 0.5
					sound:Play()
					local exppart = Instance.new("Part", game.Workspace)
					exppart.Size = Vector3.new(0.2, 0.2, 0.2)
					exppart.Anchored = true
					exppart.CanCollide = false
					exppart.CFrame = CFrame.new(knofe.Grab.CFrame.p)
					exppart.Transparency = 1
					local expaccent = Instance.new("ParticleEmitter", exppart)
					expaccent.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))})
					expaccent.LightEmission = 0.2
					expaccent.LightInfluence = 0.3
					expaccent.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
					expaccent.Acceleration = Vector3.new(0, -8, 0)
					expaccent.Drag = 15
					expaccent.LockedToPart = true
					expaccent.Lifetime = NumberRange.new(0.5, 1.5)
					expaccent.Rate = 2000
					expaccent.Speed = NumberRange.new(10, 150)
					expaccent.SpreadAngle = Vector2.new(360, 360)
					
					local exp = Instance.new('Explosion',game.Workspace)
					exp.Position = knofe["big ass knife"].Position
					exp.ExplosionType = Enum.ExplosionType.NoCraters
					exp.BlastRadius = 10
					exp.BlastPressure = 100000
					exp.DestroyJointRadiusPercent = 1
					exp.Hit:connect(function(hit)
						if hit.Parent and hit.Parent ~= me and hit.Parent:FindFirstChildOfClass('Humanoid') then
							if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Name == "Torso" or hit.Name == "Head" then
								hit.Parent:FindFirstChildOfClass('Humanoid').Health = 0
							end
							wait(0.001)
							local coru=coroutine.wrap(function()
							killz(hit.Parent,'Head',knofe,exp)
							end)
							coru()
						elseif hit.Parent and hit.Parent ~= workspace and hit.Parent ~= me then
							if hit.Parent.Name ~= "Projectile" then
								hit.Parent:BreakJoints()
							end
						elseif hit.Parent and hit.Parent ~= me then
							hit:BreakJoints()
						end
					end)
					local explosionaccenttimeout = coroutine.wrap(function()
						wait(0.2)
						expaccent.Enabled = false
						wait(2)
						exppart:Remove()
					end)
					explosionaccenttimeout()
					for i,v in pairs(knofe:GetChildren()) do
						if v:IsA('BasePart') then
						v.Transparency = 1
						end
					end
					exp.AncestryChanged:connect(function() knofe:Destroy() end)
				end)
				coru()
			end
		end)
		if finishnum == 1 then
		for i= 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
			wait(0.001)
		end
		else
			wait(0.1)
		end
		weld2.C0 = CFrame.new(-1.5,0,0)
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 0
			end
		end
		weld2:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
		end
		acting = false
		canClick = true
	end)
	coru()
end

function release()
	if grabbed.Torso:FindFirstChild("TargetWeld") == nil or grabbed:FindFirstChildOfClass('Humanoid').Health <= 0 then return end
	targetweld = grabbed.Torso.TargetWeld
	local ree= grabbed:FindFirstChild("Left Arm")
	targetweld2 = nil
	if ree and ree:FindFirstChild("Weld") then
		targetweld2 = ree.Weld
	end
	for i, v in pairs(grabbed:GetChildren()) do
		if v.Name == "Part" then
			v.CanCollide = true
		end
	end
	paralyzed = false
	local doit = coroutine.wrap(function()
	local arm = me["Right Arm"]
	local tors = grabbed.Torso
	local arm2 = me["Left Arm"]
	if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
	doing = true
	local weld2 = arm:FindFirstChildOfClass('Weld')
	local weld3 = arm2:FindFirstChildOfClass('Weld')
	local humanroot = me.HumanoidRootPart
	
	if grabbed:FindFirstChildOfClass('Humanoid') then
		grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	if grabbed:FindFirstChildOfClass('Humanoid') then
		grabbed:FindFirstChildOfClass('Humanoid').Name = "Humanoid"
		grabbed:FindFirstChildOfClass('Humanoid').JumpPower = 50
		grabbed:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
		grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	grabbed = nil
	
	if humanroot:FindFirstChild('Holder') then
		humanroot.Holder:Destroy()
	end
	
	for i = 0,1,0.1 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0),i)
		targetweld.C0 = targetweld.C0:lerp(CFrame.new(0, 1.5, 0)*CFrame.Angles(0, 0, 0), i)
		if targetweld2 then
			targetweld2.C0 = targetweld2.C0:lerp(CFrame.new(-1.5, 0, 0)*CFrame.Angles(0, 0, 0), i)
		end
		wait(0.01)
	end
	
	knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0.2)
	weld2:Destroy()
	weld3:Destroy()
	targetweld:Remove()
	if targetweld2 then
		targetweld2:Remove()
	end
	if rightshoulder then
	rightshoulder:Clone().Parent = tors
	end
	if leftshoulder then
	leftshoulder:Clone().Parent = tors
	end
	headweld:Clone().Parent = tors
	rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
	acting = false
	canClick = true
	doing = false
	end)
	doit()
end

function stabwithpassion()
	local doit = coroutine.wrap(function()
		if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') and me:FindFirstChild('HumanoidRootPart') and me:FindFirstChild('Left Arm') then
			acting = true
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed + 10
			local arm = me["Right Arm"]
			local tors = me.Torso
			local arm2 = me["Left Arm"]
			local humanroot = me.HumanoidRootPart
			local weld = Instance.new('Weld',tors)
			weld.Part0 = tors
			weld.Part1 = humanroot
			weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0)
			local weld2 = Instance.new('Weld',arm)
			weld2.Part0 = arm
			weld2.Part1 = tors
			weld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
			local weld3 = Instance.new('Weld',arm2)
			weld3.Part0 = arm2
			weld3.Part1 = tors
			weld3.C0 = CFrame.new(1.5,0,-0.3) * CFrame.Angles(0.3,0.1,0)

			for i = 0,1,0.15 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(20),0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.2,1.3,0.4)*CFrame.Angles(0.5,0,-1.2),i)
				knifeweld.C1 = knifeweld.C1:lerp(CFrame.fromEulerAnglesXYZ(1.55, math.rad(90), -1.55) * CFrame.new(0, 0.95, 0), i)
				wait(0.01)
			end
			wait(0.001)
			trail.Enabled = true
			stabbing = true
			audio2.SoundId = 'rbxassetid://608537390'
			audio2:Play()
			for i = 0,1,0.2 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(-45),0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.6,0.8,-1)*CFrame.Angles(math.rad(-90),0,-1),i)
				wait(0.01)
			end
			trail.Enabled = false
			wait(0.1)
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed - 10
			stabbing = false
			wait(0.001)
			for i = 0,1,0.075 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0)*CFrame.Angles(0,0,0),i)
				weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0)*CFrame.Angles(0,0,0),i)
				knifeweld.C1 = knifeweld.C1:lerp(CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0), i)
				wait(0.01)
			end
		weld:Destroy()
		weld2:Destroy()
		weld3:Destroy()
		torsojoint:Clone().Parent = humanroot
		rightshoulderz:Clone().Parent = me.Torso
		leftshoulderz:Clone().Parent = me.Torso
		canClick = true
		hit = false
		acting = false
		end
	end)
	doit()
end

function stab()
	local doit = coroutine.wrap(function()
		if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') and me:FindFirstChild('HumanoidRootPart') and me:FindFirstChild('Left Arm') then
			acting = true
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed + 3
			local arm = me["Right Arm"]
			local tors = me.Torso
			local arm2 = me["Left Arm"]
			local humanroot = me.HumanoidRootPart
			local weld = Instance.new('Weld',tors)
			weld.Part0 = tors
			weld.Part1 = humanroot
			weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0)
			local weld2 = Instance.new('Weld',arm)
			weld2.Part0 = arm
			weld2.Part1 = tors
			weld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
			local weld3 = Instance.new('Weld',arm2)
			weld3.Part0 = arm2
			weld3.Part1 = tors
			weld3.C0 = CFrame.new(1.5,0,-0.3) * CFrame.Angles(0.3,0.1,0)

			for i = 0,1,0.1 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0.3,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.2,1.3,0.4)*CFrame.Angles(0.5,0,-1.2),i)
				wait(0.01)
			end
			wait(0.001)
			trail.Enabled = true
			stabbing = true
			audio2.SoundId = 'rbxassetid://608537390'
			audio2:Play()
			for i = 0,1,0.25 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,-0.3,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.6,0.8,0.5)*CFrame.Angles(-0.5,0,-0.5),i)
				wait(0.01)
			end
			trail.Enabled = false
			wait(0.1)
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed - 3
			for i = 0,1,0.25 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0.3,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.6,-0.3)*CFrame.Angles(0.5,0,-0.5),i)
				wait(0.01)
			end
			stabbing = false
			wait(0.001)
			for i = 0,1,0.05 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0)*CFrame.Angles(0,0,0),i)
				weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0)*CFrame.Angles(0,0,0),i)
				wait(0.01)
			end
		weld:Destroy()
		weld2:Destroy()
		weld3:Destroy()
		torsojoint:Clone().Parent = humanroot
		rightshoulderz:Clone().Parent = me.Torso
		leftshoulderz:Clone().Parent = me.Torso
		canClick = true
		hit = false
		acting = false
		end
	end)
	doit()
end
function hardrelease()
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	if me:FindFirstChild('Right Arm') then
	for i,v in pairs(me["Right Arm"]:GetChildren()) do
		if v:IsA('Weld') then
			v:Destroy()
		end
	end
	end
	if me:FindFirstChild('Left Arm') then
	for i,v in pairs(me["Left Arm"]:GetChildren()) do
		if v:IsA('Weld') then
			v:Destroy()
		end
	end
	end
	acting = false
	canClick = true
	doing = false
	grabbed = nil
end
function unequip()
	local doit = coroutine.wrap(function()
	if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') then
		acting = true
		local arm = me["Right Arm"]
		local arm2 = me["Left Arm"]
		local tors = me.Torso
		local weld = Instance.new('Weld',arm)
		weld.Part0 = arm
		weld.Part1 = tors
		weld.C0 = CFrame.new(-1.5,0,0)
		local weld2 = Instance.new("Weld", arm2)
		weld2.Part0 = arm2
		weld2.Part1 = tors
		weld2.C0 = CFrame.new(1.5, 0, 0)
		wait(0.001)
		trail.Enabled = true
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-0.2,0.2,-0.5)*CFrame.Angles(0,-3.1,0.9),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0.6, 0) * CFrame.Angles(0,0,0.5),i)
			wait(0.001)
		end
		trail.Enabled = false
		wait(0.25)
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-1.5,0,0),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0, 0), i)
			wait(0.01)
		end
		weld:Destroy()
		weld2:Remove()
		if tors ~= nil then
			rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
		end
		acting = false
	end
	end)
	doit()
end

mouse.KeyDown:connect(function(key)
	if usable == true then
	if key == "z" then
		if active == false and acting == false then
			active = true
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			notify("KNIFE EQUIPPED",false)
			audio:Stop()
			audio.SoundId = 'rbxassetid://608618332'
			equip()
			wait(0.6)
			audio:Play()
			knifeweld.Part0 = me["Right Arm"]
			knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0)
		elseif acting == false then
			active = false
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			audio:Stop()
			audio.SoundId = 'rbxassetid://608538233'
			unequip()
			notify("KNIFE UNEQUIPPED",false)
			wait(0.3)
			audio:Play()
			knifeweld.Part0 = me.Torso
			knifeweld.C1 = CFrame.Angles(0,math.rad(90),0) * CFrame.new(1, 0.8, 0.55)
			canClick = true
		end
	elseif key == "f" then
		if mode == 'kill' or active == false then return end
		mode = "kill"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || KILL || [F]",false)
	elseif key == "e" then
		if mode == 'throw' or active == false then return end
		mode = "throw"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || PUSH || [E]",false)
	elseif key == "q" then
		if mode == 'release' or active == false then return end
		mode = "release"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || RELEASE || [Q]",false)
	elseif key == "x" then
		if mode == 'stab' or active == false or acting == true then return end
		mode = "stab"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || STAB || [X]",false)
	elseif key == "c" then
		if mode == 'fling' or active == false or acting == true then return end
		mode = "fling"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || THROW || [C]",false)
	elseif key == "b" then
		if mode == 'instasplode' or active == false or acting == true then return end
		mode = "instasplode"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || MOLOTOV || [B]",false)
	elseif key == "r" then
		if mode == 'paralyze' or active == false then return end
		mode = "paralyze"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || PARALYZE || [R]",false)
	elseif key == "v" then
		if mode == 'explode' or active == false or acting == true then return end
		mode = "explode"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || EXPLODE || [V]",false)
	elseif key == "k" then
		if mode == 'suicide' or active == false or acting == true then return end
		mode = "suicide"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || SUICIDE || [K]",false)
	elseif key == "h" then
		if mode == 'firework' or active == false or acting == true then return end
		mode = "firework"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || FIREWORK || [H]",false)
	elseif key == "g" then
		if mode == 'finish' or active == false then return end
		mode = "finish"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		local welp = "ON"
		if finishnum == 1 then
			welp = "OFF"
		end
		notify("MODE || FINISH || [G] || "..welp,false)
	elseif key == "n" then
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		if zombiemode == false then
			notify("ZOMBIE MODE ON || [N]",false)
			zombiemode = true
		else
			notify("ZOMBIE MODE OFF || [N]",false)
			zombiemode = false
		end
	elseif key == "m" then
		if finishnum == 1 then
			finishnum = 15
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			notify("PSYCHOPATH MODE ON || [M]",false)
			if cancolorfilter then
			local Sp00kyGui = Instance.new("ScreenGui")
			local ImageLabel = Instance.new("ImageLabel")

			-- Properties

			Sp00kyGui.Parent = playergui
			Sp00kyGui.Name = "REEEEEEEE"

			ImageLabel.Parent = Sp00kyGui
			ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
			ImageLabel.BackgroundTransparency = 1
			ImageLabel.Size = UDim2.new(1, 0, 1, 0)
			ImageLabel.Image = "rbxassetid://74443700"
			ImageLabel.ImageColor3 = Color3.new(1, 0, 0)
			end
			if canbackgroundmusic == true then
				local sound = Instance.new('Sound',playergui)
				sound.Name = 'PSYCHOPAAAATH'
				sound.SoundId = 'rbxassetid://220875210'
				sound.Looped = true
				sound.Volume = 0.5
				sound:Play()
			end
		else
			finishnum = 1
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			notify("PSYCHOPATH MODE OFF || [M]",false)
			for i,v in pairs(playergui:GetChildren()) do
				if v.Name == "REEEEEEEE" then
					v:Destroy()
				end
			end
			local thisniggarighthere = playergui:FindFirstChild('PSYCHOPAAAATH')
			if thisniggarighthere then thisniggarighthere:Destroy() end
		end
	end
	end
end)

mouse.Button1Down:connect(function()
	if active == false or usable == false then return end
	if canClick == true and acting == false then
		if mode == "stab" and finishnum == 1 then
			canClick = false
			stab()
		elseif mode == "stab" and finishnum == 15 then
			canClick = false
			stabwithpassion()
		elseif mode == "fling" then
			canClick = false
			fling()
		elseif mode == "explode" then
			canClick = false
			explode()
		elseif mode == "instasplode" then
			canClick = false
			instasplode()
		elseif mode == "finish" then
			canClick = false
			finish()
		elseif mode == "suicide" then
			canClick = false
			kysnigga()
		elseif mode == "firework" then
			canClick = false
			fireworkit()
		else
			canClick = false
			grab()
		end
	else
		if grabbed ~= nil and doing == false then
			if mode == "release" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				release()
				else
				hardrelease()
				end
			elseif mode == "kill" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				kill()
				else
				hardrelease()
				end
			elseif mode == "paralyze" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				paralyze()
				else
				hardrelease()
				end
			elseif mode == "throw" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				throw()
				else
				hardrelease()
				end
			elseif mode == "explode" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				throw()
				else
				hardrelease()
				end
			end
		end
	end
end)

knife.Touched:connect(function(hitz)
	if hitz.Parent and hitz.Parent:FindFirstChildOfClass("Humanoid") and hitz.Parent:FindFirstChild('Torso') and acting == true then
		if mode == "stab" and stabbing == true and hit == false then
			hit = true
			tone = math.random(1, 3)
			audio:Stop()
			if tone == 1 then audio.SoundId = "rbxassetid://220833967" end
			if tone == 2 then audio.SoundId = "rbxassetid://220833976" end
			if tone == 3 then audio.SoundId = "rbxassetid://220834000" end
			audio.PlaybackSpeed = 1
			audio:Play()
			killz(hitz.Parent,'Left Leg')
			killz(hitz.Parent,'Left Arm')
			killz(hitz.Parent,'Right Leg')
			killz(hitz.Parent,'Right Arm')
		elseif mode == "finish" and finishing == true then
			print('PSYCHOPATH MODE REEEEEEEEEEEEEEEE')
			tone = math.random(1, 3)
			audio:Stop()
			if tone == 1 then audio.SoundId = "rbxassetid://220833967" end
			if tone == 2 then audio.SoundId = "rbxassetid://220833976" end
			if tone == 3 then audio.SoundId = "rbxassetid://220834000" end
			audio.PlaybackSpeed = 1
			audio:Play()
			if hit == false then
				hitz.Parent:FindFirstChildOfClass('Humanoid').Health = 0
				wait()
				killz(hitz.Parent,'Head',nil,false,true)
			end
			hit = true
		elseif grabbed == nil and grabbing == true and hit == false then
			if hitz.Parent:FindFirstChildOfClass("Humanoid").Health > 0 and hitz.Parent:FindFirstChild('Torso') and hitz.Parent.Torso:FindFirstChild('Neck') then
			grabbed = hitz.Parent
			local weldz = Instance.new('Weld',point)
			weldz.Name = "Holder"
			weldz.Part0 = point
			weldz.Part1 = hitz.Parent.Torso
			weldz.C0 = CFrame.new(0,0,-1.2)
			end
		end
	end
end)

player.CharacterAdded:connect(function()
	usable = false
	for i,v in pairs(playergui:GetChildren()) do
		if v.Name == "REEEEEEEE" or v.Name == 'PSYCHOPAAAATH' then
			v:Destroy()
		end
	end
end)
while usable do
	local coru = coroutine.wrap(function()
		for i,v in pairs(knifeparts) do
			local function try()
				if v[1].Parent ~= v[2] then
					v[1].Parent = v[2]
				end
			end
			pcall(try)
		end
	if grabbed ~= nil then
		if grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
			for i,v in pairs(grabbed:GetChildren()) do
				if v:IsA('Tool') then
					local model = Instance.new('Model',workspace)
					v.Parent = model
					model:TranslateBy(Vector3.new(3,0,0))
				end
			end
			grabbed:FindFirstChildOfClass('Humanoid').Name = "Hoomanoid"
			grabbed:FindFirstChildOfClass('Humanoid').JumpPower = 0
			grabbed:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
			grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = true
			grabweld = grabbed.Torso:FindFirstChild("TargetWeld")
			if grabweld ~= nil then return end
			grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = true
			if grabbed.Torso:FindFirstChild('Left Shoulder') then
			leftshoulder = grabbed.Torso["Left Shoulder"]:Clone()
			end
			if grabbed.Torso:FindFirstChild('Right Shoulder') then
			rightshoulder = grabbed.Torso["Right Shoulder"]:Clone()
			end
			headweld = grabbed.Torso["Neck"]:Clone()
			local targetweld = Instance.new('Weld',grabbed.Torso)
			targetweld.Part0 = grabbed.Torso
			targetweld.Part1 = grabbed.Head
			targetweld.Name = "TargetWeld"
			targetweld.C0 = CFrame.new(0,1.5,0) * CFrame.Angles(0, 0, 0)
			if grabbed:FindFirstChild('Left Arm') then
			local targetweld2 = Instance.new('Weld',grabbed["Left Arm"])
			targetweld2.Part0 = grabbed.Torso
			targetweld2.Part1 = grabbed["Left Arm"]
			targetweld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
			end
			
			for i = 0,1,0.1 do
				if me:FindFirstChild("Left Arm") == nil or me:FindFirstChild("Torso") == nil or targetweld == nil then return end
				targetweld.C0 = targetweld.C0:lerp(CFrame.new(0, 1.5, 0)*CFrame.Angles(0.25, 0, 0), i)
				if targetweld2 then
					targetweld2.C0 = targetweld2.C0:lerp(CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(0, 0, -0.55), i)
				end
				wait(0.001)
			end
		end
	end
	end)
	coru()
	wait()
end

end
local coru=coroutine.wrap(function()
nub()
end)
coru()

player.CharacterAppearanceLoaded:connect(function()
	local coru =coroutine.wrap(function()
		nub()
	end)
	coru()
end)

while true do
	local coru=coroutine.wrap(function()
	if grabbed then
		v:FindFirstChildOfClass('Humanoid').Jump = false
		v:FindFirstChildOfClass('Humanoid').Sit = false
		v:FindFirstChildOfClass('Humanoid').JumpPower = 0
		v:FindFirstChildOfClass('Humanoid').PlatformStand = true
		v:FindFirstChildOfClass('Humanoid').Name = "No escape."
	end
	for i,v in pairs(rekt) do
		if v and v:FindFirstChildOfClass('Humanoid') then
			for a,c in pairs(v:GetChildren()) do
				if c:IsA('Tool') then
					local model = Instance.new('Model',workspace)
					c.Parent = model
					model:TranslateBy(Vector3.new(3,0,0))
				end
			end
			v:FindFirstChildOfClass('Humanoid').Jump = false
			v:FindFirstChildOfClass('Humanoid').Sit = false
			v:FindFirstChildOfClass('Humanoid').JumpPower = 0
			v:FindFirstChildOfClass('Humanoid').PlatformStand = true
			v:FindFirstChildOfClass('Humanoid').Name = "No escape."
			local thing = getplr(v)
			if thing then
				thing.CameraMinZoomDistance = 3
			end
		else
			local thing = getplr(v)
			if thing then
				thing.CameraMinZoomDistance = 0.5
			end
			table.remove(rekt,i)
		end
	end
	end)
	coru()
	local coru2 = coroutine.wrap(function()
		if curpart then
			curpoint = curpart.CFrame.p
		end
		if lastgui then
			lastgui:Destroy()
			lastgui = nil
		end
		if curpoint then
			lastgui = Instance.new('BillboardGui',player.PlayerGui)
			lastgui.AlwaysOnTop = true
			lastgui.MaxDistance = 0
			lastgui.Size = UDim2.new(5,0,5,0)
			if curpart == nil then
				lastgui.Adornee = workspace
				lastgui.StudsOffsetWorldSpace = curpoint
			else
				lastgui.Adornee = curpart
			end
			local cross = Instance.new('ImageLabel',lastgui)
			cross.BackgroundTransparency = 1
			cross.Size = UDim2.new(1,0,1,0)
			cross.Image = 'rbxassetid://316279304'
			for i,v in pairs(zombies) do
				if v:FindFirstChildOfClass('Humanoid') then
					v:FindFirstChildOfClass('Humanoid').WalkToPoint = curpoint
				end
			end
		else
			for i,v in pairs(zombies) do
				if v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Head') then
					v:FindFirstChildOfClass('Humanoid').WalkToPoint = v.Head.Position
				end
			end
		end
	end)
	coru2()
	wait()
end
end)

SuicideGunBut.Name = "SuicideGunBut"
SuicideGunBut.Parent = FrixonHubScripts
SuicideGunBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SuicideGunBut.BorderSizePixel = 0
SuicideGunBut.Position = UDim2.new(0.273770481, 0, 0.199063227, 0)
SuicideGunBut.Size = UDim2.new(0, 122, 0, 49)
SuicideGunBut.Font = Enum.Font.SourceSans
SuicideGunBut.Text = "Suicide Gun"
SuicideGunBut.TextColor3 = Color3.fromRGB(255, 255, 255)
SuicideGunBut.TextSize = 14.000
SuicideGunBut.MouseButton1Down:connect(function() 
	--SUICIDE GUN REBORN BY DMS
o1 = Instance.new("Tool")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Part")
o5 = Instance.new("BlockMesh")
o6 = Instance.new("Part")
o7 = Instance.new("BlockMesh")
o8 = Instance.new("Part")
o9 = Instance.new("BlockMesh")
o10 = Instance.new("Part")
o11 = Instance.new("BlockMesh")
o12 = Instance.new("Part")
o13 = Instance.new("BlockMesh")
o14 = Instance.new("Part")
o15 = Instance.new("BlockMesh")
o16 = Instance.new("Part")
o17 = Instance.new("BlockMesh")
o18 = Instance.new("Part")
o19 = Instance.new("BlockMesh")
o20 = Instance.new("Part")
o21 = Instance.new("CylinderMesh")
o22 = Instance.new("Part")
o23 = Instance.new("CylinderMesh")
o24 = Instance.new("Part")
o25 = Instance.new("CylinderMesh")
o26 = Instance.new("Part")
o27 = Instance.new("BlockMesh")
o28 = Instance.new("Part")
o29 = Instance.new("CylinderMesh")
o30 = Instance.new("Part")
o31 = Instance.new("PointLight")
o32 = Instance.new("BillboardGui")
o33 = Instance.new("ImageLabel")
o34 = Instance.new("BlockMesh")
o35 = Instance.new("Part")
o36 = Instance.new("BlockMesh")
o37 = Instance.new("Part")
o38 = Instance.new("BlockMesh")
o39 = Instance.new("Part")
o40 = Instance.new("BlockMesh")
o41 = Instance.new("Part")
o42 = Instance.new("Decal")
o43 = Instance.new("CylinderMesh")
o44 = Instance.new("Part")
o45 = Instance.new("CylinderMesh")
o46 = Instance.new("Part")
o47 = Instance.new("BlockMesh")
o48 = Instance.new("Part")
o49 = Instance.new("SpecialMesh")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Part")
o53 = Instance.new("BlockMesh")
o54 = Instance.new("Part")
o55 = Instance.new("BlockMesh")
o56 = Instance.new("Part")
o57 = Instance.new("BlockMesh")
o58 = Instance.new("Part")
o59 = Instance.new("CylinderMesh")
o60 = Instance.new("Part")
o61 = Instance.new("SpecialMesh")
o62 = Instance.new("Part")
o63 = Instance.new("BlockMesh")
o64 = Instance.new("Part")
o65 = Instance.new("SpecialMesh")
o66 = Instance.new("Part")
o67 = Instance.new("BlockMesh")
o68 = Instance.new("Part")
o69 = Instance.new("BlockMesh")
o70 = Instance.new("Part")
o71 = Instance.new("SpecialMesh")
o72 = Instance.new("Part")
o73 = Instance.new("BlockMesh")
o74 = Instance.new("Part")
o75 = Instance.new("BlockMesh")
o76 = Instance.new("Part")
o77 = Instance.new("BlockMesh")
o78 = Instance.new("Part")
o79 = Instance.new("SpecialMesh")
o80 = Instance.new("Part")
o81 = Instance.new("CylinderMesh")
o82 = Instance.new("Part")
o83 = Instance.new("SpecialMesh")
o84 = Instance.new("Part")
o85 = Instance.new("BlockMesh")
o86 = Instance.new("Part")
o87 = Instance.new("SpecialMesh")
o88 = Instance.new("Part")
o89 = Instance.new("SpecialMesh")
o90 = Instance.new("Part")
o91 = Instance.new("BlockMesh")
o92 = Instance.new("Part")
o93 = Instance.new("BlockMesh")
o94 = Instance.new("Part")
o95 = Instance.new("SpecialMesh")
o96 = Instance.new("Part")
o97 = Instance.new("BlockMesh")
o98 = Instance.new("Part")
o99 = Instance.new("SpecialMesh")
o100 = Instance.new("Part")
o101 = Instance.new("BlockMesh")
o102 = Instance.new("Part")
o103 = Instance.new("BlockMesh")
o104 = Instance.new("Part")
o105 = Instance.new("SpecialMesh")
o106 = Instance.new("Part")
o107 = Instance.new("BlockMesh")
o108 = Instance.new("Part")
o109 = Instance.new("CylinderMesh")
o110 = Instance.new("Part")
o111 = Instance.new("BlockMesh")
o112 = Instance.new("Part")
o113 = Instance.new("SpecialMesh")
o114 = Instance.new("Part")
o115 = Instance.new("CylinderMesh")
o116 = Instance.new("Part")
o117 = Instance.new("BlockMesh")
o118 = Instance.new("Part")
o119 = Instance.new("SpecialMesh")
o120 = Instance.new("Part")
o121 = Instance.new("BlockMesh")
o122 = Instance.new("Part")
o123 = Instance.new("SpecialMesh")
o124 = Instance.new("Part")
o125 = Instance.new("SpecialMesh")
o126 = Instance.new("Part")
o127 = Instance.new("BlockMesh")
o128 = Instance.new("Part")
o129 = Instance.new("BlockMesh")
o130 = Instance.new("Part")
o131 = Instance.new("SpecialMesh")
o132 = Instance.new("Part")
o133 = Instance.new("BlockMesh")
o134 = Instance.new("Part")
o135 = Instance.new("BlockMesh")
o136 = Instance.new("Part")
o137 = Instance.new("SpecialMesh")
o138 = Instance.new("Part")
o139 = Instance.new("BlockMesh")
o140 = Instance.new("Part")
o141 = Instance.new("CylinderMesh")
o142 = Instance.new("Part")
o143 = Instance.new("BlockMesh")
o144 = Instance.new("Part")
o145 = Instance.new("SpecialMesh")
o146 = Instance.new("Part")
o147 = Instance.new("SpecialMesh")
o148 = Instance.new("Part")
o149 = Instance.new("Sound")
o150 = Instance.new("BlockMesh")
o1.Name = "Suicide"
o1.Parent = game.Players.LocalPlayer.Backpack
o2.Parent = o1
o2.Material = Enum.Material.SmoothPlastic
o2.BrickColor = BrickColor.new("Really black")
o2.Position = Vector3.new(18.950964, 0.850407004, 14.2854338)
o2.Rotation = Vector3.new(-2.19040904e-013, 2.50129006e-006, -180)
o2.Anchored = true
o2.FormFactor = Enum.FormFactor.Custom
o2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o2.CFrame = CFrame.new(18.950964, 0.850407004, 14.2854338, -1, 8.74227766e-008, 4.36557457e-008, -8.74227766e-008, -1, 3.82298495e-015, 4.36557457e-008, 3.92853881e-018, 1)
o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o3.Parent = o2
o3.Scale = Vector3.new(0.666666687, 0.388888866, 0.416666687)
o3.MeshType = Enum.MeshType.Wedge
o4.Parent = o1
o4.Material = Enum.Material.SmoothPlastic
o4.BrickColor = BrickColor.new("Really black")
o4.Position = Vector3.new(18.950964, 0.953182995, 14.5104237)
o4.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o4.Anchored = true
o4.FormFactor = Enum.FormFactor.Custom
o4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o4.CFrame = CFrame.new(18.950964, 0.953182995, 14.5104237, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o5.Parent = o4
o5.Scale = Vector3.new(0.333333343, 0.194444433, 0.694444478)
o6.Parent = o1
o6.Material = Enum.Material.SmoothPlastic
o6.BrickColor = BrickColor.new("Black")
o6.Position = Vector3.new(18.950964, 1.13095105, 14.5993176)
o6.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o6.Anchored = true
o6.FormFactor = Enum.FormFactor.Custom
o6.Size = Vector3.new(0.566666663, 0.200000003, 0.200000003)
o6.CFrame = CFrame.new(18.950964, 1.13095105, 14.5993176, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Color = Color3.new(0.105882, 0.164706, 0.207843)
o7.Parent = o6
o7.Scale = Vector3.new(1, 0.583333313, 0.722222269)
o8.Name = "SightBack"
o8.Parent = o1
o8.Material = Enum.Material.SmoothPlastic
o8.Position = Vector3.new(18.950964, 1.23151195, 14.4882116)
o8.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o8.Anchored = true
o8.FormFactor = Enum.FormFactor.Custom
o8.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o8.CFrame = CFrame.new(18.950964, 1.23151195, 14.4882116, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o9.Parent = o8
o9.Scale = Vector3.new(0.166666672, 0.111111112, 0.411111116)
o10.Parent = o1
o10.Material = Enum.Material.SmoothPlastic
o10.BrickColor = BrickColor.new("Really black")
o10.Position = Vector3.new(18.950964, 0.961513996, 14.5937595)
o10.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o10.Anchored = true
o10.FormFactor = Enum.FormFactor.Custom
o10.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o10.CFrame = CFrame.new(18.950964, 0.961513996, 14.5937595, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o11.Parent = o10
o11.Scale = Vector3.new(0.49999997, 0.277777761, 0.694444478)
o12.Parent = o1
o12.Material = Enum.Material.SmoothPlastic
o12.BrickColor = BrickColor.new("Really black")
o12.Position = Vector3.new(18.950964, 1.19539297, 14.5993176)
o12.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o12.Anchored = true
o12.FormFactor = Enum.FormFactor.Custom
o12.Size = Vector3.new(0.566666663, 0.200000003, 0.200000003)
o12.CFrame = CFrame.new(18.950964, 1.19539297, 14.5993176, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o12.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o13.Parent = o12
o13.Scale = Vector3.new(1, 0.249999985, 0.411111116)
o14.Parent = o1
o14.Material = Enum.Material.SmoothPlastic
o14.BrickColor = BrickColor.new("Really black")
o14.Position = Vector3.new(18.908186, 1.19095695, 14.5993176)
o14.Rotation = Vector3.new(-90, 44.9999962, 90)
o14.Anchored = true
o14.FormFactor = Enum.FormFactor.Custom
o14.Size = Vector3.new(0.566666663, 0.200000003, 0.200000003)
o14.CFrame = CFrame.new(18.908186, 1.19095695, 14.5993176, 0, -0.707106709, 0.707106709, 5.38120031e-018, 0.707106769, 0.707106769, -1, 2.04281037e-011, 9.59801127e-011)
o14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o15.Parent = o14
o15.Scale = Vector3.new(1, 0.194444433, 0.222222224)
o16.Name = "SightBack"
o16.Parent = o1
o16.Material = Enum.Material.SmoothPlastic
o16.Position = Vector3.new(18.9787407, 1.25372696, 14.4882116)
o16.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o16.Anchored = true
o16.FormFactor = Enum.FormFactor.Custom
o16.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o16.CFrame = CFrame.new(18.9787407, 1.25372696, 14.4882116, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o17.Parent = o16
o17.Scale = Vector3.new(0.166666672, 0.111111112, 0.13333334)
o18.Name = "SightBack"
o18.Parent = o1
o18.Material = Enum.Material.SmoothPlastic
o18.Position = Vector3.new(18.9231701, 1.25372696, 14.4882002)
o18.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o18.Anchored = true
o18.FormFactor = Enum.FormFactor.Custom
o18.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o18.CFrame = CFrame.new(18.9231701, 1.25372696, 14.4882002, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o19.Parent = o18
o19.Scale = Vector3.new(0.166666672, 0.111111112, 0.13333334)
o20.Parent = o1
o20.Material = Enum.Material.SmoothPlastic
o20.BrickColor = BrickColor.new("Black")
o20.Position = Vector3.new(18.950964, 0.886528015, 14.5798664)
o20.Rotation = Vector3.new(-90, -2.50447761e-006, -90)
o20.Anchored = true
o20.FormFactor = Enum.FormFactor.Custom
o20.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o20.CFrame = CFrame.new(18.950964, 0.886528015, 14.5798664, -8.74279067e-008, 1, -4.37113812e-008, -3.83195418e-015, 4.37113812e-008, 1, 1, 8.74279067e-008, -4.65359901e-018)
o20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o20.Color = Color3.new(0.105882, 0.164706, 0.207843)
o21.Parent = o20
o21.Scale = Vector3.new(0.416666687, 0.722222269, 0.416666687)
o22.Name = "SightLine"
o22.Parent = o1
o22.Material = Enum.Material.SmoothPlastic
o22.BrickColor = BrickColor.new("Smoky grey")
o22.Position = Vector3.new(18.950964, 1.21539295, 15.7804356)
o22.Rotation = Vector3.new(90, -2.50447761e-006, -90)
o22.Anchored = true
o22.FormFactor = Enum.FormFactor.Custom
o22.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o22.CFrame = CFrame.new(18.950964, 1.21539295, 15.7804356, 0, 1, -4.37113812e-008, 5.38120031e-018, -4.37113812e-008, -1, -1, 0, 6.1083781e-018)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.356863, 0.364706, 0.411765)
o23.Parent = o22
o23.Scale = Vector3.new(0.505999982, 0.150000006, 0.505999982)
o24.Parent = o1
o24.Material = Enum.Material.SmoothPlastic
o24.BrickColor = BrickColor.new("Black")
o24.Position = Vector3.new(18.950964, 0.96707201, 15.7326679)
o24.Rotation = Vector3.new(-90, -2.50447761e-006, -180)
o24.Anchored = true
o24.FormFactor = Enum.FormFactor.Custom
o24.Size = Vector3.new(0.200000003, 0.344444454, 0.200000003)
o24.CFrame = CFrame.new(18.950964, 0.96707201, 15.7326679, -1, 4.36557457e-008, -4.37113812e-008, -4.37113812e-008, 1.9122997e-015, 1, 4.36557457e-008, 1, -4.65359901e-018)
o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o24.Color = Color3.new(0.105882, 0.164706, 0.207843)
o25.Parent = o24
o25.Scale = Vector3.new(0.405599982, 1, 0.405599982)
o26.Parent = o1
o26.Material = Enum.Material.SmoothPlastic
o26.BrickColor = BrickColor.new("Black")
o26.Position = Vector3.new(18.950964, 1.01984501, 15.7298756)
o26.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o26.Anchored = true
o26.FormFactor = Enum.FormFactor.Custom
o26.Size = Vector3.new(0.338888884, 0.200000003, 0.200000003)
o26.CFrame = CFrame.new(18.950964, 1.01984501, 15.7298756, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o26.Color = Color3.new(0.105882, 0.164706, 0.207843)
o27.Parent = o26
o27.Scale = Vector3.new(1, 0.527777731, 0.611111104)
o28.Parent = o1
o28.Material = Enum.Material.SmoothPlastic
o28.BrickColor = BrickColor.new("Black")
o28.Position = Vector3.new(18.950964, 0.96707201, 15.7298756)
o28.Rotation = Vector3.new(-90, -2.50447761e-006, -180)
o28.Anchored = true
o28.FormFactor = Enum.FormFactor.Custom
o28.Size = Vector3.new(0.200000003, 0.338888884, 0.200000003)
o28.CFrame = CFrame.new(18.950964, 0.96707201, 15.7298756, -1, 4.36557457e-008, -4.37113812e-008, -4.37113812e-008, 1.9122997e-015, 1, 4.36557457e-008, 1, -4.65359901e-018)
o28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o28.Color = Color3.new(0.105882, 0.164706, 0.207843)
o29.Parent = o28
o29.Scale = Vector3.new(0.611111104, 1, 0.611111104)
o30.Name = "Main"
o30.Parent = o1
o30.Material = Enum.Material.SmoothPlastic
o30.BrickColor = BrickColor.new("Really black")
o30.Transparency = 1
o30.Position = Vector3.new(18.950964, 1.12816894, 15.9493256)
o30.Rotation = Vector3.new(90, -2.50447761e-006, 2.50796006e-006)
o30.Anchored = true
o30.FormFactor = Enum.FormFactor.Custom
o30.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o30.CFrame = CFrame.new(18.950964, 1.12816894, 15.9493256, 1, -4.3772161e-008, -4.37113812e-008, -4.37113812e-008, -1.49011594e-008, -1, 4.3772161e-008, 1, -1.49011603e-008)
o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o30.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o31.Name = "FlashFX"
o31.Parent = o30
o31.Color = Color3.new(1, 1, 0)
o31.Enabled = false
o31.Brightness = 10
o31.Range = 6
o31.Shadows = true
o32.Name = "FlashGui"
o32.Parent = o30
o32.Size = UDim2.new(1.1000000238419,0,1.1000000238419,0)
o32.Enabled = false
o33.Name = "Label"
o33.Parent = o32
o33.Size = UDim2.new(1,0,1,0)
o33.BackgroundTransparency = 1
o33.Image = "http://www.roblox.com/asset/?id=117472237"
o34.Parent = o30
o34.Scale = Vector3.new(0.99999994, 0.99999994, 0.99999994)
o35.Parent = o1
o35.Material = Enum.Material.SmoothPlastic
o35.BrickColor = BrickColor.new("Black")
o35.Position = Vector3.new(18.908186, 1.19095695, 15.5132236)
o35.Rotation = Vector3.new(-90, 44.9999962, 90)
o35.Anchored = true
o35.FormFactor = Enum.FormFactor.Custom
o35.Size = Vector3.new(0.772222221, 0.200000003, 0.200000003)
o35.CFrame = CFrame.new(18.908186, 1.19095695, 15.5132236, 0, -0.707106709, 0.707106709, 5.38120031e-018, 0.707106769, 0.707106769, -1, 2.04281037e-011, 9.59801127e-011)
o35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o35.Color = Color3.new(0.105882, 0.164706, 0.207843)
o36.Parent = o35
o36.Scale = Vector3.new(1, 0.194444433, 0.222222224)
o37.Parent = o1
o37.Material = Enum.Material.SmoothPlastic
o37.BrickColor = BrickColor.new("Black")
o37.Position = Vector3.new(18.950964, 1.19539297, 15.5132236)
o37.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o37.Anchored = true
o37.FormFactor = Enum.FormFactor.Custom
o37.Size = Vector3.new(0.772222221, 0.200000003, 0.200000003)
o37.CFrame = CFrame.new(18.950964, 1.19539297, 15.5132236, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o37.Color = Color3.new(0.105882, 0.164706, 0.207843)
o38.Parent = o37
o38.Scale = Vector3.new(1, 0.249999985, 0.411111116)
o39.Parent = o1
o39.Material = Enum.Material.SmoothPlastic
o39.BrickColor = BrickColor.new("Black")
o39.Position = Vector3.new(18.950964, 1.13095105, 15.5132236)
o39.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o39.Anchored = true
o39.FormFactor = Enum.FormFactor.Custom
o39.Size = Vector3.new(0.772222221, 0.200000003, 0.200000003)
o39.CFrame = CFrame.new(18.950964, 1.13095105, 15.5132236, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o39.Color = Color3.new(0.105882, 0.164706, 0.207843)
o40.Parent = o39
o40.Scale = Vector3.new(1, 0.583333313, 0.722222269)
o41.Parent = o1
o41.Material = Enum.Material.SmoothPlastic
o41.BrickColor = BrickColor.new("Black")
o41.Position = Vector3.new(18.950964, 1.12816894, 15.3854284)
o41.Rotation = Vector3.new(-90, -2.50447761e-006, -180)
o41.Anchored = true
o41.FormFactor = Enum.FormFactor.Custom
o41.Size = Vector3.new(0.200000003, 1.06111109, 0.200000003)
o41.CFrame = CFrame.new(18.950964, 1.12816894, 15.3854284, -1, 4.36557457e-008, -4.37113812e-008, -4.37113812e-008, 1.9122997e-015, 1, 4.36557457e-008, 1, -4.65359901e-018)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.105882, 0.164706, 0.207843)
o42.Parent = o41
o42.Texture = "http://www.roblox.com/asset/?id=47760372"
o42.Face = Enum.NormalId.Top
o43.Parent = o41
o43.Scale = Vector3.new(0.49999997, 1, 0.49999997)
o44.Parent = o1
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Black")
o44.Position = Vector3.new(18.950964, 0.961513996, 15.352108)
o44.Rotation = Vector3.new(-90, -2.50447761e-006, -180)
o44.Anchored = true
o44.FormFactor = Enum.FormFactor.Custom
o44.Size = Vector3.new(0.200000003, 0.416666627, 0.200000003)
o44.CFrame = CFrame.new(18.950964, 0.961513996, 15.352108, -1, 4.36557457e-008, -4.37113812e-008, -4.37113812e-008, 1.9122997e-015, 1, 4.36557457e-008, 1, -4.65359901e-018)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.105882, 0.164706, 0.207843)
o45.Parent = o44
o45.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o46.Name = "Mag"
o46.Parent = o1
o46.Material = Enum.Material.SmoothPlastic
o46.BrickColor = BrickColor.new("Black")
o46.Position = Vector3.new(18.950964, 0.129971996, 14.3866644)
o46.Rotation = Vector3.new(101, 90, 0)
o46.Anchored = true
o46.FormFactor = Enum.FormFactor.Custom
o46.Size = Vector3.new(0.200000003, 0.333333343, 0.200000003)
o46.CFrame = CFrame.new(18.950964, 0.129971996, 14.3866644, -2.79885857e-008, -5.49657244e-008, 1, 0.981627166, -0.190809026, 1.69563066e-008, 0.190809026, 0.981627107, 5.93718141e-008)
o46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o46.Color = Color3.new(0.105882, 0.164706, 0.207843)
o47.Parent = o46
o47.Scale = Vector3.new(0.027777778, 1, 0.666666687)
o48.Parent = o1
o48.Material = Enum.Material.SmoothPlastic
o48.BrickColor = BrickColor.new("Black")
o48.Position = Vector3.new(18.950964, 0.161533996, 14.3493176)
o48.Rotation = Vector3.new(0.019784553, -6.66929267e-009, 180)
o48.Anchored = true
o48.FormFactor = Enum.FormFactor.Custom
o48.Size = Vector3.new(0.200000003, 0.200000003, 0.266666681)
o48.CFrame = CFrame.new(18.950964, 0.161533996, 14.3493176, -1, -8.74227979e-008, -1.16401111e-010, 8.74227766e-008, -0.99999994, -0.000345305598, 0, -0.000345305569, 0.99999994)
o48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o48.Color = Color3.new(0.105882, 0.164706, 0.207843)
o49.Parent = o48
o49.Scale = Vector3.new(0.694444478, 0.222222224, 1)
o49.MeshType = Enum.MeshType.Wedge
o50.Parent = o1
o50.Material = Enum.Material.SmoothPlastic
o50.BrickColor = BrickColor.new("Really black")
o50.Position = Vector3.new(18.950964, 0.155975997, 14.3354216)
o50.Rotation = Vector3.new(3.08320072e-016, 0, -180)
o50.Anchored = true
o50.FormFactor = Enum.FormFactor.Custom
o50.Size = Vector3.new(0.200000003, 0.200000003, 0.438888878)
o50.CFrame = CFrame.new(18.950964, 0.155975997, 14.3354216, -1, 1.0960446e-021, 0, 1.0960446e-021, -1, -5.38120031e-018, 0, 5.38120031e-018, 1)
o50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o50.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o51.Parent = o50
o51.Scale = Vector3.new(0.666666687, 0.333333343, 1)
o51.MeshType = Enum.MeshType.Wedge
o52.Parent = o1
o52.Material = Enum.Material.SmoothPlastic
o52.BrickColor = BrickColor.new("Black")
o52.Position = Vector3.new(18.950964, 0.239300996, 14.1882057)
o52.Rotation = Vector3.new(105, 90, 0)
o52.Anchored = true
o52.FormFactor = Enum.FormFactor.Custom
o52.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o52.CFrame = CFrame.new(18.950964, 0.239300996, 14.1882057, -1.07331601e-008, -6.40018527e-008, 1, 0.965925813, -0.258819044, -6.21114538e-009, 0.258819073, 0.965925813, 6.46105036e-008)
o52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o52.Color = Color3.new(0.105882, 0.164706, 0.207843)
o53.Parent = o52
o53.Scale = Vector3.new(0.944444478, 0.111111112, 0.611111104)
o54.Parent = o1
o54.Material = Enum.Material.SmoothPlastic
o54.BrickColor = BrickColor.new("Really black")
o54.Position = Vector3.new(18.950964, 0.225419, 14.3520937)
o54.Rotation = Vector3.new(-3.25256337e-007, 90, 0)
o54.Anchored = true
o54.FormFactor = Enum.FormFactor.Custom
o54.Size = Vector3.new(0.26111111, 0.200000003, 0.200000003)
o54.CFrame = CFrame.new(18.950964, 0.225419, 14.3520937, 8.94069672e-008, -6.24762481e-015, 1, -5.6767937e-009, 1, 1.42108539e-014, -1, -5.6767937e-009, 8.94069672e-008)
o54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o54.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o55.Parent = o54
o55.Scale = Vector3.new(1, 0.416666687, 0.694444478)
o56.Parent = o1
o56.Material = Enum.Material.SmoothPlastic
o56.BrickColor = BrickColor.new("Really black")
o56.Position = Vector3.new(18.950964, 0.197641, 14.2215319)
o56.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o56.Anchored = true
o56.FormFactor = Enum.FormFactor.Custom
o56.Size = Vector3.new(0.211111099, 0.200000003, 0.200000003)
o56.CFrame = CFrame.new(18.950964, 0.197641, 14.2215319, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o56.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o57.Parent = o56
o57.Scale = Vector3.new(1, 0.0833333358, 0.666666687)
o58.Parent = o1
o58.Material = Enum.Material.SmoothPlastic
o58.BrickColor = BrickColor.new("Really black")
o58.Position = Vector3.new(18.950964, 0.258204013, 14.3493176)
o58.Rotation = Vector3.new(-90, -2.50447761e-006, -90)
o58.Anchored = true
o58.FormFactor = Enum.FormFactor.Custom
o58.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o58.CFrame = CFrame.new(18.950964, 0.258204013, 14.3493176, -8.74279067e-008, 1, -4.37113812e-008, -3.83195418e-015, 4.37113812e-008, 1, 1, 8.74279067e-008, -4.65359901e-018)
o58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o59.Parent = o58
o59.Scale = Vector3.new(0.49999997, 0.722222269, 0.472222239)
o60.Parent = o1
o60.Material = Enum.Material.SmoothPlastic
o60.BrickColor = BrickColor.new("Really black")
o60.Position = Vector3.new(18.950964, 0.244874001, 14.1993141)
o60.Rotation = Vector3.new(0.019784553, -6.66929267e-009, 180)
o60.Anchored = true
o60.FormFactor = Enum.FormFactor.Custom
o60.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o60.CFrame = CFrame.new(18.950964, 0.244874001, 14.1993141, -1, -8.74227979e-008, -1.16401111e-010, 8.74227766e-008, -0.99999994, -0.000345305598, 0, -0.000345305569, 0.99999994)
o60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o61.Parent = o60
o61.Scale = Vector3.new(0.694444478, 0.222222224, 0.222222224)
o61.MeshType = Enum.MeshType.Wedge
o62.Parent = o1
o62.Material = Enum.Material.SmoothPlastic
o62.BrickColor = BrickColor.new("Black")
o62.Position = Vector3.new(18.993742, 1.19095695, 15.1076584)
o62.Rotation = Vector3.new(90, 44.9999962, -90)
o62.Anchored = true
o62.FormFactor = Enum.FormFactor.Custom
o62.Size = Vector3.new(1.58333337, 0.200000003, 0.200000003)
o62.CFrame = CFrame.new(18.993742, 1.19095695, 15.1076584, 0, 0.707106709, 0.707106709, 5.38120031e-018, 0.707106769, -0.707106769, -1, 9.59801127e-011, -2.04281037e-011)
o62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o62.Color = Color3.new(0.105882, 0.164706, 0.207843)
o63.Parent = o62
o63.Scale = Vector3.new(1, 0.194444433, 0.222222224)
o64.Parent = o1
o64.Material = Enum.Material.SmoothPlastic
o64.Position = Vector3.new(18.950964, 0.867092013, 15.1298876)
o64.Rotation = Vector3.new(180, 2.50796006e-006, 8.65142192e-006)
o64.Anchored = true
o64.FormFactor = Enum.FormFactor.Custom
o64.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o64.CFrame = CFrame.new(18.950964, 0.867092013, 15.1298876, 1, -1.50995803e-007, 4.3772161e-008, -1.50995803e-007, -1, -6.59664855e-015, 4.3772161e-008, 3.92853881e-018, -1)
o64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o65.Parent = o64
o65.Scale = Vector3.new(0.611111104, 0.333333343, 0.138888881)
o65.MeshType = Enum.MeshType.Wedge
o66.Parent = o1
o66.Material = Enum.Material.SmoothPlastic
o66.Position = Vector3.new(18.950964, 0.83930999, 15.1048679)
o66.Rotation = Vector3.new(89.9999771, 90, 0)
o66.Anchored = true
o66.FormFactor = Enum.FormFactor.Custom
o66.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o66.CFrame = CFrame.new(18.950964, 0.83930999, 15.1048679, -8.74231674e-008, 2.50292942e-008, 1, 1, 4.33125763e-007, 8.74231461e-008, -4.33125791e-007, 1, -2.50292942e-008)
o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o67.Parent = o66
o67.Scale = Vector3.new(0.944444478, 0.111111112, 0.611111104)
o68.Parent = o1
o68.Material = Enum.Material.SmoothPlastic
o68.BrickColor = BrickColor.new("Fossil")
o68.Position = Vector3.new(18.950964, 0.716949999, 15.0719404)
o68.Rotation = Vector3.new(-45, 90, 0)
o68.Anchored = true
o68.FormFactor = Enum.FormFactor.Custom
o68.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o68.CFrame = CFrame.new(18.950964, 0.716949999, 15.0719404, -1.36843425e-010, -2.04281037e-011, 1, -0.707106769, 0.707106769, -1.0960446e-021, -0.707106709, -0.707106709, 0)
o68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o68.Color = Color3.new(0.623529, 0.631373, 0.67451)
o69.Parent = o68
o69.Scale = Vector3.new(0.527777731, 0.111111112, 0.611111104)
o70.Parent = o1
o70.Material = Enum.Material.SmoothPlastic
o70.BrickColor = BrickColor.new("Black")
o70.Position = Vector3.new(18.950964, 0.875427008, 15.0743237)
o70.Rotation = Vector3.new(3.08320072e-016, 0, -180)
o70.Anchored = true
o70.FormFactor = Enum.FormFactor.Custom
o70.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o70.CFrame = CFrame.new(18.950964, 0.875427008, 15.0743237, -1, 1.0960446e-021, 0, 1.0960446e-021, -1, -5.38120031e-018, 0, 5.38120031e-018, 1)
o70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o70.Color = Color3.new(0.105882, 0.164706, 0.207843)
o71.Parent = o70
o71.Scale = Vector3.new(0.611111104, 0.249999985, 0.194444433)
o71.MeshType = Enum.MeshType.Wedge
o72.Parent = o1
o72.Material = Enum.Material.SmoothPlastic
o72.BrickColor = BrickColor.new("Black")
o72.Position = Vector3.new(18.9315281, 1.09817195, 15.0048761)
o72.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o72.Anchored = true
o72.FormFactor = Enum.FormFactor.Custom
o72.Size = Vector3.new(0.244444445, 0.200000003, 0.200000003)
o72.CFrame = CFrame.new(18.9315281, 1.09817195, 15.0048761, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Color = Color3.new(0.105882, 0.164706, 0.207843)
o73.Parent = o72
o73.Scale = Vector3.new(1, 0.277777761, 0.527777731)
o74.Parent = o1
o74.Material = Enum.Material.SmoothPlastic
o74.BrickColor = BrickColor.new("Black")
o74.Position = Vector3.new(18.9870701, 1.13095105, 15.0048761)
o74.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o74.Anchored = true
o74.FormFactor = Enum.FormFactor.Custom
o74.Size = Vector3.new(0.244444445, 0.200000003, 0.200000003)
o74.CFrame = CFrame.new(18.9870701, 1.13095105, 15.0048761, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.105882, 0.164706, 0.207843)
o75.Parent = o74
o75.Scale = Vector3.new(1, 0.583333313, 0.361111134)
o76.Parent = o1
o76.Material = Enum.Material.SmoothPlastic
o76.BrickColor = BrickColor.new("Black")
o76.Position = Vector3.new(18.970396, 1.17595196, 15.0048761)
o76.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o76.Anchored = true
o76.FormFactor = Enum.FormFactor.Custom
o76.Size = Vector3.new(0.244444445, 0.200000003, 0.200000003)
o76.CFrame = CFrame.new(18.970396, 1.17595196, 15.0048761, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o76.Color = Color3.new(0.105882, 0.164706, 0.207843)
o77.Parent = o76
o77.Scale = Vector3.new(1, 0.444444448, 0.216666669)
o78.Parent = o1
o78.Material = Enum.Material.SmoothPlastic
o78.BrickColor = BrickColor.new("Black")
o78.Position = Vector3.new(18.950964, 0.39764601, 14.6493216)
o78.Rotation = Vector3.new(180, 2.50796006e-006, 5.00895612e-006)
o78.Anchored = true
o78.FormFactor = Enum.FormFactor.Custom
o78.Size = Vector3.new(0.200000003, 0.550000012, 0.200000003)
o78.CFrame = CFrame.new(18.950964, 0.39764601, 14.6493216, 1, -8.74227766e-008, 4.3772161e-008, -8.74227766e-008, -1, -3.8177829e-015, 4.3772161e-008, 6.83386182e-018, -1)
o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Color = Color3.new(0.105882, 0.164706, 0.207843)
o79.Parent = o78
o79.Scale = Vector3.new(0.666666687, 1, 0.944444478)
o79.MeshType = Enum.MeshType.Wedge
o80.Parent = o1
o80.Material = Enum.Material.SmoothPlastic
o80.BrickColor = BrickColor.new("Black")
o80.Position = Vector3.new(18.8859501, 0.96707201, 15.0021019)
o80.Rotation = Vector3.new(-90, -2.50447761e-006, -90.0000076)
o80.Anchored = true
o80.FormFactor = Enum.FormFactor.Custom
o80.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o80.CFrame = CFrame.new(18.8859501, 0.96707201, 15.0021019, -1.51107088e-007, 1, -4.37113812e-008, -6.60488848e-015, 4.37113812e-008, 1, 1, 1.51107088e-007, -4.65359901e-018)
o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Color = Color3.new(0.105882, 0.164706, 0.207843)
o81.Parent = o80
o81.Scale = Vector3.new(0.249999985, 0.027777778, 0.249999985)
o82.Parent = o1
o82.Material = Enum.Material.SmoothPlastic
o82.BrickColor = BrickColor.new("Dark stone grey")
o82.Position = Vector3.new(18.950964, 0.858749986, 14.8770924)
o82.Rotation = Vector3.new(-180, -2.50796256e-006, 5.00895703e-006)
o82.Anchored = true
o82.FormFactor = Enum.FormFactor.Custom
o82.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o82.CFrame = CFrame.new(18.950964, 0.858749986, 14.8770924, 0.99999994, -8.74227837e-008, -4.37722036e-008, -8.74227837e-008, -0.99999994, 7.17606313e-018, -4.36557599e-008, 1.89421216e-015, -0.999999762)
o82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o82.Color = Color3.new(0.388235, 0.372549, 0.384314)
o83.Parent = o82
o83.Scale = Vector3.new(0.472222239, 0.416666687, 0.222222224)
o83.MeshType = Enum.MeshType.Wedge
o84.Parent = o1
o84.Material = Enum.Material.SmoothPlastic
o84.BrickColor = BrickColor.new("Black")
o84.Position = Vector3.new(18.950964, 1.05040395, 14.9382162)
o84.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o84.Anchored = true
o84.FormFactor = Enum.FormFactor.Custom
o84.Size = Vector3.new(1.24444449, 0.200000003, 0.200000003)
o84.CFrame = CFrame.new(18.950964, 1.05040395, 14.9382162, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o84.Color = Color3.new(0.105882, 0.164706, 0.207843)
o85.Parent = o84
o85.Scale = Vector3.new(1, 0.222222224, 0.722222269)
o86.Parent = o1
o86.Material = Enum.Material.SmoothPlastic
o86.BrickColor = BrickColor.new("Black")
o86.Position = Vector3.new(18.950964, 0.469879985, 14.2215319)
o86.Rotation = Vector3.new(2.05579065e-016, -2.50796006e-006, 6.27987314e-020)
o86.Anchored = true
o86.FormFactor = Enum.FormFactor.Custom
o86.Size = Vector3.new(0.200000003, 0.527777791, 0.211111099)
o86.CFrame = CFrame.new(18.950964, 0.469879985, 14.2215319, 1, -1.0960446e-021, -4.3772161e-008, -7.78546341e-022, 1, -3.58803156e-018, 4.3772161e-008, -5.38120031e-018, 1)
o86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o86.Color = Color3.new(0.105882, 0.164706, 0.207843)
o87.Parent = o86
o87.Scale = Vector3.new(0.666666687, 1, 1)
o87.MeshType = Enum.MeshType.Wedge
o88.Parent = o1
o88.Material = Enum.Material.SmoothPlastic
o88.BrickColor = BrickColor.new("Dark stone grey")
o88.Position = Vector3.new(18.950964, 0.736557007, 14.8798761)
o88.Rotation = Vector3.new(180, -2.50129006e-006, 180)
o88.Anchored = true
o88.FormFactor = Enum.FormFactor.Custom
o88.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o88.CFrame = CFrame.new(18.950964, 0.736557007, 14.8798761, -1, -1.0960446e-021, -4.36557457e-008, 1.41269847e-021, 1, -1.6144448e-018, 4.36557457e-008, -5.38120031e-018, -1)
o88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o88.Color = Color3.new(0.388235, 0.372549, 0.384314)
o89.Parent = o88
o89.Scale = Vector3.new(0.472222239, 0.416666687, 0.249999985)
o89.MeshType = Enum.MeshType.Wedge
o90.Parent = o1
o90.Material = Enum.Material.SmoothPlastic
o90.BrickColor = BrickColor.new("Smoky grey")
o90.Position = Vector3.new(18.950964, 0.683766007, 14.9020796)
o90.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o90.Anchored = true
o90.FormFactor = Enum.FormFactor.Custom
o90.Size = Vector3.new(0.283333331, 0.200000003, 0.200000003)
o90.CFrame = CFrame.new(18.950964, 0.683766007, 14.9020796, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o90.Color = Color3.new(0.356863, 0.364706, 0.411765)
o91.Parent = o90
o91.Scale = Vector3.new(1, 0.111111112, 0.611111104)
o92.Parent = o1
o92.Material = Enum.Material.SmoothPlastic
o92.BrickColor = BrickColor.new("Black")
o92.Position = Vector3.new(18.950964, 0.992074013, 14.9382162)
o92.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o92.Anchored = true
o92.FormFactor = Enum.FormFactor.Custom
o92.Size = Vector3.new(1.24444449, 0.200000003, 0.200000003)
o92.CFrame = CFrame.new(18.950964, 0.992074013, 14.9382162, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o92.Color = Color3.new(0.105882, 0.164706, 0.207843)
o93.Parent = o92
o93.Scale = Vector3.new(1, 0.361111134, 0.666666687)
o94.Parent = o1
o94.Material = Enum.Material.SmoothPlastic
o94.BrickColor = BrickColor.new("Black")
o94.Position = Vector3.new(18.950964, 0.708733976, 14.827096)
o94.Rotation = Vector3.new(-180, 0.0927856117, 180)
o94.Anchored = true
o94.FormFactor = Enum.FormFactor.Custom
o94.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o94.CFrame = CFrame.new(18.950964, 0.708733976, 14.827096, -0.999998689, -1.0960446e-021, 0.00161941373, -1.1745207e-017, 1, 4.66291637e-018, -0.00161941373, -5.38120031e-018, -0.999998689)
o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o94.Color = Color3.new(0.105882, 0.164706, 0.207843)
o95.Parent = o94
o95.Scale = Vector3.new(0.611111104, 0.138888881, 0.249999985)
o95.MeshType = Enum.MeshType.Wedge
o96.Parent = o1
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Black")
o96.Position = Vector3.new(18.950964, 0.797657013, 14.8104324)
o96.Rotation = Vector3.new(180, -2.50129006e-006, 180)
o96.Anchored = true
o96.FormFactor = Enum.FormFactor.Custom
o96.Size = Vector3.new(0.200000003, 0.205555543, 0.200000003)
o96.CFrame = CFrame.new(18.950964, 0.797657013, 14.8104324, -1, -1.0960446e-021, -4.36557457e-008, 1.41269847e-021, 1, -1.6144448e-018, 4.36557457e-008, -5.38120031e-018, -1)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0.105882, 0.164706, 0.207843)
o97.Parent = o96
o97.Scale = Vector3.new(0.472222239, 1, 0.444444448)
o98.Parent = o1
o98.Material = Enum.Material.SmoothPlastic
o98.BrickColor = BrickColor.new("Black")
o98.Position = Vector3.new(18.950964, 0.875427008, 14.8298864)
o98.Rotation = Vector3.new(-180, 0, -6.27987314e-020)
o98.Anchored = true
o98.FormFactor = Enum.FormFactor.Custom
o98.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o98.CFrame = CFrame.new(18.950964, 0.875427008, 14.8298864, 1, 1.0960446e-021, 0, -1.0960446e-021, -1, 5.38120031e-018, 0, 5.38120031e-018, -1)
o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Color = Color3.new(0.105882, 0.164706, 0.207843)
o99.Parent = o98
o99.Scale = Vector3.new(0.666666687, 0.249999985, 0.194444433)
o99.MeshType = Enum.MeshType.Wedge
o100.Parent = o1
o100.Material = Enum.Material.SmoothPlastic
o100.BrickColor = BrickColor.new("Black")
o100.Position = Vector3.new(18.988184, 0.986526012, 14.8076496)
o100.Rotation = Vector3.new(3.00000024, 90, 0)
o100.Anchored = true
o100.FormFactor = Enum.FormFactor.Custom
o100.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o100.CFrame = CFrame.new(18.988184, 0.986526012, 14.8076496, 2.57358579e-011, -6.64535094e-012, 1, 0.0523359589, 0.99862951, -1.0960446e-021, -0.99862951, 0.0523359627, 0)
o100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o100.Color = Color3.new(0.105882, 0.164706, 0.207843)
o101.Parent = o100
o101.Scale = Vector3.new(0.694444478, 0.249999985, 0.361111134)
o102.Parent = o1
o102.Material = Enum.Material.SmoothPlastic
o102.BrickColor = BrickColor.new("Black")
o102.Position = Vector3.new(18.950964, 0.875427008, 14.8020916)
o102.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o102.Anchored = true
o102.FormFactor = Enum.FormFactor.Custom
o102.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o102.CFrame = CFrame.new(18.950964, 0.875427008, 14.8020916, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o102.Color = Color3.new(0.105882, 0.164706, 0.207843)
o103.Parent = o102
o103.Scale = Vector3.new(0.0833333358, 0.249999985, 0.666666687)
o104.Parent = o1
o104.Material = Enum.Material.SmoothPlastic
o104.BrickColor = BrickColor.new("Really black")
o104.Position = Vector3.new(18.950964, 0.536549985, 14.6048756)
o104.Rotation = Vector3.new(180, 2.50796006e-006, 5.00895612e-006)
o104.Anchored = true
o104.FormFactor = Enum.FormFactor.Custom
o104.Size = Vector3.new(0.200000003, 0.794444382, 0.244444445)
o104.CFrame = CFrame.new(18.950964, 0.536549985, 14.6048756, 1, -8.74227766e-008, 4.3772161e-008, -8.74227766e-008, -1, -3.8177829e-015, 4.3772161e-008, 6.83386182e-018, -1)
o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o104.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o105.Parent = o104
o105.Scale = Vector3.new(0.694444478, 1, 1)
o105.MeshType = Enum.MeshType.Wedge
o106.Name = "Mag"
o106.Parent = o1
o106.Material = Enum.Material.SmoothPlastic
o106.BrickColor = BrickColor.new("Really black")
o106.Position = Vector3.new(18.950964, 0.56080699, 14.4704056)
o106.Rotation = Vector3.new(101, 90, 0)
o106.Anchored = true
o106.FormFactor = Enum.FormFactor.Custom
o106.Size = Vector3.new(0.872222185, 0.322222203, 0.200000003)
o106.CFrame = CFrame.new(18.950964, 0.56080699, 14.4704056, -2.79885857e-008, -5.65955389e-008, 1, 0.981627166, -0.190809026, 1.66447549e-008, 0.190809026, 0.981627107, 6.10016286e-008)
o106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o106.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o107.Parent = o106
o107.Scale = Vector3.new(1, 1, 0.611111104)
o108.Parent = o1
o108.Material = Enum.Material.SmoothPlastic
o108.BrickColor = BrickColor.new("Smoky grey")
o108.Position = Vector3.new(18.950964, 0.731004, 14.7326536)
o108.Rotation = Vector3.new(-90, 4.32571142e-006, -90.0000076)
o108.Anchored = true
o108.FormFactor = Enum.FormFactor.Custom
o108.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o108.CFrame = CFrame.new(18.950964, 0.731004, 14.7326536, -1.51107088e-007, 1, 7.54979084e-008, 7.25342942e-015, -7.54979084e-008, 1, 1, 1.51107088e-007, 4.14945855e-015)
o108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o108.Color = Color3.new(0.356863, 0.364706, 0.411765)
o109.Parent = o108
o109.Scale = Vector3.new(0.416666687, 0.694444478, 0.416666687)
o110.Parent = o1
o110.Material = Enum.Material.SmoothPlastic
o110.BrickColor = BrickColor.new("Black")
o110.Position = Vector3.new(18.950964, 0.544876993, 14.4409838)
o110.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o110.Anchored = true
o110.FormFactor = Enum.FormFactor.Custom
o110.Size = Vector3.new(0.227777779, 0.711111128, 0.200000003)
o110.CFrame = CFrame.new(18.950964, 0.544876993, 14.4409838, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o110.Color = Color3.new(0.105882, 0.164706, 0.207843)
o111.Parent = o110
o111.Scale = Vector3.new(1, 1, 0.666666687)
o112.Parent = o1
o112.Material = Enum.Material.SmoothPlastic
o112.BrickColor = BrickColor.new("Black")
o112.Position = Vector3.new(18.950964, 0.775434017, 14.7993164)
o112.Rotation = Vector3.new(180, -2.50129006e-006, 180)
o112.Anchored = true
o112.FormFactor = Enum.FormFactor.Custom
o112.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o112.CFrame = CFrame.new(18.950964, 0.775434017, 14.7993164, -1, -1.0960446e-021, -4.36557457e-008, 1.41269847e-021, 1, -1.6144448e-018, 4.36557457e-008, -5.38120031e-018, -1)
o112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o112.Color = Color3.new(0.105882, 0.164706, 0.207843)
o113.Parent = o112
o113.Scale = Vector3.new(0.666666687, 0.249999985, 0.111111112)
o113.MeshType = Enum.MeshType.Wedge
o114.Parent = o1
o114.Material = Enum.Material.SmoothPlastic
o114.BrickColor = BrickColor.new("Black")
o114.Position = Vector3.new(18.950964, 0.730996013, 14.7298584)
o114.Rotation = Vector3.new(180, 0, -90.0000076)
o114.Anchored = true
o114.FormFactor = Enum.FormFactor.Custom
o114.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o114.CFrame = CFrame.new(18.950964, 0.730996013, 14.7298584, -1.94707198e-007, 1, 0, 1, 1.94707169e-007, -4.37113883e-008, -4.37113883e-008, 0, -1)
o114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o114.Color = Color3.new(0.105882, 0.164706, 0.207843)
o115.Parent = o114
o115.Scale = Vector3.new(0.833333373, 0.666666687, 0.805555522)
o116.Parent = o1
o116.Material = Enum.Material.SmoothPlastic
o116.BrickColor = BrickColor.new("Black")
o116.Position = Vector3.new(18.950964, 0.928192973, 14.7298584)
o116.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o116.Anchored = true
o116.FormFactor = Enum.FormFactor.Custom
o116.Size = Vector3.new(0.827777743, 0.200000003, 0.200000003)
o116.CFrame = CFrame.new(18.950964, 0.928192973, 14.7298584, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o116.Color = Color3.new(0.105882, 0.164706, 0.207843)
o117.Parent = o116
o117.Scale = Vector3.new(1, 0.277777761, 0.666666687)
o118.Parent = o1
o118.Material = Enum.Material.SmoothPlastic
o118.BrickColor = BrickColor.new("Black")
o118.Position = Vector3.new(18.950964, 0.825424016, 14.7993164)
o118.Rotation = Vector3.new(-180, 0, -6.27987314e-020)
o118.Anchored = true
o118.FormFactor = Enum.FormFactor.Custom
o118.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o118.CFrame = CFrame.new(18.950964, 0.825424016, 14.7993164, 1, 1.0960446e-021, 0, -1.0960446e-021, -1, 5.38120031e-018, 0, 5.38120031e-018, -1)
o118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o118.Color = Color3.new(0.105882, 0.164706, 0.207843)
o119.Parent = o118
o119.Scale = Vector3.new(0.666666687, 0.249999985, 0.111111112)
o119.MeshType = Enum.MeshType.Wedge
o120.Parent = o1
o120.Material = Enum.Material.SmoothPlastic
o120.BrickColor = BrickColor.new("Black")
o120.Position = Vector3.new(18.950964, 0.600430012, 14.4798584)
o120.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o120.Anchored = true
o120.FormFactor = Enum.FormFactor.Custom
o120.Size = Vector3.new(0.200000003, 0.666666687, 0.200000003)
o120.CFrame = CFrame.new(18.950964, 0.600430012, 14.4798584, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o120.Color = Color3.new(0.105882, 0.164706, 0.207843)
o121.Parent = o120
o121.Scale = Vector3.new(0.027777778, 1, 0.694444478)
o122.Parent = o1
o122.Material = Enum.Material.SmoothPlastic
o122.BrickColor = BrickColor.new("Black")
o122.Position = Vector3.new(18.950964, 0.980957985, 14.5104237)
o122.Rotation = Vector3.new(2.05579065e-016, -2.50796006e-006, 6.27987314e-020)
o122.Anchored = true
o122.FormFactor = Enum.FormFactor.Custom
o122.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o122.CFrame = CFrame.new(18.950964, 0.980957985, 14.5104237, 1, -1.0960446e-021, -4.3772161e-008, -7.78546341e-022, 1, -3.58803156e-018, 4.3772161e-008, -5.38120031e-018, 1)
o122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o122.Color = Color3.new(0.105882, 0.164706, 0.207843)
o123.Parent = o122
o123.Scale = Vector3.new(0.694444478, 0.0833333358, 0.333333343)
o123.MeshType = Enum.MeshType.Wedge
o124.Parent = o1
o124.Material = Enum.Material.SmoothPlastic
o124.BrickColor = BrickColor.new("Black")
o124.Position = Vector3.new(18.950964, 0.961513996, 14.6854324)
o124.Rotation = Vector3.new(180, -2.50129006e-006, 180)
o124.Anchored = true
o124.FormFactor = Enum.FormFactor.Custom
o124.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o124.CFrame = CFrame.new(18.950964, 0.961513996, 14.6854324, -1, -1.0960446e-021, -4.36557457e-008, 1.41269847e-021, 1, -1.6144448e-018, 4.36557457e-008, -5.38120031e-018, -1)
o124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o124.Color = Color3.new(0.105882, 0.164706, 0.207843)
o125.Parent = o124
o125.Scale = Vector3.new(0.694444478, 0.277777761, 0.416666687)
o125.MeshType = Enum.MeshType.Wedge
o126.Parent = o1
o126.Material = Enum.Material.SmoothPlastic
o126.BrickColor = BrickColor.new("Really black")
o126.Position = Vector3.new(18.950964, 0.803216994, 14.6715384)
o126.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o126.Anchored = true
o126.FormFactor = Enum.FormFactor.Custom
o126.Size = Vector3.new(0.244444445, 0.200000003, 0.200000003)
o126.CFrame = CFrame.new(18.950964, 0.803216994, 14.6715384, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o126.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o127.Parent = o126
o127.Scale = Vector3.new(1, 0.972222209, 0.666666687)
o128.Parent = o1
o128.Material = Enum.Material.SmoothPlastic
o128.BrickColor = BrickColor.new("Really black")
o128.Position = Vector3.new(18.950964, 0.672379017, 14.6450357)
o128.Rotation = Vector3.new(-30.0000038, 90, 0)
o128.Anchored = true
o128.FormFactor = Enum.FormFactor.Custom
o128.Size = Vector3.new(0.205555543, 0.200000003, 0.200000003)
o128.CFrame = CFrame.new(18.950964, 0.672379017, 14.6450357, 4.20376836e-008, -2.60188173e-008, 1, -0.50000006, 0.866025388, 4.35066809e-008, -0.866025388, -0.50000006, 2.33994797e-008)
o128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o128.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o128.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o129.Parent = o128
o129.Scale = Vector3.new(1, 0.722222269, 0.666666687)
o130.Parent = o1
o130.Material = Enum.Material.SmoothPlastic
o130.BrickColor = BrickColor.new("Really black")
o130.Position = Vector3.new(18.950964, 0.619874001, 14.3270836)
o130.Rotation = Vector3.new(2.05579065e-016, -2.50796006e-006, 6.27987314e-020)
o130.Anchored = true
o130.FormFactor = Enum.FormFactor.Custom
o130.Size = Vector3.new(0.200000003, 0.705555558, 0.300000012)
o130.CFrame = CFrame.new(18.950964, 0.619874001, 14.3270836, 1, -1.0960446e-021, -4.3772161e-008, -7.78546341e-022, 1, -3.58803156e-018, 4.3772161e-008, -5.38120031e-018, 1)
o130.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o130.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o130.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o130.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o130.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o130.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o130.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o131.Parent = o130
o131.Scale = Vector3.new(0.694444478, 1, 1)
o131.MeshType = Enum.MeshType.Wedge
o132.Parent = o1
o132.Material = Enum.Material.SmoothPlastic
o132.BrickColor = BrickColor.new("Black")
o132.Position = Vector3.new(18.950964, 1.15317094, 14.2876415)
o132.Rotation = Vector3.new(30.0000019, 90, 0)
o132.Anchored = true
o132.FormFactor = Enum.FormFactor.Custom
o132.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o132.CFrame = CFrame.new(18.950964, 1.15317094, 14.2876415, 1.28167699e-010, -5.82076609e-011, 1, 0.5, 0.866025388, -1.0960446e-021, -0.866025388, 0.5, 0)
o132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o132.Color = Color3.new(0.105882, 0.164706, 0.207843)
o133.Parent = o132
o133.Scale = Vector3.new(0.388888866, 0.194444433, 0.416666687)
o134.Parent = o1
o134.Material = Enum.Material.SmoothPlastic
o134.BrickColor = BrickColor.new("Black")
o134.Position = Vector3.new(18.950964, 1.10315704, 14.3126564)
o134.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o134.Anchored = true
o134.FormFactor = Enum.FormFactor.Custom
o134.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o134.CFrame = CFrame.new(18.950964, 1.10315704, 14.3126564, 0, -5.9604659e-008, 1, 5.38120031e-018, 1, 5.9604659e-008, -1, -5.38374141e-018, 0)
o134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o134.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o134.Color = Color3.new(0.105882, 0.164706, 0.207843)
o135.Parent = o134
o135.Scale = Vector3.new(0.027777778, 0.861111045, 0.416666687)
o136.Parent = o1
o136.Material = Enum.Material.SmoothPlastic
o136.BrickColor = BrickColor.new("Black")
o136.Position = Vector3.new(18.950964, 0.969842017, 14.2187424)
o136.Rotation = Vector3.new(2.05579065e-016, -2.50796006e-006, 6.27987314e-020)
o136.Anchored = true
o136.FormFactor = Enum.FormFactor.Custom
o136.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o136.CFrame = CFrame.new(18.950964, 0.969842017, 14.2187424, 1, -1.0960446e-021, -4.3772161e-008, -7.78546341e-022, 1, -3.58803156e-018, 4.3772161e-008, -5.38120031e-018, 1)
o136.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o136.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o136.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o136.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o136.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o136.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o136.Color = Color3.new(0.105882, 0.164706, 0.207843)
o137.Parent = o136
o137.Scale = Vector3.new(0.666666687, 0.249999985, 0.74999994)
o137.MeshType = Enum.MeshType.Wedge
o138.Parent = o1
o138.Material = Enum.Material.SmoothPlastic
o138.BrickColor = BrickColor.new("Black")
o138.Position = Vector3.new(18.950964, 0.919857979, 14.2271004)
o138.Rotation = Vector3.new(-0.600734293, 89.980217, -5.99351438e-007)
o138.Anchored = true
o138.FormFactor = Enum.FormFactor.Custom
o138.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o138.CFrame = CFrame.new(18.950964, 0.919857979, 14.2271004, 4.06289615e-008, 4.25005558e-016, 0.99999994, -6.70552254e-008, 0.999999881, 4.68723726e-010, -1.00000012, -9.68575407e-008, 4.47034694e-008)
o138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o138.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o138.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o138.Color = Color3.new(0.105882, 0.164706, 0.207843)
o139.Parent = o138
o139.Scale = Vector3.new(0.888888896, 0.249999985, 0.666666687)
o140.Parent = o1
o140.Material = Enum.Material.SmoothPlastic
o140.BrickColor = BrickColor.new("Black")
o140.Position = Vector3.new(18.950964, 1.17262495, 14.2539701)
o140.Rotation = Vector3.new(30.0000038, 1.24663654e-006, -90)
o140.Anchored = true
o140.FormFactor = Enum.FormFactor.Custom
o140.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o140.CFrame = CFrame.new(18.950964, 1.17262495, 14.2539701, -4.959292e-008, 1, 2.17579128e-008, -0.866025388, -3.19989653e-008, -0.50000006, -0.50000006, -4.36557457e-008, 0.866025388)
o140.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o140.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o140.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o140.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o140.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o140.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o140.Color = Color3.new(0.105882, 0.164706, 0.207843)
o141.Parent = o140
o141.Scale = Vector3.new(0.194444433, 0.416666687, 0.194444433)
o142.Parent = o1
o142.Material = Enum.Material.SmoothPlastic
o142.BrickColor = BrickColor.new("Really black")
o142.Position = Vector3.new(18.950964, 1.10038495, 14.3182096)
o142.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o142.Anchored = true
o142.FormFactor = Enum.FormFactor.Custom
o142.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o142.CFrame = CFrame.new(18.950964, 1.10038495, 14.3182096, 0, -2.98023295e-008, 1, 5.38120031e-018, 1, 2.98023295e-008, -1, -1.91260039e-018, 0)
o142.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o142.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o142.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o142.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o142.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o142.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o142.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o143.Parent = o142
o143.Scale = Vector3.new(0.027777778, 0.722222269, 0.388888866)
o144.Parent = o1
o144.Material = Enum.Material.SmoothPlastic
o144.BrickColor = BrickColor.new("Black")
o144.Position = Vector3.new(18.950964, 0.986526012, 14.2826424)
o144.Rotation = Vector3.new(3.08320072e-016, 0, 6.27987314e-020)
o144.Anchored = true
o144.FormFactor = Enum.FormFactor.Custom
o144.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o144.CFrame = CFrame.new(18.950964, 0.986526012, 14.2826424, 1, -1.0960446e-021, 0, -1.0960446e-021, 1, -5.38120031e-018, 0, -5.38120031e-018, 1)
o144.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o144.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o144.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o144.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o144.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o144.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o144.Color = Color3.new(0.105882, 0.164706, 0.207843)
o145.Parent = o144
o145.Scale = Vector3.new(0.666666687, 0.416666687, 0.333333343)
o145.MeshType = Enum.MeshType.Wedge
o146.Parent = o1
o146.Material = Enum.Material.SmoothPlastic
o146.BrickColor = BrickColor.new("Really black")
o146.Position = Vector3.new(18.950964, 0.872651994, 14.2770796)
o146.Rotation = Vector3.new(2.18855899e-013, 2.50129006e-006, 180)
o146.Anchored = true
o146.FormFactor = Enum.FormFactor.Custom
o146.Size = Vector3.new(0.200000003, 0.200000003, 0.211111099)
o146.CFrame = CFrame.new(18.950964, 0.872651994, 14.2770796, -1, -8.74227766e-008, 4.36557457e-008, 8.74227766e-008, -1, -3.81975606e-015, 4.36557457e-008, 6.83386182e-018, 1)
o146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o146.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o146.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o147.Parent = o146
o147.Scale = Vector3.new(0.666666687, 0.277777761, 1)
o147.MeshType = Enum.MeshType.Wedge
o148.Name = "Handle"
o148.Parent = o1
o148.Material = Enum.Material.SmoothPlastic
o148.BrickColor = BrickColor.new("Really black")
o148.Transparency = 1
o148.Position = Vector3.new(18.9506321, 0.598004997, 14.4106464)
o148.Rotation = Vector3.new(180, -2.50129006e-006, 180)
o148.Anchored = true
o148.FormFactor = Enum.FormFactor.Custom
o148.Size = Vector3.new(0.200000003, 0.205555543, 0.200000003)
o148.CFrame = CFrame.new(18.9506321, 0.598004997, 14.4106464, -1, -1.0960446e-021, -4.36557457e-008, 1.41269847e-021, 1, -1.6144448e-018, 4.36557457e-008, -5.38120031e-018, -1)
o148.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o148.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o148.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o148.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o148.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o148.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o148.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o149.Name = "FireSound"
o149.Parent = o148
o149.SoundId = "rbxassetid://330704232"
o149.Volume = 10
o150.Parent = o148
o150.Scale = Vector3.new(0.99999994, 1, 0.99999994)
Victim = game.Players.LocalPlayer.Character
function Suicide ()
	    Victim.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.Angles(math.rad(25), -math.rad(0),-math.rad(0))
        Victim.Torso.Neck.C1 = CFrame.new(0,0,0)
		wait(.02)
	    Victim.Torso["Right Shoulder"].C0 = CFrame.new(2.3,.5,0) * CFrame.Angles(math.rad(-90), -math.rad(160),-math.rad(-70))
        Victim.Torso["Right Shoulder"].C1 = CFrame.new(0,0,0)
		ANGLE = -70
		ANGLE2 = -20
		for i=1,7 do
		ANGLE = ANGLE + 10
		ANGLE2 = ANGLE2 + 10
		Victim.Torso["Right Shoulder"].C0 = CFrame.new(2.3,.5,0) * CFrame.Angles(math.rad(-90), -math.rad(160),-math.rad(ANGLE))
        Victim.Torso["Right Shoulder"].C1 = CFrame.new(0,0,0)
		wait(1/30)
		end
		wait(.3)
		o1.Handle.FireSound.Parent = workspace
		workspace.FireSound:Play()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
		game.Players.LocalPlayer.Character.Head.BrickColor = BrickColor.new("Maroon")
		player = game.Players[Victim.Name]
char = player.Character
			char.Archivable = true
			local rg = char:Clone()
			rg.HumanoidRootPart:Destroy()
			rg.Name = ""
			rg.Humanoid.MaxHealth = 0

			for i, v in pairs(rg.Torso:GetChildren()) do
				if v:IsA("Glue") or v:IsA("Motor6D") then
					v:Destroy()
				end
			end
									
			local n = Instance.new("Glue", rg.Torso)
			n.Name = "Neck"
			n.Part0 = rg.Torso
			n.Part1 = rg.Head
			n.C0 = CFrame.new(0, 1, 0)
			n.C1 = CFrame.new(0, -0.5, 0)

			
			local rs = Instance.new("Glue", rg.Torso)
			rs.Name = "Right Shoulder"
			rs.Part0 = rg.Torso
			rs.Part1 = rg["Right Arm"]
			rs.C0 = CFrame.new(1.5, 0.5, 0)
			rs.C1 = CFrame.new(0, 0.5, 0)
			local ls = Instance.new("Glue", rg.Torso)
			ls.Name = "Left Shoulder"
			ls.Part0 = rg.Torso
			ls.Part1 = rg["Left Arm"]
			ls.C0 = CFrame.new(-1.5, 0.5, 0)
			ls.C1 = CFrame.new(0, 0.5, 0)
			
			local rh = Instance.new("Glue", rg.Torso)
			rh.Name = "Right Hip"
			rh.Part0 = rg.Torso
			rh.Part1 = rg["Right Leg"]
			rh.C0 = CFrame.new(0.5, -1, 0)
			rh.C1 = CFrame.new(0, 1, 0)
			local lh = Instance.new("Glue", rg.Torso)
			lh.Name = "Left Hip"
			lh.Part0 = rg.Torso
			lh.Part1 = rg["Left Leg"]
			lh.C0 = CFrame.new(-0.5, -1, 0)
			lh.C1 = CFrame.new(0, 1, 0)
			char.Torso:Destroy()
			char.Head:Destroy()
			char["Left Leg"]:Destroy()
			char["Left Arm"]:Destroy()
			char["Right Leg"]:Destroy()
			char["Right Arm"]:Destroy()
			rg.Parent = game.Workspace
			rg.Head.BrickColor = BrickColor.new("Maroon")
			rg.Torso.Neck:Destroy()
						for i, v in pairs(rg.Torso:GetChildren()) do
				if v:IsA("Motor6D") then
					v:Destroy()
				end
			end
function DEATH ()
OHHNELLY = Instance.new("Part")
OHHNELLY.Parent = rg
OHHNELLY.Anchored = false
OHHNELLY.Material = Enum.Material.SmoothPlastic
OHHNELLY.BrickColor = BrickColor.new("Maroon")
OHHNELLY.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
OHHNELLY.Position = rg.Head.Position
OHHNELLY.Color = Color3.new(0.458824, 0, 0)
OHHNELLY.BackSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.RightSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.TopSurface = Enum.SurfaceType.SmoothNoOutlines
end
for i=1, 10 do
	DEATH()
	print"BLOODY"
	wait()
end
end
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(o1.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(o1)
end

o1.Equipped:connect(Finale)
o1.Unequipped:connect(Finale)
o1.Activated:connect(Suicide)
Finale()
end)

TeslaHubBut.Name = "TeslaHubBut"
TeslaHubBut.Parent = FrixonHubScripts
TeslaHubBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TeslaHubBut.BorderSizePixel = 0
TeslaHubBut.Position = UDim2.new(0.518032789, 0, 0.199063227, 0)
TeslaHubBut.Size = UDim2.new(0, 122, 0, 49)
TeslaHubBut.Font = Enum.Font.SourceSans
TeslaHubBut.Text = "Jailbreak Tesla Hub"
TeslaHubBut.TextColor3 = Color3.fromRGB(255, 255, 255)
TeslaHubBut.TextSize = 14.000
TeslaHubBut.MouseButton1Down:connect(function() 
	if game.PlaceId ~= 606849621 then
	game:GetService("Players").LocalPlayer:Kick("ur not in jailbreak")
	return
end
if getgenv().TeslaLoaded then
	require(game:GetService("ReplicatedStorage").Game.Notification).new({
		Text = "Tesla is already loaded!",
		Duration = 3
	})
	return
end
wait(0.025)
getgenv().TeslaLoaded = true
local NiggaToggle = {}
wait(0.1)
--api began
table.find = function(t, val)
	for i,v in pairs(t) do
		if v == val then
			return i
		end
	end
end
wrapglobal("getrenv")
wrapglobal("getfenv")
wrapglobal("getgc")
getrenv().lmao = function() return 0/0 end
local Client = {}
Client.Doors = {}
Client.Hashes = {}
for i, v in pairs(getgc(true)) do
    if type(v) == "table" then
        if rawget(v, "Event") and rawget(v, "Fireworks") then
            Client.em = v.em
            Client.Network = v.Event
            Client.Fireworks = v.Fireworks
            Client.GetVehiclePacket = v.GetVehiclePacket
        elseif rawget(v, "OpenFun") and rawget(v, "State") then
			table.insert(Client.Doors, v)
		elseif rawget(v, "ItemData") then
			Client.Guns = v.ItemData
        elseif rawget(v, "Ragdoll") then
            Client.Falling = v
		elseif rawget(v, "Part") and type(rawget(v, "Fun")) == "function" then
			if v.Part.Name == "Donut" then
				Client.GiveDonut = v.Fun 
			elseif v.Part.Name == "JetPackGiver" then
				Client.GiveJetPack = v.Fun
            end
        elseif type(rawget(v, "Heli")) == "table" then
            Client.Vehicle = v
        end
    elseif type(v) == "function" then
        if getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript then -- fetching localscript functions
			local con = getconstants(v)
			if table.find(con, "hems") and #con == 1 then
				Client.AllHashes = getupvalues(v)[2]
			elseif table.find(con, "SequenceRequireState") then
				Client.OpenDoor = v
            elseif table.find(con, "LastVehicleExit") and table.find(con, "tick") then
                Client.ExitCar = v
            elseif table.find(con, "NitroLoop") and table.find(con, "Nitro1") then
                Client.Nitro = v
            elseif table.find(con, "Punch") then
                Client.GuiFunc = v
            elseif table.find(con, "Play") and table.find(con, "Source") and table.find(con, "FireServer") then
                Client.PlaySound = v
            elseif table.find(con, "ShouldBreakout") and #con == 3 then
                Client.PoliceFunction = v
            elseif table.find(con, "PlusCash") then
                Client.PlusCash = v
            elseif table.find(con, "Pick up %s") and not table.find(con, "briefcase") then
                Client.PickItem = getupvalues(v)[1]
            end
        elseif getfenv(v).script == game:GetService("ReplicatedStorage").Game.Inventory then -- fetching inventory function (godmode)
            local con = getconstants(v)
			if table.find(con, "GetLocalVehiclePacket") then
				Client.Unequip = v
            end
        elseif getfenv(v).script == game:GetService("ReplicatedStorage").Game.Garage.GarageUI then -- fetching garage function
            local con = getconstants(v)
            if table.find(con, "Type") and table.find(con, "Make") and table.find(con, "FireServer") then
                Client.SpawnVehicle = v
            end
        elseif getfenv(v).script == game:GetService("ReplicatedStorage").Game.GunShop then -- fetching gunshop function
            local con = getconstants(v)
            if table.find(con, "CanGrab") and table.find(con, "FireServer") then
				Client.GiveGun = v
            end
        elseif type(v) == "function" and getfenv(v).script == game:GetService("ReplicatedStorage").Game.NukeControl then -- fetching nukecontrol
			local con = getconstants(v)
			if table.find(con, "Nuke") and table.find(con, "Shockwave") then
				Client.Nuke = v
			end
        end
    end
end
Client.Arrest = function(plr)
	Client.Network:FireServer(getrenv().ArrestHash, plr.Name)
end
Client.BreakOut = function(plr)
	Client.Network:FireServer(getrenv().BreakOut, plr.Name)
end
Client.PickPocket = function(plr)
	Client.Network:FireServer(getrenv().PickPocket, plr.Name)
end
Client.Hashes.ExitCar = getrenv().ExitCar
Client.Hashes.EatDonut = getrenv().EatDonut
Client.Hashes.TeamChange = getrenv().TeamChange or ""
Client.Hashes.Eject = getrenv().EjectHash
Client.Hashes.Taze = getrenv().TazeHash
Client.Hashes.Equip = getrenv().EquipHash 
Client.Hashes.Damage = getrenv().DamageHash
function Kill(plr)
    assert(typeof(plr) == "Instance" and plr:IsA("Player"), "not player")
    Client.GiveGun({ Part = { Parent = { Name = "PlasmaPistol" } }, CanGrab = true }, true)
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HotbarGui.Container:GetChildren()) do
        if v:IsA("ImageButton") and v.Icon.Image == "rbxassetid://4751591788" then
            Client.Network:FireServer(Client.Hashes.Equip, {i = v.Name, Name = "PlasmaPistol"})
            pcall(function()
                if plr.Character then
                    for i = 1, 10 do
                        Client.Network:FireServer(Client.Hashes.Damage, plr.Character.HumanoidRootPart.Position, plr.Character.HumanoidRootPart)
                    end
                end
            end)
        end
    end
end
function TP(cframe)
	if Client.GetVehiclePacket() then
		if Client.GetVehiclePacket().Model.Name ~= "Volt" or Client.GetVehiclePacket().Model.Name ~= "Patrol" then
			Client.GetVehiclePacket().Model:SetPrimaryPartCFrame(cframe);
			return
		else
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
			return
		end
    else
		Client.Network:FireServer(Client.Hashes.ExitCar)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
		return
	end
end
function Punch(num)
    setconstant(Client.GuiFunc, table.find(getconstants(Client.GuiFunc), "tick"), "lmao")
    for i = 1, num do
        Client.GuiFunc({Name = "Punch"}, true)
    end
    setconstant(Client.GuiFunc, table.find(getconstants(Client.GuiFunc), "lmao"), "tick")
end
function Equip(name)
	local thing
	for i,v in pairs(getgc(true)) do
		if type(v) == "table" and rawget(v, 'i') and rawget(v, 'Frame') and rawget(v, 'Name') then
			if v.Name == name then
				thing = v
			end
		end
	end
	require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Equip(game:GetService("Players").LocalPlayer, thing)
	return
end
function GrabClickGun()
    for i,v in pairs(workspace.Givers:GetChildren()) do
        if v.Name == "Guns" then
            fireclickdetector(v.ClickDetector)
        end
    end
    return
end
local Colors = {}
for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.Color).Items) do
	table.insert(Colors, v.Name)
end
function zigzag(X) 
    return math.acos(math.cos(X*math.pi))/math.pi 
end
local counter = 0
local hatclick = (function()
	for i,v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
		if v.Name == 'Station' then
			if v:FindFirstChild("Item").Value == 'HatPolice' then
				return v.ClickDetector
			end
		end
	end
end)()
function firehatoff()
    fireclickdetector(hatclick)
    local Hat = game:GetService('Players').LocalPlayer.Character:WaitForChild("HatPolice")
    Hat.Parent = workspace
end
function Taze(plr)
	pcall(function()
		if not plr:IsA("Player") then return end
		if plr.Character then
			Client.Network:FireServer(Client.Hashes.Taze, plr.Name, plr.Character.HumanoidRootPart, plr.Character.HumanoidRootPart.Position)
		end
	end)
end
require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Fake = function() return end
function sendn(title, text, time)
	game.StarterGui:SetCore("SendNotification", {
		Title = title;
		Text = text; 
		Duration = time; 
	})
end
function SendN(text)
	require(game:GetService("ReplicatedStorage").Game.Notification).new({
		Text = text,
	})
end 
local oldFS = Client.Network.FireServer
Client.Network.FireServer = function(p, ...)
    local args = {...}
    if args[2] and type(args[2]) == "table" and rawget(args[2], "Name") == "Cuffed" and NiggaToggle.AntiArrest then
        Client.BreakOut(game:GetService("Players").LocalPlayer);
        require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Unequip();
        return nil
    end;
    return oldFS(p, ...);
end
local oldRagdoll = Client.Falling.Ragdoll
Client.Falling.Ragdoll = function(...)
	if NiggaToggle.AntiRagdoll then
		return wait(9e9)
	else
		return oldRagdoll(...)
	end
end
local whitelisted = {}
local locations = {
    Stores = {
        {'Jewelry Out', CFrame.new(156.103851, 18.540699, 1353.72388)},
        {'Jewelry In', CFrame.new(133.300705, 17.9375954, 1316.42407)},
        {'Bank Out', CFrame.new(11.6854906, 17.8929214, 788.188171)},
        {'Bank In', CFrame.new(24.6513691, 19.4347649, 853.291687)},
        {'Museum Out', CFrame.new(1103.53406, 138.152878, 1246.98511)},
        {'Museum In', CFrame.new(1071.72, 102.8, 1191.9)},
        {'Donut Shop', CFrame.new(270.763885, 18.4229183, -1762.90149)},
		{'Gas Station', CFrame.new(-1584.1051, 18.4732189, 721.38739)},
		{'Power Plant', CFrame.new(691.559326, 37.6575089, 2362.05591)},
    },

    Locations = {
        {'Prison Cells', CFrame.new(-1461.07605, -0.318537951, -1824.14917)},
        {'Prison Yard', CFrame.new(-1219.36316, 17.7750931, -1760.8584)},
        {'Prison Sewer', CFrame.new(-1050.70667, 0.7002424, -1498.72766)},
        {'Prison Parking', CFrame.new(-1173.36951, 18.698061, -1533.47656)},
        {'Gun Shop', CFrame.new(-27.8670673, 17.7929249, -1774.66882)},
        {'1M Shop', CFrame.new(388.804688, 17.5929279, -1701.1698)},
        {'Volcano Base', CFrame.new(1726.72266, 50.4146309, -1745.76196)},
        {'City Base', CFrame.new(-244.824478, 17.8677788, 1573.81616)},
        {'Police HQ1', CFrame.new(-1134.69604, 17.9251575, -1586.79395)},
        {'Police HQ2', CFrame.new(738.103577, 38.1275024, 1134.48059)},
        {'Military Base', CFrame.new(766.283386, 18.0144463, -324.15921)},
        {'Evil Lair', CFrame.new(1735.52405, 18.1646328, -1726.05249)},
        {'Secret Agent Base', CFrame.new(1506.60754, 69.8824005, 1634.42456)},
        {'Garage', CFrame.new(-336.791779, 18.2407684, 1137.49451)},
        {'Glider Shop', CFrame.new(137.43399, 18.1547852, -1768.24658)},
        {'Lookout', CFrame.new(1328.05725, 166.614426, 2609.93457)},
		{'Airport', CFrame.new(-1227.47449, 64.4552231, 2787.64233)},
		{'Boat Cave', CFrame.new(1870.72498, 31.4386101, 1896.98865)},
		{'Port', CFrame.new(-423.029663, 21.2136765, 2023.55713)},
		{'Volcano Inside', CFrame.new(1704.46484, 25.0370979, -1775.46484)},
    },

    Vehicles = {
        {'Prison Camaro', CFrame.new(-951.755493, 18.5451126, -1446.42664)},
        {'Lamborghini', CFrame.new(146.728821, 17.5929279, 774.655396)},
        {'Bugatti', CFrame.new(241.109451, 17.6066723, 1362.49316)},
        {'McLaren', CFrame.new(597.850708, 37.712925, 1649.81897)},
        {'Pickup Truck', CFrame.new(-1543.02686, 18.3732185, 721.518494)},
        {'Model3', CFrame.new(-117.721481, 17.5907402, 547.516052)},
        {'Mini Cooper', CFrame.new(760.116577, 17.8929214, -1228.13806)},
        {'Dirtbike', CFrame.new(1643.61707, 18.8864899, 233.026291)},
        {'SUV', CFrame.new(-1066.26172, 18.6751556, -1476.00732)},
        {'Dune Buggy', CFrame.new(580.013916, 17.1554928, -458.795807)},
        {'ATV', CFrame.new(-1452.651, 24.8182373, 202.176361)},
        {'Mustang', CFrame.new(-97.1472931, 18.2549458, -1724.10986)},
        {'Porsche', CFrame.new(1111.16809, 101.783577, 1296.94312)},
        {'Ambulance', CFrame.new(-139.396881, 18.1840897, 1098.80212)},
        {'UFO', CFrame.new(775.515747, 18.3745003, -142.552948)},
        {'SWAT Van', CFrame.new(-1356.85388, 17.9232101, -1534.93152)},
        {'Wraith', CFrame.new(1687.08911, 50.4146309, -1704.4657)},
        {'Ferrari', CFrame.new(-1500.52051, 49.4602127, 1804.38611)},
        {'Classic', CFrame.new(1194.28406, 106.283951, 1176.69458)},
        {'Audi R8', CFrame.new(1714.05151, 18.646801, -1691.49756)},
        {'Raptor', CFrame.new(1520.34692, 73.6122742, 1741.82507)},
        {'Police Motorcycle', CFrame.new(718.890076, 38.3909264, 1072.3656)},
        {'Firetruck', CFrame.new(-967.847168, 33.1665268, 1320.79968)},
        {'Jet Skis', CFrame.new(-505.554657, 18.6864834, 812.503174)},
    },
}
local blur = Instance.new("BlurEffect", game.Lighting)
blur.Size = 0
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
ScreenGui.Parent = game.CoreGui
ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.5, -(303 / 2), 0.5, -(263 / 2))
ImageLabel.Rotation = 0
ImageLabel.Size = UDim2.new(0, 303,0, 263)
ImageLabel.Image = "rbxassetid://4733685600"
ImageLabel.ImageTransparency = 1
for i = 1, 50, 2 do
    blur.Size = i
    ImageLabel.ImageTransparency = ImageLabel.ImageTransparency - 0.1
    wait()
end
wait(0.1)

for i = 1, 50, 2 do
    blur.Size = 50 - i
    ImageLabel.ImageTransparency = ImageLabel.ImageTransparency + 0.1
    wait()
end
blur:Destroy()
ScreenGui:Destroy()
local library = {}
local toggleoff = Color3.fromRGB(255, 60, 60)
local toggleon = Color3.fromRGB(98, 255, 161)
local UIS = game:GetService("UserInputService")
function library:Create(Text)
    local ScreenGui = Instance.new('ScreenGui')
    local HomeFrame = Instance.new("ImageLabel")
    local TopDesign = Instance.new("ImageLabel")
    local TopDesign_2 = Instance.new("ImageLabel")
    local TextLabel = Instance.new("TextLabel")
    local TabContainer = Instance.new("Frame")
    local Container = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local binding = false
    ScreenGui.Name = 'Tesla'
    ScreenGui.Parent = game.CoreGui

    HomeFrame.Name = "HomeFrame"
    HomeFrame.Parent = ScreenGui
    HomeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HomeFrame.BackgroundTransparency = 1.000
    HomeFrame.Position = UDim2.new(0.0438378826, 0, 0.152298853, 0)
    HomeFrame.Size = UDim2.new(0, 412, 0, 290)
    HomeFrame.Image = "rbxassetid://3570695787"
    HomeFrame.ImageColor3 = Color3.fromRGB(22, 22, 22)
    HomeFrame.ScaleType = Enum.ScaleType.Slice
    HomeFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    HomeFrame.SliceScale = 0.05

    TopDesign.Name = "TopDesign"
    TopDesign.Parent = HomeFrame
    TopDesign.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopDesign.BackgroundTransparency = 1.000
    TopDesign.Size = UDim2.new(0, 412, 0, 44)
    TopDesign.Image = "rbxassetid://3570695787"
    TopDesign.ImageColor3 = Color3.fromRGB(26, 26, 26)
    TopDesign.ScaleType = Enum.ScaleType.Slice
    TopDesign.SliceCenter = Rect.new(100, 100, 100, 100)
    TopDesign.SliceScale = 0.05

    TopDesign_2.Name = "TopDesign"
    TopDesign_2.Parent = HomeFrame
    TopDesign_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopDesign_2.BackgroundTransparency = 1.000
    TopDesign_2.Size = UDim2.new(0, 412, 0, 5)
    TopDesign_2.Image = "rbxassetid://3570695787"
    TopDesign_2.ImageColor3 = Color3.fromRGB(98, 255, 161)
    TopDesign_2.ScaleType = Enum.ScaleType.Slice
    TopDesign_2.SliceCenter = Rect.new(100, 100, 100, 100)
    TopDesign_2.SliceScale = 0.05
    TextLabel.Parent = HomeFrame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0, 0, 0, 5)
    TextLabel.Size = UDim2.new(0, 120, 0, 40)
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = Text
    TextLabel.TextColor3 = Color3.fromRGB(98, 255, 161)
    TextLabel.TextSize = 18.000
    game:GetService("RunService").Stepped:connect(function()
        TopDesign_2.ImageColor3  = Color3.fromHSV(zigzag(counter),1,1)
    	TextLabel.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
    	counter = counter + 0.002
    end)

    TabContainer.Name = "TabContainer"
    TabContainer.Parent = HomeFrame
    TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainer.BackgroundTransparency = 1.000
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(0.29126215, 0, 0.0219298247, 0)
    TabContainer.Size = UDim2.new(0, 292, 0, 40)

    UIListLayout.Parent = TabContainer
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    Container.Name = "Container"
    Container.Parent = HomeFrame
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BackgroundTransparency = 1.000
    Container.BorderSizePixel = 0
    Container.Position = UDim2.new(0, 0, 0.173076928, 0)
    Container.Size = UDim2.new(0, 412, 0, 215)

    local function dodragger()
        local script = Instance.new('LocalScript', HomeFrame)
        local UILIB = {}
        UILIB = script.Parent
        local UserInputService = game:GetService("UserInputService")
        local dragging
        local dragInput
        local dragStart
        local startPos
        local function update(input)
            local delta = input.Position - dragStart
            UILIB:TweenPosition(UDim2.new(startPos.X.Scale,startPos.X.Offset + delta.X,startPos.Y.Scale,startPos.Y.Offset + delta.Y),"Out", "Linear", 0.01, true)
        end
        UILIB.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or
                input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = UILIB.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
        UILIB.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        UserInputService.InputChanged:Connect(
            function(input)
                if input == dragInput and dragging then
                    update(input)
                end
            end)
        end
    coroutine.wrap(dodragger)()

    local tabshit = {}
    function tabshit:CreateTab(Text)
        local Frame = Instance.new("Frame")
        local TextButton = Instance.new("TextLabel")
        local SecContainer = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")

        Frame.Parent = TabContainer
        Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0, 175, 0, 110)
        Frame.Size = UDim2.new(0, 103, 0, 40)

        TextButton.Name = "TextButton"
        TextButton.Parent = Frame
        TextButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderColor3 = Color3.fromRGB(56, 56, 56)
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(0, 103, 0, 40)
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.Text = Text
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 15.000

        SecContainer.Name = Text
        SecContainer.Parent = Container
        SecContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SecContainer.BackgroundTransparency = 1.000
        SecContainer.BorderSizePixel = 0
        SecContainer.Position = UDim2.new(0, 5, 0, 7)
        SecContainer.Size = UDim2.new(0, 116, 0, 201)

        UIListLayout_2.Parent = SecContainer
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

        local function JEOZBI_fake_script()
            local script = Instance.new('LocalScript', TabContainer)
    
            local parent = script.Parent
            local value = 0
            for _, v in pairs(parent:GetChildren()) do
                if v:IsA('Frame') then value = value + 1 end
            end
            wait(.25)
            local storedshit = value
            value = value * 292 / value
            storedshit = value / storedshit
            for i, v in pairs(parent:GetChildren()) do
                if v:IsA('Frame') then
                    v.Size = UDim2.new(0, storedshit, 0, 40)
                    v.TextButton.Size = UDim2.new(0, storedshit, 0, 40)
                end
            end
        end
        coroutine.wrap(JEOZBI_fake_script)()

        local section = {}

        function section:CreateSection(text)

            local Frame_3 = Instance.new("ImageLabel")
            local TextButton_3 = Instance.new("TextButton")
            local ShitContainer = Instance.new("ImageLabel")
            local ScrollingFrame = Instance.new("ScrollingFrame")
            local UIListLayout_3 = Instance.new("UIListLayout")

            Frame_3.Name = text
            Frame_3.Parent = SecContainer
            Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Frame_3.BackgroundTransparency = 1.000
            Frame_3.Size = UDim2.new(0, 116, 0, 32)
            Frame_3.Image = "rbxassetid://3570695787"
            Frame_3.ImageColor3 = Color3.fromRGB(26, 26, 26)
            Frame_3.ScaleType = Enum.ScaleType.Slice
            Frame_3.SliceCenter = Rect.new(100, 100, 100, 100)
            Frame_3.SliceScale = 0.05

            TextButton_3.Parent = Frame_3
            TextButton_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
            TextButton_3.BackgroundTransparency = 1.000
            TextButton_3.BorderColor3 = Color3.fromRGB(56, 56, 56)
            TextButton_3.BorderSizePixel = 0
            TextButton_3.Size = UDim2.new(0, 116, 0, 32)
            TextButton_3.AutoButtonColor = false
            TextButton_3.Font = Enum.Font.SourceSansBold
            TextButton_3.Text = text
            TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_3.TextSize = 15.000
            TextButton_3.MouseButton1Down:connect(function()
                for i, v in pairs(Container:GetChildren()) do
                    if v:IsA('ImageLabel') then
                        v.Visible = false
                        if v.Name == text then
                            v.Visible = true
                        end
                    end
                end
            end)

            ShitContainer.Name = text
            ShitContainer.Parent = Container
            ShitContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ShitContainer.BackgroundTransparency = 1.000
            ShitContainer.Position = UDim2.new(0, 125, 0, 7)
            ShitContainer.Size = UDim2.new(0, 282, 0, 225)
            ShitContainer.Image = "rbxassetid://3570695787"
            ShitContainer.ImageColor3 = Color3.fromRGB(26, 26, 26)
            ShitContainer.ScaleType = Enum.ScaleType.Slice
            ShitContainer.SliceCenter = Rect.new(100, 100, 100, 100)
            ShitContainer.SliceScale = 0.05

            ScrollingFrame.Parent = ShitContainer
            ScrollingFrame.Active = true
            ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollingFrame.BackgroundTransparency = 1.000
            ScrollingFrame.BorderSizePixel = 0
            ScrollingFrame.Position = UDim2.new(0.0106382975, 0, 0.0298507456, 0)
            ScrollingFrame.Size = UDim2.new(0, 275, 0, 215)
            ScrollingFrame.ScrollBarThickness = 0

            UIListLayout_3.Parent = ScrollingFrame
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_3.Padding = UDim.new(0, 4)

            local function aidsppshit()
                local script = Instance.new('LocalScript', ScrollingFrame)

                local aids = script.Parent
                wait(1.5)
                aids.CanvasSize = UDim2.new(0, 0, 0, aids.UIListLayout.AbsoluteContentSize.Y)
            end
            coroutine.wrap(aidsppshit)()

            local Toolshit = {}
            function Toolshit:Button(text, callback)
                local Frame_4 = Instance.new("ImageLabel")
                local TextButton_4 = Instance.new("TextButton")
                local callback = callback or function() end

                Frame_4.Name = "Frame"
                Frame_4.Parent = ScrollingFrame
                Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_4.BackgroundTransparency = 1.000
                Frame_4.Size = UDim2.new(0, 275, 0, 32)
                Frame_4.Image = "rbxassetid://3570695787"
                Frame_4.ImageColor3 = Color3.fromRGB(22, 22, 22)
                Frame_4.ScaleType = Enum.ScaleType.Slice
                Frame_4.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_4.SliceScale = 0.05

                TextButton_4.Parent = Frame_4
                TextButton_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_4.BackgroundTransparency = 1.000
                TextButton_4.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_4.BorderSizePixel = 0
                TextButton_4.Size = UDim2.new(0, 275, 0, 32)
                TextButton_4.AutoButtonColor = false
                TextButton_4.Font = Enum.Font.SourceSansBold
                TextButton_4.Text = text
                TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_4.TextSize = 15.000
                TextButton_4.MouseButton1Down:connect(function() 
                    pcall(callback)
                end)
            end

            function Toolshit:Bind(text, callback, keybind_options)
                local keybind_data = {}
                local Frame_4 = Instance.new("ImageLabel")
                local TextButton_4 = Instance.new("TextButton")
                local callback = callback or function() end
                keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
                keybind_options = {
                    ["standard"] = keybind_options.standard or Enum.KeyCode.RightShift,
                }

                Frame_4.Name = "Frame"
                Frame_4.Parent = ScrollingFrame
                Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_4.BackgroundTransparency = 1.000
                Frame_4.Size = UDim2.new(0, 275, 0, 32)
                Frame_4.Image = "rbxassetid://3570695787"
                Frame_4.ImageColor3 = Color3.fromRGB(22, 22, 22)
                Frame_4.ScaleType = Enum.ScaleType.Slice
                Frame_4.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_4.SliceScale = 0.05

                TextButton_4.Parent = Frame_4
                TextButton_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_4.BackgroundTransparency = 1.000
                TextButton_4.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_4.BorderSizePixel = 0
                TextButton_4.Size = UDim2.new(0, 275, 0, 32)
                TextButton_4.AutoButtonColor = false
                TextButton_4.Font = Enum.Font.SourceSansBold
                TextButton_4.Text = text.." ".."["..keybind_options.standard.Name.."]"
                TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_4.TextSize = 15.000
                local shortkeys = {
                    RightControl = 'RightCtrl',
                    LeftControl = 'LeftCtrl',
                    LeftShift = 'LShift',
                    RightShift = 'RShift',
                    MouseButton1 = "Mouse1",
                    MouseButton2 = "Mouse2"
                }
                local keybind = keybind_options.standard

                function keybind_data:Set(Keybind)
                    local key = shortkeys[Keybind.Name] or Keybind.Name
                    TextButton_4.Text = text.." ".."["..key.."]"
                    keybind = Keybind
                end

                UIS.InputBegan:Connect(function(a, b)
                    if binding then
                        spawn(function()
                            wait()
                            binding = false
                        end)
                        return
                    end
                    if a.KeyCode == keybind and not b then
                        pcall(callback, keybind)
                    end
                end)

                keybind_data:Set(keybind_options.standard)

                TextButton_4.MouseButton1Click:Connect(function()
                    if binding then return end
                    TextButton_4.Text = "..."
                    binding = true
                    local a, b = UIS.InputBegan:Wait()
                    keybind_data:Set(a.KeyCode)
                end)

                return keybind_data
            end

            function Toolshit:Label(text)
                local Frame_4 = Instance.new("ImageLabel")
                local TextButton_4 = Instance.new("TextLabel")
                Frame_4.Name = "Frame"
                Frame_4.Parent = ScrollingFrame
                Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_4.BackgroundTransparency = 1.000
                Frame_4.Size = UDim2.new(0, 275, 0, 32)
                Frame_4.Image = "rbxassetid://3570695787"
                Frame_4.ImageColor3 = Color3.fromRGB(36, 36, 36)
                Frame_4.ScaleType = Enum.ScaleType.Slice
                Frame_4.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_4.SliceScale = 0.05

                TextButton_4.Parent = Frame_4
                TextButton_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_4.BackgroundTransparency = 1.000
                TextButton_4.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_4.BorderSizePixel = 0
                TextButton_4.Size = UDim2.new(0, 275, 0, 32)
                TextButton_4.Font = Enum.Font.SourceSansBold
                TextButton_4.Text = text
                TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_4.TextSize = 15.000
            end

            function Toolshit:Toggle(title, description, callback)
                local callback = callback or function() end
                local actions = {}
                local enabled = false
                local Frame_7 = Instance.new("ImageLabel")
                local Frame_8 = Instance.new("ImageLabel")
                local TextButton_7 = Instance.new("TextButton")
                local TextLabel_3 = Instance.new("TextLabel")

                Frame_7.Name = "Frame"
                Frame_7.Parent = ScrollingFrame
                Frame_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_7.BackgroundTransparency = 1.000
                Frame_7.ClipsDescendants = true
                Frame_7.Position = UDim2.new(0, 0, 0.369230777, 0)
                Frame_7.Size = UDim2.new(0, 275, 0, 50)
                Frame_7.Image = "rbxassetid://3570695787"
                Frame_7.ImageColor3 = Color3.fromRGB(22, 22, 22)
                Frame_7.ScaleType = Enum.ScaleType.Slice
                Frame_7.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_7.SliceScale = 0.05

                Frame_8.Name = "Frame"
                Frame_8.Parent = Frame_7
                Frame_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_8.BackgroundTransparency = 1.000
                Frame_8.ClipsDescendants = true
                Frame_8.Position = UDim2.new(0, 249, 0, 6)
                Frame_8.Size = UDim2.new(0, 20, 0, 20)
                Frame_8.Image = "rbxassetid://3570695787"
                Frame_8.ImageColor3 = Color3.fromRGB(255, 60, 60)
                Frame_8.ScaleType = Enum.ScaleType.Slice
                Frame_8.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_8.SliceScale = 0.05

                TextButton_7.Parent = Frame_7
                TextButton_7.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_7.BackgroundTransparency = 1.000
                TextButton_7.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_7.BorderSizePixel = 0
                TextButton_7.Size = UDim2.new(0, 275, 0, 32)
                TextButton_7.AutoButtonColor = false
                TextButton_7.Font = Enum.Font.SourceSansBold
                TextButton_7.Text = title
                TextButton_7.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_7.TextSize = 15.000

                TextLabel_3.Parent = Frame_7
                TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_3.BackgroundTransparency = 1.000
                TextLabel_3.Position = UDim2.new(0, 9, 0, 28)
                TextLabel_3.Size = UDim2.new(0, 266, 0, 22)
                TextLabel_3.Font = Enum.Font.SourceSansBold
                TextLabel_3.Text = description
                TextLabel_3.TextColor3 = Color3.fromRGB(111, 111, 111)
                TextLabel_3.TextSize = 14.000
                TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

                function fire()
                    enabled = not enabled
                    Frame_8.ImageColor3 = enabled and toggleon or toggleoff
                    pcall(callback, enabled)
                end

                TextButton_7.MouseButton1Down:connect(fire)

                function actions:Set(arg)
                    enabled = arg
                    Frame_8.ImageColor3 = enabled and toggleon or toggleoff
                    pcall(callback, arg)
                end
                return actions
            end

            function Toolshit:Box(text, callback)
                local callback = callback or function() end
                local Frame_9 = Instance.new("ImageLabel")
                local TextBox = Instance.new("TextBox")

                Frame_9.Name = "Frame"
                Frame_9.Parent = ScrollingFrame
                Frame_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_9.BackgroundTransparency = 1.000
                Frame_9.ClipsDescendants = true
                Frame_9.Position = UDim2.new(0, 0, 0.184615389, 0)
                Frame_9.Size = UDim2.new(0, 275, 0, 32)
                Frame_9.Image = "rbxassetid://3570695787"
                Frame_9.ImageColor3 = Color3.fromRGB(22, 22, 22)
                Frame_9.ScaleType = Enum.ScaleType.Slice
                Frame_9.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_9.SliceScale = 0.05

                TextBox.Parent = Frame_9
                TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.BackgroundTransparency = 1.000
                TextBox.BorderSizePixel = 0
                TextBox.Size = UDim2.new(0, 275, 0, 32)
                TextBox.Font = Enum.Font.SourceSansBold
                TextBox.PlaceholderText = text
                TextBox.Text = ""
                TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.TextSize = 15.000
                TextBox.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss)
                    if enterPressed then
                        if #TextBox.Text > 0 then
                            pcall(callback, TextBox.Text)
                            TextBox.Text = ""
                        end
                    end
                end)
            end
            function Toolshit:Dropdown(text)
                local Frame_5 = Instance.new("ImageLabel")
                local TextLabel_2 = Instance.new("TextLabel")
                local TextButton_5 = Instance.new("TextButton")
                local Frame_6 = Instance.new("ImageLabel")
                local UIListLayout_4 = Instance.new("UIListLayout")

                Frame_5.Name = "Frame"
                Frame_5.Parent = ScrollingFrame
                Frame_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_5.BackgroundTransparency = 1.000
                Frame_5.ClipsDescendants = true
                Frame_5.Position = UDim2.new(0, 0, 0.184615389, 0)
                Frame_5.Size = UDim2.new(0, 275, 0, 32)
                Frame_5.Image = "rbxassetid://3570695787"
                Frame_5.ImageColor3 = Color3.fromRGB(22, 22, 22)
                Frame_5.ScaleType = Enum.ScaleType.Slice
                Frame_5.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_5.SliceScale = 0.05

                TextLabel_2.Parent = Frame_5
                TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.BackgroundTransparency = 1.000
                TextLabel_2.BorderSizePixel = 0
                TextLabel_2.Size = UDim2.new(0, 275, 0, 32)
                TextLabel_2.Font = Enum.Font.SourceSansBold
                TextLabel_2.Text =
                    "                                                                                   v"
                TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.TextSize = 15.000
                TextLabel_2.TextWrapped = true

                TextButton_5.Parent = Frame_5
                TextButton_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_5.BackgroundTransparency = 1.000
                TextButton_5.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_5.BorderSizePixel = 0
                TextButton_5.Size = UDim2.new(0, 275, 0, 32)
                TextButton_5.AutoButtonColor = false
                TextButton_5.Font = Enum.Font.SourceSansBold
                TextButton_5.Text = text
                TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_5.TextSize = 15.000

                Frame_6.Name = "Frame"
                Frame_6.Parent = Frame_5
                Frame_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_6.BackgroundTransparency = 1.000
                Frame_6.ClipsDescendants = false
                Frame_6.Position = UDim2.new(0, 0, 0, 32)
                Frame_6.Size = UDim2.new(0, 275, 0, 32)
                Frame_6.Image = "rbxassetid://3570695787"
                Frame_6.ImageColor3 = Color3.fromRGB(22, 22, 22)
                Frame_6.ScaleType = Enum.ScaleType.Slice
                Frame_6.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_6.SliceScale = 0.05

                UIListLayout_4.Parent = Frame_6
                UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

                function dropdownshit()
                        local script = Instance.new("LocalScript",TextButton_5)
                        local TextButton_5 = script.Parent
                        local container = script.Parent.Parent.Frame
                        local box = script.Parent.Parent.Parent
                        local value = 0
                        local toggled = false
                        wait(1)
                        for _,v in pairs(container:GetChildren()) do
                            if v:IsA('TextButton')  then
                                value = value + 1
                            end
                        end
                        wait(1)
                        value = value * 32
                        value = value + 32
                        TextButton_5.MouseButton1Down:connect(function()
                        if toggled == false then
                            toggled = true
                            Frame_5:TweenSize(UDim2.new(0, 275, 0, value), 'Out','Linear', 0.25)
                            wait(0.25)
                            box.CanvasSize = UDim2.new(0, 0, 0, box.UIListLayout.AbsoluteContentSize.Y)
                        elseif toggled == true then
                            toggled = false
                            Frame_5:TweenSize(UDim2.new(0, 275, 0, 32), 'In', 'Linear', 0.25)
                            wait(0.25)
                            box.CanvasSize = UDim2.new(0, 0, 0, box.UIListLayout.AbsoluteContentSize.Y)
                        end
                    end)
                end
                coroutine.wrap(dropdownshit)()
                
                    local droptable = {}

                    function droptable:Add(text, callback)
                        local TextButton_6 = Instance.new("TextButton")

                        TextButton_6.Parent = Frame_6
                        TextButton_6.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        TextButton_6.BackgroundTransparency = 1.000
                        TextButton_6.BorderColor3 = Color3.fromRGB(56, 56, 56)
                        TextButton_6.BorderSizePixel = 0
                        TextButton_6.Size = UDim2.new(0, 275, 0, 32)
                        TextButton_6.AutoButtonColor = false
                        TextButton_6.Font = Enum.Font.SourceSansBold
                        TextButton_6.Text = text
                        TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextButton_6.TextSize = 15.000
                        TextButton_6.MouseButton1Down:connect(function() pcall(callback) end)
                    end
                    return droptable
                end
                return Toolshit
            end
            return section
        end
        return tabshit, ScreenGui
    end
local main, teslagui = library:Create("Tesla")
local tesla = main:CreateTab("Jailbreak")
local tptab = tesla:CreateSection("Teleports")
local playertab = tesla:CreateSection("Player")
local combatab = tesla:CreateSection("Combat")
local vehicle = tesla:CreateSection("Vehicle")
local farming = tesla:CreateSection("Farming")
local funtab = tesla:CreateSection("Fun")
local setting = tesla:CreateSection("Settings")
tptab:Box("Teleport Player", function(callback)
    for i,v in next, game:GetService("Players"):GetPlayers() do
		if string.find(string.lower(v.Name), string.lower(tostring(callback))) then
			TP(v.Character.HumanoidRootPart.CFrame)
			return
		end
	end
end)
local storedrop = tptab:Dropdown('Store Teleports')
local locationdrop = tptab:Dropdown('Location Teleports')
local vehicledrop = tptab:Dropdown('Vehicle Teleports')
for i,v in pairs(locations.Stores) do
    storedrop:Add(v[1] ,function()
        TP(v[2])
    end)
end
for i,v in pairs(locations.Locations) do
    locationdrop:Add(v[1] ,function()
        TP(v[2])
    end)
end
for i,v in pairs(locations.Vehicles) do
    vehicledrop:Add(v[1] ,function()
        TP(v[2])
    end)
end
wait(0.1)
_G.WalkSpeed = 16
playertab:Box("WalkSpeed", function(callback)
    if not tonumber(callback) then return end
    _G.WalkSpeed = tonumber(callback)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(callback)
end)
playertab:Box("JumpPower", function(callback)
    if not tonumber(callback) then return end
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = tonumber(callback)
end)
playertab:Toggle("No Wait", "No E Cooldown", function(arg)
    NiggaToggle.NoWait = arg
end)
playertab:Toggle("Open All Doors", "Open All Doors Serversided", function(arg)
    NiggaToggle.OpenDoors = arg
end)
playertab:Toggle("No Clip", "Walk Through Wall", function(arg)
    NiggaToggle.NoClip = arg
end)
playertab:Toggle("Anti Arrest", "Auto Breakout Yourself If Get Arrested", function(arg)
	NiggaToggle.AntiArrest = arg
end)
playertab:Toggle("Auto Breakout", "Auto Breakout If You Are In Jail", function(arg)
	NiggaToggle.Autobreakout = arg
end)
playertab:Toggle("One Punch Man", "Don't Punch Player", function(arg)
	NiggaToggle.OPM = arg
end)
playertab:Toggle("Eject All", "Loops Eject Everyone", function(arg)
	NiggaToggle.Eject = arg
end)
playertab:Toggle("God Mode", "Auto Heal", function(arg)
	NiggaToggle.GodMode = arg
	if NiggaToggle.GodMode then
		setconstant(Client.GiveDonut,1,"lmao")
        setconstant(Client.Unequip,12,"Fake")
	else
		setconstant(Client.GiveDonut,1,"tick")
        setconstant(Client.Unequip,12,"Unequip")
    end
end)
playertab:Toggle("Anti Ragdoll", "No Ragdoll", function(arg)
	NiggaToggle.AntiRagdoll = arg
end)
playertab:Toggle("No Team Change Cooldown", "No Team Change CD", function(arg)
    if arg then
		require(game:GetService("ReplicatedStorage").Resource.Settings).Time.BetweenTeamChange = 0
	else
		require(game:GetService("ReplicatedStorage").Resource.Settings).Time.BetweenTeamChange = 24
	end
end)
playertab:Toggle("No Cell Time", "No Cell Time", function(arg)
    if arg then
		require(game:GetService("ReplicatedStorage").Resource.Settings).Time.Cell = 0
	else
		require(game:GetService("ReplicatedStorage").Resource.Settings).Time.Cell = 20
	end
end)
playertab:Button("Give JetPack", Client.GiveJetPack)
playertab:Button("Inf JetPack Fuel", function()
	local JPFuel = getupvalue(require(game:GetService("ReplicatedStorage").Game.JetPack.JetPack).Init,7)
	JPFuel.LocalMaxFuel = math.huge
	JPFuel.LocalFuel = math.huge
	JPFuel.LocalFuelType = "Rocket"
end)
playertab:Button("Invisible", function()
    if not workspace.Vehicles:FindFirstChild("DuneBuggy") then
        require(game:GetService("ReplicatedStorage").Game.Notification).new({
            Text = "DuneBuggy Not Found!",
        });
        return
    end
    local ogpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    wait()
    for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
        if v.Name == "Enter Passenger" and v.ValidRoot.Name == "DuneBuggy" then
            v:Callback(true)
            require(game:GetService("ReplicatedStorage").Game.Item.Gun).SetLeaning({Config = { Motion = { Hip = { Springs = { ItemOffset = nil, ItemRotation = nil, NeckRotation = nil } } } },SpringItemOffset = {SetTarget = function() end},SpringItemRotation = {SetTarget = function() end},SpringNeckRotation = {SetTarget = function() end},Local = true}, false, false)
            wait(0.3)
            Client.ExitCar()
            wait(0.5)
            TP(ogpos)
            break
        end
    end
end)
playertab:Button("PickPocket", function()
    local key = workspace:FindFirstChild("Key")
    if key then
        Client.PickItem({Part = {Parent = key}}, true)
        return
    end
	local ogpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game:GetService('Players'):GetPlayers()) do
		if tostring(v.Team) == "Police" then
			if v.Character:FindFirstChild("HumanoidRootPart") then
				if not v.Character:FindFirstChild("InVehicle") then
					TP(v.Character.HumanoidRootPart.CFrame)
					wait(0.5)
					for count = 1, 10 do
						Client.PickPocket(v)
					end
					wait()
					TP(ogpos)
					return
				end
			end
		end
	end
end)
local teamd = playertab:Dropdown("Change Team")
teamd:Add("Prisoner", function()
    Client.Network:FireServer(Client.Hashes.TeamChange, "Prisoner")
end)
teamd:Add("Police", function()
    Client.Network:FireServer(Client.Hashes.TeamChange, "Police")
end)
wait(0.1)
combatab:Button("Grab All Guns", function()
    GrabClickGun()
	for i,v in pairs(Client.Guns) do
		Client.GiveGun({ Part = { Parent = { Name = i } }, CanGrab = true }, true)
	end
end)
combatab:Button("Gun Mods", function()
	for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
		local cst = require(v)
		cst.CamShakeMagnitude = 0
		cst.MagSize = math.huge
		cst.ReloadTime = 0
		cst.FireAuto = true
		cst.FireFreq = 30
	end
end)
combatab:Toggle("Taze All", "Auto Taze Everyone", function(arg)
	NiggaToggle.TazeAll = arg
end)
combatab:Toggle("Taze Aura", "Auto Taze Nearby People", function(arg)
	NiggaToggle.TazeAura = arg
end)
combatab:Toggle("Kill Aura", "You Need Plasma Pistol Owned", function(arg)
    NiggaToggle.KillAura = arg
end)
wait(0.1)
vehicle:Box("Engine Speed", function(callback)
    if tonumber(callback) then
        _G.EngineSpeed = tonumber(callback)
	end
end)
vehicle:Box("Height", function(callback)
    if tonumber(callback) then
        _G.Height = tonumber(callback)
	end
end)
vehicle:Box("Turn Speed", function(callback)
    if tonumber(callback) then
        _G.TurnSpeed = tonumber(callback)
	end
end)
vehicle:Box("Brake", function(callback)
    if tonumber(callback) then
        _G.Brake = tonumber(callback)
	end
end)
vehicle:Button("Reset Car", function()
    _G.TurnSpeed = nil
    _G.Height = nil
    _G.EngineSpeed = nil
    _G.Brake = nil
    require(game:GetService("ReplicatedStorage").Game.Notification).new({Text = "Re-enter the vehicle"})
end)
local x = game:GetService("Players").LocalPlayer:GetMouse()
local z = workspace.CurrentCamera
function FlyPart(ak, al)
    local am = Instance.new("Folder")
    am.Name = "Storage"
    for E, an in pairs(ak:GetChildren()) do
        if an:IsA("BodyGyro") then
            an.Parent = am
        end
    end
    local ao = Instance.new("BodyPosition", ak)
    ao.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    ao.Name = "Position"
    local ap = Instance.new("BodyGyro", ak)
    ap.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    ap.Name = "Rotate"
    z.CameraSubject = ak
    local aq = 0
    local ar = x.KeyDown:Connect(function(as)
        if as == "w" then
            if al then
                aq = NiggaToggle.FlySpeed
            else
                aq = tonumber("-" .. tostring(NiggaToggle.FlySpeed))
            end
        elseif as == "s" then
            if al then
                aq = tonumber("-" .. tostring(NiggaToggle.FlySpeed))
            else
                aq = NiggaToggle.FlySpeed
            end
        end
    end)
    x.KeyUp:Connect(function(as)
        if as == "w" then
            aq = 0
        elseif as == "s" then
            aq = 0
        end
    end)
    local at = {}
    at.IsRunning = true
    at.Part = ak
    at.Storage = am
    at.MT = ar
    spawn(function()
        repeat
            local au = z.CFrame
            local av = ak.Position
            local aw = (av - au.p).Magnitude
            ao.Position = (au * CFrame.new(0, 0, tonumber("-" .. tostring(aw)) + aq)).p + Vector3.new(0, 0.2225, 0)
            ap.CFrame = au
            wait()
        until at.IsRunning == false or z.CameraSubject ~= ak
        ao:Remove()
        ap:Remove()
        for E, ax in pairs(at.Storage:GetChildren()) do
            ax.Parent = at.Part
        end
        at.MT:Disconnect()
        at.Storage:Remove()
    end)
    return at
end
local A = workspace.Vehicles
function GetVehicleMain()
    local ai = game:GetService("Players").LocalPlayer.Name
    for E, aj in pairs(A:GetChildren()) do
        if aj:FindFirstChild("Seat") and aj.Seat:FindFirstChild("PlayerName") and aj:FindFirstChild("Engine") then
            if aj.Seat.PlayerName.Value == ai then
                return aj.Engine, false
            end
        elseif aj:FindFirstChild("Seat") and aj.Seat:FindFirstChild("PlayerName") and aj:FindFirstChild("Model") then
            if aj.Seat.PlayerName.Value == ai then
                if aj.Model:FindFirstChild("Body") then
                    return aj.Model.Body, true
                end
            end
        end
    end
end
vehicle:Button("Car Fly", function()
	if GetVehicleMain() ~= nil then
        SendN("Vehicle Fly Enabled", 2)
        local az, al = GetVehicleMain()
        local aA = FlyPart(az, al)
        if al then
            repeat
                wait()
            until az.Parent.Parent.Seat.PlayerName.Value ~= d.Name
        else
            repeat
                wait()
            until az.Parent.Seat.PlayerName.Value ~= game:GetService("Players").LocalPlayer.Name
        end
        wait(0.1)
        z.CameraSubject = N
        SendN("Vehicle Fly Disabled", 2)
    else
        SendN("Vehicle Not Found", 2)
    end
end)
vehicle:Box("Fly Speed", function(callback)
	NiggaToggle.FlySpeed = callback
end)
vehicle:Toggle("Anti Flip Over", "Anti Flip", function(arg)
	NiggaToggle.AntiFlip = arg
end)
vehicle:Toggle("No Tire Pop", "No Tire Popping", function(arg)
    NiggaToggle.TirePop = arg
end)
vehicle:Toggle("Injan Horn", "Different Horn Serversided", function(arg)
	local id = game:GetService("Players").LocalPlayer.UserId
	require(game:GetService("ReplicatedStorage").Resource.Settings).Perm.InjanHorn.Id[tostring(id)] = arg
end)
vehicle:Toggle("Rainbow Car (FLASH WARNING)", "Rainbow Car Serversided", function(arg)
	NiggaToggle.RainbowCar = arg
end)
vehicle:Button("Unlock Skins", function()
    for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.Color).Items) do
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.InteriorMainColor[v.Name] = true
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.WindowColor[v.Name] = true
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.WheelColor[v.Name] = true
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.SpoilerColor[v.Name] = true
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.InteriorDetailColor[v.Name] = true
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.HeadlightsColor[v.Name] = true
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.SeatColor[v.Name] = true
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.Glow[v.Name] = true
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.BodyColor[v.Name] = true
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.SecondBodyColor[v.Name] = true
	end
	for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.Engine).Items) do
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.Engine[v.Name] = true
	end
	for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.Brakes).Items) do
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.Brakes[v.Name] = true
	end
	for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.SuspensionHeight).Items) do
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.SuspensionHeight[v.Name] = true
	end
	for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.Rim).Items) do
		require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.Rim[v.Name] = true
	end
	for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.ItemSkin.ItemSkinList)) do
		require(game:GetService("ReplicatedStorage").Game.ItemSkin.ItemSkin).ItemSkinsOwned[v.Name] = true
	end
end)
vehicle:Button("Inf Nitro SS", function()
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("InVehicle") then
		debug.setconstant(Client.Nitro, 1, "lmao")
		require(game:GetService("ReplicatedStorage").Game.Notification).new({
			Text = "Use nitro and it will be infinite!",
			Duration = 2
		})
	else
		require(game:GetService("ReplicatedStorage").Game.Notification).new({
			Text = "Make sure you are in a vehicle!",
			Duration = 2
		})
	end
end)
local sv = vehicle:Dropdown("Spawn Vehicle")
for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.VehicleData)) do
	if not rawget(v, "NoGarageSpawn") then
        sv:Add(v.Make, function()
            Client.SpawnVehicle(v)
        end)
	end
end
wait(0.1)
_G.BankRobbed = nil
_G.JewRobbed = nil
_G.MusRobbed = nil
_G.TrainRobbed = nil
_G.PlaneRobbed = nil
_G.ShipRobbed = nil
spawn(function()
	while wait(2) do
		if workspace.Banks:GetChildren()[1].Extra.Sign.Decal.Transparency == 0 then
			_G.BankRobbed = false
		end
		if workspace.Jewelrys:GetChildren()[1].Extra.Sign.Decal.Transparency == 0 then
			_G.JewRobbed = false
		end
		for i,v in pairs(workspace.Museum.Roof.Hole:GetChildren()) do
			if v:GetChildren()[1] then
				if v.Transparency == 0 then
					_G.MusRobbed = false
				end
			end
		end
		if not workspace.Trains:GetChildren()[1] then
			_G.TrainRobbed = false
		end
		if not workspace:FindFirstChild("Plane") then
			_G.TrainRobbed = false
        end
        if not workspace:FindFirstChild("CargoShip") then
            _G.ShipRobbed = false
        end
	end
end)
_G.AutoRobbing = nil
local notificationcreate = sendn
local function TPBuilding()
    for i,v in pairs(workspace.Buildings:GetDescendants()) do
        if v:IsA("Texture") and v.Color3 == Color3.fromRGB(83,123,186) then
            v.Parent.CanCollide = false
            TP(v.Parent.CFrame)
            break
        end
    end
end
function JewBox()
	for i,v in pairs(workspace.Jewelrys:GetDescendants()) do
		if v.Name == "Boxes" then
			local part = v:GetChildren()[math.random(1, table.maxn(v:GetChildren()))]
			local pos = CFrame.new(part.Position - part.CFrame.LookVector * 2, part.Position)
            TP(pos)
            wait(0.2)
            Punch(10)
		end
	end
end
function JewlRobbing()
	if _G.AutoRobbing or _G.JewRobbed then return end
		_G.AutoRobbing = true
		for i,v in pairs(game.Workspace.Jewelrys:GetDescendants()) do
			if v:IsA("Decal") then
				if v.Parent.Name == "Sign" then
					if v.Transparency > 0.5 then
					notificationcreate('Jewelry', 'Open', 3)
					TP(CFrame.new(91.6347504, 20.2128963, 1302.44189, 0.164838046, 0.0733769536, -0.983587563, 0.0025376468, 0.997194052, 0.0748172998, 0.986317396, -0.0148287192, 0.164189309))
					for i,v in next, game:GetService("Workspace"):GetDescendants() do
						if v.Name == "BarbedWire" and not string.find(v:GetFullName(), "MilitaryIsland") then
							v:Destroy()
						end
					end
					wait(2)
					for count = 1, 4 do
                        JewBox()
                        wait(1)
                    end
                    TP(CFrame.new(1761.20618, 52.1366386, -1790.52783))
					wait(2)
					TPBuilding()
					_G.JewRobbed = true
					_G.AutoRobbing = false
				elseif v.Transparency == 0 then
					notificationcreate('Jewelry', 'Closed', 3)
					TPBuilding()
					_G.AutoRobbing = false
				end
			end
		end
	end
end
local function GetMoneyCapacity(a)local b=tostring(a)or a.Text;local c=b:sub(4,10)local d=c:gsub(",","")local e=tonumber(d)return e end
function getNumber(pretty)
	local lol = ''
	for i = 1, pretty:len() do
		local char = pretty:sub(i, i)
		if char:match('%d') then
			lol = lol .. char
		end
	end
	return tonumber(lol)
end
function BankRobing()
	if _G.AutoRobbing or _G.BankRobbed then return end
	_G.AutoRobbing = true
	for i,v in pairs(game.Workspace.Banks:GetDescendants()) do
		if v:IsA("Decal") then
			if v.Parent.Name == "Sign" then
				if v.Transparency > 0.5 then
					game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Money.Text = ""
					notificationcreate('Bank', 'Open', 3)
					TP(CFrame.new(30.8057957, 20.307003, 854.226563, -0.00389732886, 0.172487527, -0.98500371, -0.00170719274, 0.985008895, 0.172495201, 0.999990761, 0.00235385355, -0.00354445633))
					for i,v in pairs(game:GetService("Workspace").Banks:GetDescendants()) do
						if v:IsA("Part") then
							if v.Name == "TriggerDoor" then
								TP(v.Parent.Begin.CFrame + Vector3.new(0,5,0))
								wait(1)
								TP(v.CFrame + Vector3.new(0,5,0))
							end
						end
					end
					wait(2)
					for i,v in next, game:GetService("Workspace"):GetDescendants() do
						if v.Name == "BarbedWire" and not string.find(v:GetFullName(), "MilitaryIsland") then
							v:Destroy()
						end
					end
					for i,v in pairs(game:GetService("Workspace").Banks:GetDescendants()) do
						if v:IsA("Part") then
							if v.Name == "Money" then
								TP(v.CFrame + Vector3.new(0,5,0))
							end
						end
					end
					wait(5)
					repeat wait(0.5)
					until getNumber(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Money.Text) == GetMoneyCapacity(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Maximum.Text)
					TP(CFrame.new(1761.20618, 52.1366386, -1790.52783, -0.608304322, 0.063044101, -0.791196227, 0.018261876, 0.997688293, 0.0654573366, 0.793493927, 0.0253692511, -0.608049333))
					wait(2)
					TPBuilding()
					_G.BankRobbed = true
					_G.AutoRobbing = false
				elseif v.Transparency == 0 then
					notificationcreate('Bank', 'Closed', 3)
					TPBuilding()
					_G.AutoRobbing = false
				end
			end
		end
	end
end
function checkmuseum()
	for i,v in pairs(workspace.Museum.Roof.Hole:GetChildren()) do
		if v:GetChildren()[1] then
			if v.Transparency == 0 then
				return false
			else
				return true
			end
		end
	end
end
function robmuseum()
	if _G.AutoRobbing or _G.MusRobbed then return end
	_G.AutoRobbing = true
	if not checkmuseum() then
		for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
			if v.Name == "Place Dynamite" and tostring(v.Tag) ~= "BankDoor" and v.Enabled then
				v:Callback(true)
			end
		end
	end
	wait(1)
	if not checkmuseum() then 
		notificationcreate('Museum', 'Closed', 3)
		_G.AutoRobbing = false
		TP(CFrame.new(1730.87537, 20.45331, -1727.92773))
		return 
	end
	for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
		if rawget(v, "Name") then
			if string.find(v.Name, "Grab") and v.Name ~= "Grab" then
				if v.Name == "Grab Bone" and v.Enabled then
					TP(v.Tag.CFrame)
					wait(1)
					for count = 1,8 do
						v:Callback(true)
					end
					break
				end
			end
		end
	end
	TPBuilding() 
	notificationcreate('Museum', 'bypassing', 5)
	wait(16)
	TP(CFrame.new(1761.20618, 52.1366386, -1790.52783))
	wait(2)
	TPBuilding()
	require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Unequip()
	_G.MusRobbed = true
	_G.AutoRobbing = false
	return
end
function CheckPlane()
	for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
		if v.Name == "Inspect Crate" then
			return v.Part
		end
	end
end
function RobPlane()
	if _G.AutoRobbing or _G.PlaneRobbed then return end
	_G.AutoRobbing = true
	if CheckPlane() then
		TP(CheckPlane().CFrame)
		wait(0.5)
		for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
			if v.Name == "Inspect Crate" then
				v:Callback(v, true)
			end
		end
		wait(1)
		TP(CFrame.new(-451.725647, 78.4250259, 2056.63135))
		wait(4)
		TP(CFrame.new(-393.667542, 21.2136765, 2025.38611))
		wait(1.5)
		TPBuilding()
		require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Unequip()
		_G.PlaneRobbed = true
		_G.AutoRobbing = false
	else
		_G.AutoRobbing = false
		sendn("Plane", "Closed", 2)
	end
end
function CheckTrainType()
	for i,v in pairs(workspace.Trains:GetChildren()) do
		if v.Name == "BoxCar" then
			return v.Model.Rob
		elseif v.Name == "SteamEngine" then
			return "Passenger"
		end
	end
end
_G.disabletrain = true
function RobTrain()
	if _G.AutoRobbing or _G.TrainRobbed then return end
	_G.AutoRobbing = true
	if CheckTrainType() then
		if tostring(CheckTrainType()) == "Passenger" then
			for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
				if v.Name == "Grab briefcase" then
					v:Callback(true)
					wait(1)
				end
			 end
			 TP(CFrame.new(1761.20618, 52.1366386, -1790.52783))
			 require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Unequip()
			 wait(2)
			 TPBuilding()
			 _G.TrainRobbed = true
			 _G.AutoRobbing = false
		else
			if _G.disabletrain then 
				_G.AutoRobbing = false
				return 
			end
			game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Money.Text = ""
			for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
				if v.Name == "Open Door" or v.Name == "Breach Vault" then
					v:Callback(true)
				end
			end
			repeat wait()
				TP(CheckTrainType().Gold.CFrame + Vector3.new(0,0.1,0))
			until getNumber(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Money.Text) == GetMoneyCapacity(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Maximum.Text)
			wait()
			TP(CFrame.new(1730.87537, 20.45331, -1727.92773))
			wait()
			_G.TrainRobbed = true
			_G.AutoRobbing = false
		end
	else
		TPBuilding()
		sendn("Train", "Closed", 2)
		_G.AutoRobbing = false
		return false
	end
end
function RobShip()
    if _G.AutoRobbing or _G.ShipRobbed then return end
    _G.AutoRobbing = true
    local Ship = workspace:FindFirstChild("CargoShip")
    local Crate = Ship and Ship.Crates:FindFirstChild("Crate")
    local Heli = workspace.Vehicles:FindFirstChild("Heli")
    if Crate and Heli then
        for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
            if v.Name == "Hijack" then
                v:Callback(true)
            end
        end
        wait(1)
        for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
            if v.Name == "Enter Driver" and v.ValidRoot.Name == "Heli" then
                Client.ExitCar()
                wait(0.3)
                v:Callback(true)
                wait(0.5)
                TP(Crate.Part.CFrame + CFrame.new(0, 10 ,0))
                Client.Vehicle.Heli.OnAction({Name = "Rope"}, true)
                wait(0.1)
                Client.Network:FireServer("tvefgrlm", Crate, Vector3.new())
                break
            end
        end
    else
        _G.AutoRobbing = false
		sendn("Cargo Ship", "Closed", 2)
    end
end
farming:Toggle("Auto Rob", "Autorob by Masterzz", function(arg)
	NiggaToggle.Autorob = arg
	if arg then
		_G.AutoRobbing = false
	end
end)
farming:Button("Rob Small Stores", function()
	for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
		if v.Name == "Rob" then
			v:Callback(v, true)
		end
	end
end)
farming:Button("Remove Lasers", function()
	for i,v in next, game:GetService("Workspace"):GetDescendants() do
		if v.Name == "BarbedWire" and not string.find(v:GetFullName(), "MilitaryIsland") then
			v:Destroy()
		end
	end
end)
farming:Button("Arrest All", function()
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if not table.find(whitelisted, v.Name) then
			if v.Team == game.Teams.Criminal then
				if v.Character:FindFirstChild('InVehicle') then
					Client.Network:FireServer(Client.Hashes.Eject, v.Name)
				end
				if not v.Character:FindFirstChild("Handcuffs") then
					Equip("Handcuffs")
					TP(v.Character.HumanoidRootPart.CFrame);
                    wait(0.1)
					Client.Arrest(v)
					Client.Arrest(v)
					Client.Arrest(v)
					TP(v.Character.HumanoidRootPart.CFrame);
					wait(0.1)
					Client.Arrest(v)
					Client.Arrest(v)
					Client.Arrest(v)
					TP(v.Character.HumanoidRootPart.CFrame);
					wait(0.1)
					Client.Arrest(v)
					Client.Arrest(v)
					Client.Arrest(v)
					TP(v.Character.HumanoidRootPart.CFrame);
					wait(0.1)
					Client.Arrest(v)
					Client.Arrest(v)
					Client.Arrest(v)
					TP(v.Character.HumanoidRootPart.CFrame);
					wait(1)
				end
			end
		end
	end
end)
wait(0.1)
funtab:Box("Play Firework", function(callback)
    if tonumber(callback) then
        Client.Fireworks(tonumber(callback))
    end
end)
funtab:Box("Give Money", function(callback)
    if tonumber(callback) then
        Client.PlusCash(tonumber(callback), "this is fake nigga")
    end
end)
funtab:Box("Eject Player", function(callback)
    for i,v in next, game:GetService("Players"):GetPlayers() do
		if string.find(string.lower(v.Name), string.lower(tostring(callback)))  then
			Client.Network:FireServer(Client.Hashes.Eject, v.Name)
			return
		end
	end
end)
funtab:Toggle("Click Nuke", "Click For Clientsided Nuke", function(arg)
	NiggaToggle.Nuke = arg
end)
funtab:Toggle("Annoy Server", "Annoy Nearby People", function(arg)
	NiggaToggle.Annoy = arg
end)
local ps = funtab:Dropdown("Play Sound")
for i,v in pairs(require(game:GetService("ReplicatedStorage").Resource.Settings).Sounds) do
    ps:Add(tostring(i), function()
        Client.PlaySound(tostring(i), {
            Source = game:GetService("Players").LocalPlayer.Character, 
            Volume = math.huge, 
            Multi = true,
            MaxTime = 10
        }, false);
    end)
end
funtab:Toggle("Spam Hats", "Spam Hats", function(arg)
	NiggaToggle.Hats = arg
end)
funtab:Button("Volcano Eruption", function()
	firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.LavaFun.Lavatouch, 0)
	wait()
	firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.LavaFun.Lavatouch, 1)
end)
funtab:Button("Teleport All Unanchored Part to You", function()
	for index, part in pairs(workspace:GetDescendants()) do
        if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(game:GetService("Players").LocalPlayer.Character) == false then
			part.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(-50,50),50,math.random(-50,50)))
		end
	end
end)
funtab:Button("Teleport All Vehicle to You", function()
	for index, part in pairs(workspace.Vehicles:GetDescendants()) do
        if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(game:GetService("Players").LocalPlayer.Character) == false then
			part.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(-50,50),50,math.random(-50,50)))
		end
	end
end)
wait(0.1)
setting:Box("Whitelist Player", function(callback)
    for i,v in next, game:GetService("Players"):GetPlayers() do
		if string.find(string.lower(v.Name), string.lower(tostring(callback))) and not table.find(whitelisted, v.Name) then
			table.insert(whitelisted, v.Name)
		end
	end
end)
setting:Box("Unwhitelist Player", function(callback)
    for i,v in next, game:GetService("Players"):GetPlayers() do
		if string.find(string.lower(v.Name), string.lower(tostring(callback))) then
			if table.find(whitelisted, v.Name) then
				table.remove(whitelisted, table.find(whitelisted, v.Name))
			end
		end
	end
end)
setting:Button("Copy Discord Link", function()
	setclipboard("https://discord.gg/WRhsPBx")
end)
setting:Button("Rejoin To Same Server", function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)
local togglekey = Enum.KeyCode.RightShift
setting:Bind("Toggle GUI Key", function(obj)
    togglekey = obj
end, {
    ["standard"] = Enum.KeyCode.RightShift
})
setting:Label("Credits:")
setting:Label("linsonder6 for all")
setting:Label("Masterzz for autorob & UI library")
setting:Label("mark for testing")
game:GetService("UserInputService").InputBegan:connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == togglekey then
        teslagui.Enabled = not teslagui.Enabled
    end
end)
game:GetService("RunService").Stepped:Connect(function()
	if NiggaToggle.NoClip then
        for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end
    if NiggaToggle.Hats then
        firehatoff()
    end
	game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
	game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
end)
game:GetService("Players").LocalPlayer:GetMouse().Button1Down:Connect(function()
	if NiggaToggle.Nuke then
		require(game:GetService("ReplicatedStorage").Game.Notification).new({
			Text = "Nuke is incoming! (client sided)",
			Duration = 1.5
		})
		local bruh = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
		Client.Nuke({
			Nuke = {
				Origin = Vector3.new(),
				Speed = 650,
				Duration = 10,
				Target = bruh,
				TimeDilation = 1.5
			},
			Shockwave = {
				Duration = 20,
				MaxRadius = 500
			}
		})
	end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, gpe)
	if gpe then return end
	if input.KeyCode == Enum.KeyCode.F and NiggaToggle.OPM and not Client.GetVehiclePacket() then
		Punch(20)
	end
end)
spawn(function()
	while wait(3) do
		writefile("Tesla.json", game:GetService("HttpService"):JSONEncode(NiggaToggle))
        if NiggaToggle.OpenDoors then
            table.foreachi(Client.Doors, function(i, v)
                Client.OpenDoor(v)
            end)
		end
		if NiggaToggle.Autobreakout then
			if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Team == game.Teams.Prisoner then
				TP(CFrame.new(1730.87537, 20.45331, -1727.92773))
				require(game:GetService("ReplicatedStorage").Game.Notification).new({
					Text = "Escaping...",
				})
				if NiggaToggle.Autorob then
					_G.AutoRobbing = false
				end
			end
        end
    end
end)
spawn(function()
	while wait(1) do
		if NiggaToggle.Autorob then
			BankRobing()
			JewlRobbing()
			robmuseum()
			RobPlane()
			RobTrain()
			for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
				if v.Name == "Rob" then
					v:Callback(v, true)
				end
			end
			wait(14)
		end
	end
end)
spawn(function()
    while wait(0.5) do
        if NiggaToggle.KillAura then
            Client.GiveGun({ Part = { Parent = { Name = "PlasmaPistol" } }, CanGrab = true }, true)
            for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HotbarGui.Container:GetChildren()) do
                if k:IsA("ImageButton") and k.Icon.Image == "rbxassetid://4751591788" then
                    Client.Network:FireServer(Client.Hashes.Equip, {i = k.Name, Name = "PlasmaPistol"})
                    pcall(function()
                        for _,v in pairs(game:GetService("Players"):GetPlayers()) do
                            local HRP = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
                            if v ~= game:GetService("Players").LocalPlayer and HRP and not table.find(whitelisted, v.Name) and v.Team ~= game:GetService("Players").LocalPlayer.Team then
                                for i = 1, 10 do
                                    Client.Network:FireServer(Client.Hashes.Damage, HRP.Position, HRP)
                                end
                            end
                        end
                    end)
                end
            end
        end
        if NiggaToggle.Eject then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if not table.find(whitelisted, v.Name) then
                    Client.Network:FireServer(Client.Hashes.Eject, v.Name)
                end
            end
		end
    end
end)
spawn(function()
    while wait() do
        local gv = Client.GetVehiclePacket()
        if gv then
            gv.GarageEngineSpeed = _G.EngineSpeed or gv.GarageEngineSpeed
            gv.Height = _G.Height or gv.Height
            gv.TurnSpeed = _G.TurnSpeed or gv.TurnSpeed
            gv.GarageBrakes = _G.Brake or gv.GarageBrakes
            if NiggaToggle.TirePop then
                gv.TirePopDuration = 0
            end
            if NiggaToggle.AntiFlip then
                Client.GuiFunc({Name = "Flip"}, true)
            end
            if NiggaToggle.RainbowCar then
                local v = { Name = Colors[math.random(1,#Colors)] }
                Client.ModifyCar(v, { Name = "BodyColor" })
                Client.ModifyCar(v, { Name = "WindowColor" })
                Client.ModifyCar(v, { Name = "SpoilerColor" })
                Client.ModifyCar(v, { Name = "WheelColor" })
                Client.ModifyCar(v, { Name = "SecondBodyColor" })
                Client.ModifyCar(v, { Name = "Glow" })
                Client.ModifyCar(v, { Name = "HeadlightsColor" })
            end
        end
        if NiggaToggle.NoWait then
            for i,v in pairs(require(game:GetService("ReplicatedStorage").Module.UI).CircleAction.Specs) do
                v.Timed = false;
            end
		end
		if NiggaToggle.GodMode then
			Client.GiveDonut()
			Client.Network:FireServer(Client.Hashes.EatDonut)
		end
		if NiggaToggle.TazeAll then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v ~= game:GetService("Players").LocalPlayer and not table.find(whitelisted, v.Name) then
					Taze(v);
				end;
			end;
		end
		if NiggaToggle.TazeAura then
			pcall(function()
                for i,v in next, game:GetService('Players'):GetPlayers() do
                    local HRP = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
                    if v ~= game:GetService("Players") and HRP and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - HRP.Position).magnitude < 50 and not table.find(whitelisted, v.Name) then
                        Taze(v);
                    end
				end
			end)
        end
		if NiggaToggle.Annoy then
			Client.PlaySound("FireworkBang", {
				Source = game:GetService("Players").LocalPlayer.Character, 
				Volume = math.huge, 
				Multi = true,
			}, false)
			Client.PlaySound("Horn", {
				Pitch = math.huge,
				Source = game:GetService("Players").LocalPlayer.Character, 
				Volume = math.huge, 
				Multi = true,
				MaxTime = 0.1
			}, false)
		end
    end
end)
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__newindex
mt.__newindex = newcclosure(function(a, b, c)
	if b == "WalkSpeed" then
		if tonumber(_G.WalkSpeed) == 16 then
			return old(a, b, c)
        elseif tonumber(_G.WalkSpeed) > 150 then
			Client.Network:FireServer(Client.Hashes.ExitCar)
		end
		return old(a, b, _G.WalkSpeed)
	end
	return old(a, b, c)
end)
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
require(game:GetService("ReplicatedStorage").Game.Notification).new({
    Text = "Thanks for using Tesla!",
});
Client.Fireworks(10);
end)

ArsenalKillAllBut.Name = "ArsenalKillAllBut"
ArsenalKillAllBut.Parent = FrixonHubScripts
ArsenalKillAllBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ArsenalKillAllBut.BorderSizePixel = 0
ArsenalKillAllBut.Position = UDim2.new(0.768852472, 0, 0.199063227, 0)
ArsenalKillAllBut.Size = UDim2.new(0, 122, 0, 49)
ArsenalKillAllBut.Font = Enum.Font.SourceSans
ArsenalKillAllBut.Text = "Arsenal Kill All (E)"
ArsenalKillAllBut.TextColor3 = Color3.fromRGB(255, 255, 255)
ArsenalKillAllBut.TextSize = 14.000
ArsenalKillAllBut.MouseButton1Down:connect(function() 
	game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == "e" then
local Gun = game.ReplicatedStorage.Weapons:FindFirstChild(game.Players.LocalPlayer.NRPBS.EquippedTool.Value);
local Crit = math.random() > .6 and true or false;
for i,v in pairs(game.Players:GetPlayers()) do
if v and v.Character and v.Character:FindFirstChild("Head") then
local Distance = (game.Players.LocalPlayer.Character.Head.Position - v.Character.Head.Position).magnitude
for i  = 1,10 do
game.ReplicatedStorage.Events.HitPart:FireServer(v.Character.Head,
v.Character.Head.Position + Vector3.new(math.random(), math.random(), math.random()),
Gun.Name,
Crit and 2 or 1,
Distance,
Backstab,
Crit,
false,
1,
false,
Gun.FireRate.Value,
Gun.ReloadTime.Value,
Gun.Ammo.Value,
Gun.StoredAmmo.Value,
Gun.Bullets.Value,
Gun.EquipTime.Value,
Gun.RecoilControl.Value,
Gun.Auto.Value,
Gun['Speed%'].Value,
game.ReplicatedStorage.wkspc.DistributedTime.Value);
end
end
end
end
end)
end)

InfiniteYieldBut.Name = "InfiniteYieldBut"
InfiniteYieldBut.Parent = FrixonHubScripts
InfiniteYieldBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InfiniteYieldBut.BorderSizePixel = 0
InfiniteYieldBut.Position = UDim2.new(0.768852472, 0, 0.386416852, 0)
InfiniteYieldBut.Size = UDim2.new(0, 122, 0, 49)
InfiniteYieldBut.Font = Enum.Font.SourceSans
InfiniteYieldBut.Text = "Infinite Yield"
InfiniteYieldBut.TextColor3 = Color3.fromRGB(255, 255, 255)
InfiniteYieldBut.TextSize = 14.000
InfiniteYieldBut.MouseButton1Down:connect(function() 
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

RevizAdminBut.Name = "RevizAdminBut"
RevizAdminBut.Parent = FrixonHubScripts
RevizAdminBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
RevizAdminBut.BorderSizePixel = 0
RevizAdminBut.Position = UDim2.new(0.518032789, 0, 0.386416852, 0)
RevizAdminBut.Size = UDim2.new(0, 122, 0, 49)
RevizAdminBut.Font = Enum.Font.SourceSans
RevizAdminBut.Text = "Reviz Admin"
RevizAdminBut.TextColor3 = Color3.fromRGB(255, 255, 255)
RevizAdminBut.TextSize = 14.000
RevizAdminBut.MouseButton1Down:connect(function() 
	-- Creator: illremember#3799
 
-- Credits to infinite yield, harkinian, dex creators
 
prefix = ":"
wait(0.3)
Commands = {
    '[-] cmdbar is shown when ; is pressed.',
    '[1] kill [plr] -- You need a tool! Will kill the player, use rkill to kill you and player',
    '[2] bring [plr] -- You need a tool! Will bring player to you',
    '[3] spin [plr] -- You need a tool! Makes you and the player spin crazy',
    '[4] unspin -- Use after using spin cmd and dying, so you stop loop teleporting',
    '[5] attach [plr] -- You need a tool! Attaches you to player',
    '[6] unattach [plr] -- Attempts to unattach you from a player',
    '[7] follow [plr] -- Makes you follow behind the player',
    '[8] unfollow',
    '[9] freefall [plr] -- You need a tool! Teleports you and the player up into the air',
    '[10] trail [plr] -- The opposite of follow, you stay infront of player',
    '[11] untrail',
    '[12] orbit [plr] -- Makes you orbit the player',
    '[13] unorbit',
    '[14] fling [plr] -- Makes you fling the player',
    '[15] unfling',
    '[16] fecheck -- Checks if the game is FE or not',
    '[17] void [plr] -- Teleports player to the void',
    '[18] noclip -- Gives you noclip to walk through walls',
    '[19] clip -- Removes noclip',
    '[20] speed [num]/ws [num] -- Changes how fast you walk 16 is default',
    '[21] jumppower [num]/jp [num] -- Changes how high you jump 50 is default',
    '[22] hipheight [num]/hh [num] -- Changes how high you float 0 is default',
    '[23] default -- Changes your speed, jumppower and hipheight to default values',
    '[24] annoy [plr] -- Loop teleports you to the player',
    '[25] unannoy',
    '[26] headwalk [plr] -- Loop teleports you to the player head',
    '[27] unheadwalk',
    '[28] nolimbs -- Removes your arms and legs',
    '[29] god -- Gives you FE Godmode',
    '[30] drophats -- Drops your accessories',
    '[31] droptool -- Drops any tool you have equipped',
    '[32] loopdhats -- Loop drops your accessories',
    '[33] unloopdhats',
    '[34] loopdtool -- Loop drops any tools you have equipped',
    '[35] unloopdtool',
    '[36] invisible -- Gives you invisibility CREDIT TO TIMELESS',
    '[37] view [plr] -- Changes your camera to the player character',
    '[38] unview',
    '[39] goto [plr] -- Teleports you to player',
    '[40] fly -- Allows you to fly, credit to Infinite Yield',
    '[41] unfly',
    '[42] chat [msg] -- Makes you chat a message',
    '[43] spam [msg] -- Spams a message',
    '[44] unspam',
    '[45] spamwait [num] -- Changes delay of chatting a message for the spam command in seconds default is 1 second',
    '[46] pmspam [plr] -- Spams a player in private message',
    '[47] unpmspam',
    '[48] cfreeze [plr] -- Freezes a player on your client, they will only be frozen for you',
    '[49] uncfreeze [plr]',
    '[50] unlockws -- Unlocks the workspace',
    '[51] lockws -- Locks the workspace',
    '[52] btools -- Gives you btools that will only show to you useful for deleting certain blocks only for you',
    '[53] pstand -- Enables platform stand',
    '[54] unpstand -- Disables platform stand',
    '[55] blockhead -- Removes your head mesh',
    '[56] sit',
    '[57] bringobj [obj] -- Only shows on client, brings an object/part to you constantly, can be used to bring healing parts, weapons, money etc, type in exact name',
    '[58] wsvis [num] -- Changes visibility of workspace parts, num should be between 0 and 1, only shows client sided',
    '[59] hypertotal -- Loads in my FE GUI Hypertotal',
    '[60] cmds -- Prints all commands',
    '[61] rmeshhats/blockhats -- Removes the meshes of all your accessories aka block hats',
    '[62] rmeshtool/blocktool -- Removes the mesh of the tool you have equipped aka block tool',
    '[63] spinner -- Makes you spin',
    '[64] nospinner',
    '[65] reach [num] -- Gives you reach, mostly used for swords, say ;reachd for default and enter number after for custom',
    '[66] noreach -- Removes reach, must have tool equipped',
    '[67] rkill [plr] -- Kills you and the player, use kill to just kill the player without dying',
    '[68] tp me [plr] -- Alternative to goto',
    '[69] cbring [plr] -- Brings player infront of you, shows only on client, allows you to do damage to player',
    '[70] uncbring',
    '[71] swap [plr] -- You need a tool! Swaps players position with yours and your position with players',
    '[72] givetool [plr] -- Gives the tool you have equipped to the player',
    '[73] glitch [plr] -- Glitches you and the player, looks very cool',
    '[74] unglitch -- Unglitches you',
    '[75] grespawn -- Alternative to normal respawn and usually works best for when you want to reset with FE Godmode',
    '[76] explorer -- Loads up DEX',
    '[77] reset -- Resets your character.',
    '[78] anim [id] -- Applies an animation on you, must be created by ROBLOX',
    '[79] animgui -- Loads up Energize animations GUI',
    '[80] savepos -- Saves your current position',
    '[81] loadpos -- Teleports you to your saved position',
    '[82] bang [plr] -- 18+ will not work if you have FE Godmode on',
    '[83] unbang',
    '[84] delcmdbar -- Removes the command bar completely',
    '[85] bringmod [obj] -- Brings all the parts in a model, client only, comes from ;bringobj enter exact name of model',
    '[86] shutdown -- Uses harkinians script to shutdown server',
    '[87] respawn -- If grespawn doesnt work you can use respawn',
    '[88] delobj [obj] -- Deletes a certain brick in workspace, client sided',
    '[89] getplrs -- Prints all players in game',
    '[90] deldecal -- Deletes all decals client sided',
    '[91] opfinality -- Loads in my FE GUI Opfinality',
    '[92] remotes -- Prints all remotes in the game in the console when added',
    '[93] noremotes -- Stops printing remotes',
    '[94] tpdefault -- Stops all loop teleports to a player',
    '[95] stopsit -- Will not allow you to sit',
    '[96] gosit -- Allows you to sit',
    '[97] clicktp -- Enables click tp',
    '[98] noclicktp -- Disables click tp',
    '[99] toolson -- If any tools are dropped in the workspace you will automatically get them',
    '[100] toolsoff -- Stops ;toolson',
    '[101] version -- Gets the admin version',
    '[102] state [num] -- Changes your humanoid state, ;unstate to stop.',
    '[103] gravity [num] -- Changes workspace gravity default is 196.2',
    '[104] pgs -- Checks if the game has PGSPhysicsSolverEnabled enabled',
    '[105] clickdel -- Delete any block you press q on, client sided',
    '[106] noclickdel -- Stops clickdel',
    '[107] looprhats -- Loop removes mesh of your hats/loop block hats',
    '[108] unlooprhats -- Stops loop removing mesh',
    '[109] looprtool -- Loop removes mesh of your tool/loop block tools',
    '[110] unlooprtool -- Stops loop removing mesh',
    '[111] givealltools [plr] -- Gives all the tools you have in your backpack to the player',
    '[112] age [plr] -- Makes you chat the account age of the player',
    '[113] id [plr] -- Makes you chat the account ID of the player',
    '[114] .age [plr] -- Privately shows you the account age of the player',
    '[115] .id [plr] -- Privately shows you the account ID of the player',
    '[116] gameid -- Shows the game ID',
    '[117] removeinvis -- Removes all invisible walls/parts, client sided',
    '[118] removefog -- Removes fog, client sided',
    '[119] disable -- Disables your character by removing humanoid',
    '[120] enable -- Enables your character by adding humanoid',
    '[121] prefix [key] -- Changes the prefix used, default is ;',
    '[122] ;resetprefix -- Resets the prefix to ; incase you change it to an unusable prefix. Say exactly ";resetprefix" to do this command, no matter what your prefix is set to.',
    '[123] flyspeed [num] -- Change your fly speed, default is 1',
    '[124] carpet [plr] -- Makes you a carpet for a player, will not work if FE Godmode is on',
    '[125] uncarpet -- Stops carpet player',
    '[126] stare [plr] -- Turns your character to stare at another player',
    '[127] unstare -- Stops stare player',
    '[128] logchat -- Logs all chat (including /e and whispers) of all players',
    '[129] unlogchat -- Disables logchat',
    '[130] fixcam -- Fixes/resets your camera',
    '[131] unstate -- Stops changing state',
}
speedget = 1
 
lplayer = game:GetService("Players").LocalPlayer
 
lplayer.CharacterAdded:Connect(function(character)
    spin = false
    flying = false
    staring = false
    banpl = false
end)
 
function change()
    prefix = prefix
    speedfly = speedfly
end
 
function GetPlayer(String) -- Credit to Timeless/xFunnieuss
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Found,v)
        end
    elseif strl == "others" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lplayer.Name then
                table.insert(Found,v)
            end
        end  
    elseif strl == "me" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == lplayer.Name then
                table.insert(Found,v)
            end
        end  
    else
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    end
    return Found    
end
 
local Mouse = lplayer:GetMouse()
 
spin = false
followed = false
traill = false
noclip = false
annoying = false
hwalk = false
droppinghats = false
droppingtools = false
flying = false
spamdelay = 1
spamming = false
spammingpm = false
cbringing = false
remotes = true
added = true
binds = false
stopsitting = false
clickgoto = false
gettingtools = false
removingmeshhats = false
removingmeshtool = false
clickdel = false
staring = false
chatlogs = false
banpl = false
changingstate = false
statechosen = 0
 
adminversion = "Reviz Admin by illremember, Version 2.0"
 
flying = false
speedfly = 1
 
function plrchat(plr, chat)
print(plr.Name..": "..tick().."\n"..chat)
end
 
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
v.Chatted:connect(function(chat)
if chatlogs then
plrchat(v, chat)
end
end)
end
game:GetService("Players").PlayerAdded:connect(function(plr)
plr.Chatted:connect(function(chat)
if chatlogs then
plrchat(plr, chat)
end
end)
end)
 
 
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CMDBAR = Instance.new("TextBox")
ScreenGui.Parent = game:GetService("CoreGui")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.3, 0.1, 0.1)
Frame.BackgroundTransparency = 0.3
Frame.Position = UDim2.new(0.5, 0, 0, 10)
Frame.Size = UDim2.new(0, 200, 0, 40)
Frame.Active = true
Frame.Draggable = true
CMDBAR.Name = "CMDBAR"
CMDBAR.Parent = Frame
CMDBAR.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
CMDBAR.BackgroundTransparency = 0.20000000298023
CMDBAR.Size = UDim2.new(0, 180, 0, 20)
CMDBAR.Position = UDim2.new(0.05, 0, 0.25, 0)
CMDBAR.Font = Enum.Font.SourceSansLight
CMDBAR.FontSize = Enum.FontSize.Size14
CMDBAR.TextColor3 = Color3.new(0.945098, 0.945098, 0.945098)
CMDBAR.TextScaled = true
CMDBAR.TextSize = 14
CMDBAR.TextWrapped = true
CMDBAR.Text = "Press ; to type, Enter to execute"
 
local CMDS = Instance.new("ScreenGui")
local CMDSFRAME = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local closegui = Instance.new("TextButton")
CMDS.Name = "CMDS"
CMDS.Parent = game:GetService("CoreGui")
CMDSFRAME.Name = "CMDSFRAME"
CMDSFRAME.Parent = CMDS
CMDSFRAME.Active = true
CMDSFRAME.BackgroundColor3 = Color3.new(0.223529, 0.231373, 0.309804)
CMDSFRAME.BorderSizePixel = 0
CMDSFRAME.Draggable = true
CMDSFRAME.Position = UDim2.new(0, 315, 0, 100)
CMDSFRAME.Size = UDim2.new(0, 275, 0, 275)
CMDSFRAME.Visible = false
ScrollingFrame.Parent = CMDSFRAME
ScrollingFrame.BackgroundColor3 = Color3.new(0.160784, 0.160784, 0.203922)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.0729999989, 0)
ScrollingFrame.Size = UDim2.new(1.04999995, 0, 0.92900002, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 10, 0)
TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0.930000007, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size18
TextLabel.Text = "[-] cmdbar is shown when ; is pressed.,\n[1] kill [plr] -- You need a tool! Will kill the player, use rkill to kill you and player,\n[2] bring [plr] -- You need a tool! Will bring player to you,\n[3] spin [plr] -- You need a tool! Makes you and the player spin crazy,\n[4] unspin -- Use after using spin cmd and dying, so you stop loop teleporting,\n[5] attach [plr] -- You need a tool! Attaches you to player,\n[6] unattach [plr] -- Attempts to unattach you from a player,\n[7] follow [plr] -- Makes you follow behind the player,\n[8] unfollow,\n[9] freefall [plr] -- You need a tool! Teleports you and the player up into the air,\n[10] trail [plr] -- The opposite of follow, you stay infront of player,\n[11] untrail,\n[12] orbit [plr] -- Makes you orbit the player,\n[13] unorbit,\n[14] fling [plr] -- Makes you fling the player,\n[15] unfling,\n[16] fecheck -- Checks if the game is FE or not,\n[17] void [plr] -- Teleports player to the void,\n[18] noclip -- Gives you noclip to walk through walls,\n[19] clip -- Removes noclip,\n[20] speed [num]/ws [num] -- Changes how fast you walk 16 is default,\n[21] jumppower [num]/jp [num] -- Changes how high you jump 50 is default,\n[22] hipheight [num]/hh [num] -- Changes how high you float 0 is default,\n[23] default -- Changes your speed, jumppower and hipheight to default values,\n[24] annoy [plr] -- Loop teleports you to the player,\n[25] unannoy,\n[26] headwalk [plr] -- Loop teleports you to the player head,\n[27] unheadwalk,\n[28] nolimbs -- Removes your arms and legs,\n[29] god -- Gives you FE Godmode,\n[30] drophats -- Drops your accessories,\n[31] droptool -- Drops any tool you have equipped,\n[32] loopdhats -- Loop drops your accessories,\n[33] unloopdhats,\n[34] loopdtool -- Loop drops any tools you have equipped,\n[35] unloopdtool,\n[36] invisible -- Gives you invisibility CREDIT TO TIMELESS,\n[37] view [plr] -- Changes your camera to the player character,\n[38] unview,\n[39] goto [plr] -- Teleports you to player,\n[40] fly -- Allows you to fly,\n[41] unfly,\n[42] chat [msg] -- Makes you chat a message,\n[43] spam [msg] -- Spams a message,\n[44] unspam,\n[45] spamwait [num] -- Changes delay of chatting a message for the spam command in seconds default is 1 second,\n[46] pmspam [plr] -- Spams a player in private message,\n[47] unpmspam,\n[48] cfreeze [plr] -- Freezes a player on your client, they will only be frozen for you,\n[49] uncfreeze [plr],\n[50] unlockws -- Unlocks the workspace,\n[51] lockws -- Locks the workspace,\n[52] btools -- Gives you btools that will only show to you useful for deleting certain blocks only for you,\n[53] pstand -- Enables platform stand,\n[54] unpstand -- Disables platform stand,\n[55] blockhead -- Removes your head mesh,\n[56] sit,\n[57] bringobj [obj] -- Only shows on client, brings an object/part to you constantly, can be used to bring healing parts, weapons, money etc, type in exact name,\n[58] wsvis [num] -- Changes visibility of workspace parts, num should be between 0 and 1, only shows client sided,\n[59] hypertotal -- Loads in my FE GUI Hypertotal,\n[60] cmds -- Prints all commands,\n[61] rmeshhats/blockhats -- Removes the meshes of all your accessories aka block hats,\n[62] rmeshtool/blocktool -- Removes the mesh of the tool you have equipped aka block tool,\n[63] spinner -- Makes you spin,\n[64] nospinner,\n[65] reach [num] -- Gives you reach, mostly used for swords, say ;reachd for default and enter number after for custom,\n[66] noreach -- Removes reach, must have tool equipped,\n[67] rkill [plr] -- Kills you and the player, use kill to just kill the player without dying,\n[68] tp me [plr] -- Alternative to goto,\n[69] cbring [plr] -- Brings player infront of you, shows only on client, allows you to do damage to player,\n[70] uncbring,\n[71] swap [plr] -- You need a tool! Swaps players position with yours and your position with players,\n[72] givetool [plr] -- Gives the tool you have equipped to the player,\n[73] glitch [plr] -- Glitches you and the player, looks very cool,\n[74] unglitch -- Unglitches you,\n[75] grespawn -- Alternative to normal respawn and usually works best for when you want to reset with FE Godmode,\n[76] explorer -- Loads up DEX,\n[77] reset -- Resets your character.,\n[78] anim [id] -- Applies an animation on you, must be created by ROBLOX,\n[79] animgui -- Loads up Energize animations GUI,\n[80] savepos -- Saves your current position,\n[81] loadpos -- Teleports you to your saved position,\n[82] bang [plr] -- 18+,\n[83] unbang,\n[84] delcmdbar -- Removes the command bar completely,\n[85] bringmod [obj] -- Brings all the parts in a model, client only, comes from ;bringobj enter exact name of model,\n[86] shutdown -- Uses harkinians script to shutdown server,\n[87] respawn -- If grespawn doesnt work you can use respawn,\n[88] delobj [obj] -- Deletes a certain brick in workspace, client sided,\n[89] getplrs -- Prints all players in game,\n[90] deldecal -- Deletes all decals client sided,\n[91] opfinality -- Loads in my FE GUI Opfinality,\n[92] remotes -- Prints all remotes in the game in the console when added,\n[93] noremotes -- Stops printing remotes,\n[94] tpdefault -- Stops all loop teleports to a player,\n[95] stopsit -- Will not allow you to sit,\n[96] gosit -- Allows you to sit,\n[97] clicktp -- Enables click tp,\n[98] noclicktp -- Disables click tp,\n[99] toolson -- If any tools are dropped in the workspace you will automatically get them,\n[100] toolsoff -- Stops ;toolson,\n[101] version -- Gets the admin version, \n This list of commands is NOT showing everything, go to my thread in the pastebin link to see ALL commands."
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 15
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top
closegui.Name = "closegui"
closegui.Parent = CMDSFRAME
closegui.BackgroundColor3 = Color3.new(0.890196, 0.223529, 0.0588235)
closegui.BorderSizePixel = 0
closegui.Position = UDim2.new(0.995000005, 0, 0, 0)
closegui.Size = UDim2.new(0.0545952693, 0, 0.0728644878, 0)
closegui.Font = Enum.Font.SourceSansBold
closegui.FontSize = Enum.FontSize.Size24
closegui.Text = "X"
closegui.TextColor3 = Color3.new(1, 1, 1)
closegui.TextSize = 20
 
closegui.MouseButton1Click:connect(function()
    CMDSFRAME.Visible = false
end)
 
game:GetService('RunService').Stepped:connect(function()
    if spin then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[spinplr.Name].Character.HumanoidRootPart.CFrame
    end
    if followed then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame + game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame.lookVector * -5
    end
    if traill then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame + game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame.lookVector * 5
    end
    if annoying then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[annplr.Name].Character.HumanoidRootPart.CFrame
    end
    if hwalk then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[hdwplr.Name].Character.HumanoidRootPart.CFrame + Vector3.new(0, 4, 0)
    end
    if staring then
        lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(lplayer.Character.Torso.Position, game:GetService("Players")[stareplr.Name].Character.Torso.Position)
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if noclip then
        if lplayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            lplayer.Character.Head.CanCollide = false
            lplayer.Character.Torso.CanCollide = false
            lplayer.Character["Left Leg"].CanCollide = false
            lplayer.Character["Right Leg"].CanCollide = false
        else
            lplayer.Character.Humanoid:ChangeState(11)
        end
    end
    if changingstate then
        lplayer.Character.Humanoid:ChangeState(statechosen)
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if droppinghats then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Parent = workspace
            end
        end
    end
    if droppingtools then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Parent = workspace
            end
        end
    end
    if removingmeshhats then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if removingmeshtool then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if banpl then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[bplrr].Character.HumanoidRootPart.CFrame
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if stopsitting then
        lplayer.Character.Humanoid.Sit = false
    end
end)
 
plr = lplayer
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
    if key == "e" then
        if mouse.Target then
            if clickgoto then
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
            elseif clickdel then
                mouse.Target:Destroy()
            end
        end
    end
end)
 
game:GetService("Workspace").ChildAdded:connect(function(part)
    if gettingtools then
        if part:IsA("Tool") then
            part.Handle.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        end
    end
end)
 
lplayer.Chatted:Connect(function(msg)
    if string.sub(msg, 1, 6) == (prefix.."kill ") then
        if string.sub(msg, 7) == "me" then
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(100000,0,100000)
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 7)))do
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                wait(0.1)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
                wait(0.7)
                tp(lplayer,game:GetService("Players")[v.Name])
                wait(0.7)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."bring ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8)))do
            local NOW = lplayer.Character.HumanoidRootPart.CFrame
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            local function tp(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
            end
            end
            local function getout(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
            end
            end
            tp(game:GetService("Players")[v.Name], lplayer)
            wait(0.2)
            tp(game:GetService("Players")[v.Name], lplayer)
            wait(0.5)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            wait(0.5)
            getout(lplayer, game:GetService("Players")[v.Name])
            wait(0.3)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 6) == (prefix.."spin ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            lplayer.Character.Animate.Disabled = false
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            spinplr = v
            wait(0.5)
            spin = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."unspin") then
        spin = false
    end
    if string.sub(msg, 1, 8) == (prefix.."attach ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            wait(0.3)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            attplr = v
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."unattach ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
            local function getout(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
            end
            end
            getout(lplayer, game:GetService("Players")[v.Name])
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."follow ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            followed = true
            flwplr = v
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unfollow") then
        followed = false
    end
    if string.sub(msg, 1, 10) == (prefix.."freefall ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
            local NOW = lplayer.Character.HumanoidRootPart.CFrame
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.6)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            wait(0.6)
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000,0)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."trail ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            traill = true
            trlplr = v
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."untrail") then
        traill = false
    end
    if string.sub(msg, 1, 7) == (prefix.."orbit ") then
        if string.sub(msg, 8) == "all" or string.sub(msg, 8) == "others" or string.sub(msg, 8) == "me" then
            lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
                local o = Instance.new("RocketPropulsion")
                o.Parent = lplayer.Character.HumanoidRootPart
                o.Name = "Orbit"
                o.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                o:Fire()
                noclip = true
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unorbit") then
        lplayer.Character.HumanoidRootPart.Orbit:Destroy()
        noclip = false
    end
    if string.sub(msg, 1, 7) == (prefix.."fling ") then
        if string.sub(msg, 8) == "all" or string.sub(msg, 8) == "others" or string.sub(msg, 8) == "me" then
            lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
                local y = Instance.new("RocketPropulsion")
                y.Parent = lplayer.Character.HumanoidRootPart
                y.CartoonFactor = 1
                y.MaxThrust = 800000
                y.MaxSpeed = 1000
                y.ThrustP = 200000
                y.Name = "Fling"
                game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
                y.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                y:Fire()
                noclip = true
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unfling") then
        noclip = false
        lplayer.Character.HumanoidRootPart.Fling:Destroy()
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
        wait(0.4)
        lplayer.Character.HumanoidRootPart.Fling:Destroy()
    end
    if string.sub(msg, 1, 8) == (prefix.."fecheck") then
        if game:GetService("Workspace").FilteringEnabled == true then
            warn("FE is Enabled (Filtering Enabled)")
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "FE is Enabled";
                Text = "Filtering Enabled. Enjoy using Reviz Admin!";
            })
        else
            warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "FE is Disabled";
                Text = "Filtering Disabled. Consider using a different admin script.";
            })
        end
    end
    if string.sub(msg, 1, 6) == (prefix.."void ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.6)
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999999999,0,999999999999999)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."noclip") then
        noclip = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Noclip enabled";
        Text = "Type ;clip to disable";
        })
    end
    if string.sub(msg, 1, 5) == (prefix.."clip") then
        noclip = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Noclip disabled";
        Text = "Type ;noclip to enable";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."speed ") then
        lplayer.Character.Humanoid.WalkSpeed = (string.sub(msg, 8))
    end
    if string.sub(msg, 1, 4) == (prefix.."ws ") then
        lplayer.Character.Humanoid.WalkSpeed = (string.sub(msg, 5))
    end
    if string.sub(msg, 1, 11) == (prefix.."hipheight ") then
        lplayer.Character.Humanoid.HipHeight = (string.sub(msg, 12))
    end
    if string.sub(msg, 1, 4) == (prefix.."hh ") then
        lplayer.Character.Humanoid.HipHeight = (string.sub(msg, 5))
    end
    if string.sub(msg, 1, 11) == (prefix.."jumppower ") then
        lplayer.Character.Humanoid.JumpPower = (string.sub(msg, 12))
    end
    if string.sub(msg, 1, 4) == (prefix.."jp ") then
        lplayer.Character.Humanoid.JumpPower = (string.sub(msg, 5))
    end
    if string.sub(msg, 1, 8) == (prefix.."default") then
        lplayer.Character.Humanoid.JumpPower = 50
        lplayer.Character.Humanoid.WalkSpeed = 16
        lplayer.Character.Humanoid.HipHeight = 0
    end
    if string.sub(msg, 1, 7) == (prefix.."annoy ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            annoying = true
            annplr = v
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unannoy") then
        annoying = false
    end
    if string.sub(msg, 1, 10) == (prefix.."headwalk ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
            hwalk = true
            hdwplr = v
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."unheadwalk") then
        hwalk = false
    end
    if string.sub(msg, 1, 8) == (prefix.."nolimbs") then
        lplayer.Character["Left Leg"]:Destroy()
        lplayer.Character["Left Arm"]:Destroy()
        lplayer.Character["Right Leg"]:Destroy()
        lplayer.Character["Right Arm"]:Destroy()
    end
    if string.sub(msg, 1, 4) == (prefix.."god") then
        lplayer.Character.Humanoid.Name = 1
        local l = lplayer.Character["1"]:Clone()
        l.Parent = lplayer.Character
        l.Name = "Humanoid"
        wait(0.1)
        lplayer.Character["1"]:Destroy()
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
        lplayer.Character.Animate.Disabled = true
        wait(0.1)
        lplayer.Character.Animate.Disabled = false
        lplayer.Character.Humanoid.DisplayDistanceType = "None"
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE Godmode enabled";
        Text = "Use ;grespawn or ;respawn to remove";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."drophats") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Parent = workspace
            end
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."droptool") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Parent = workspace
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."loopdhats") then
        droppinghats = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Enabled";
        Text = "Type ;unloopdhats to disable";
        })
    end
    if string.sub(msg, 1, 12) == (prefix.."unloopdhats") then
        droppinghats = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Disabled";
        Text = "Type ;loopdhats to enable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."loopdtool") then
        droppingtools = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Enabled";
        Text = "Type ;unloopdtool to disable";
        })
    end
    if string.sub(msg, 1, 12) == (prefix.."unloopdtool") then
        droppingtools = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Disabled";
        Text = "Type ;loopdtool to enable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."invisible") then -- Credit to Timeless
        Local = game:GetService('Players').LocalPlayer
        Char  = Local.Character
        touched,tpdback = false, false
        box = Instance.new('Part',workspace)
        box.Anchored = true
        box.CanCollide = true
        box.Size = Vector3.new(10,1,10)
        box.Position = Vector3.new(0,10000,0)
        box.Touched:connect(function(part)
            if (part.Parent.Name == Local.Name) then
                if touched == false then
                    touched = true
                    function apply()
                        if script.Disabled ~= true then
                            no = Char.HumanoidRootPart:Clone()
                            wait(.25)
                            Char.HumanoidRootPart:Destroy()
                            no.Parent = Char
                            Char:MoveTo(loc)
                            touched = false
                        end end
                    if Char then
                        apply()
                    end
                end
            end
        end)
        repeat wait() until Char
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Invisibility enabled!";
        Text = "Reset or use ;respawn to remove.";
        })
    end
    if string.sub(msg, 1, 6) == (prefix.."view ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            if game:GetService("Players")[v.Name].Character.Humanoid then
                game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Humanoid
            else
                game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
            end
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."unview") then
        if lplayer.Character.Humanoid then
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
        else
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
        end
    end
    if string.sub(msg, 1, 6) == (prefix.."goto ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
        end
    end
    if string.sub(msg, 1, 4) == (prefix.."fly") then
    repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
    repeat wait() until Mouse
   
    local T = lplayer.Character.HumanoidRootPart
    local CONTROL = {F = 0, B = 0, L = 0, R = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
    local SPEED = speedget
   
    local function fly()
        flying = true
        local BG = Instance.new('BodyGyro', T)
        local BV = Instance.new('BodyVelocity', T)
        BG.P = 9e4
        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.cframe = T.CFrame
        BV.velocity = Vector3.new(0, 0.1, 0)
        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
        spawn(function()
        repeat wait()
        lplayer.Character.Humanoid.PlatformStand = true
        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
        SPEED = 50
        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
        SPEED = 0
        end
        if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
        lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
        elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
        else
        BV.velocity = Vector3.new(0, 0.1, 0)
        end
        BG.cframe = workspace.CurrentCamera.CoordinateFrame
                until not flying
                CONTROL = {F = 0, B = 0, L = 0, R = 0}
                lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                SPEED = 0
                BG:destroy()
                BV:destroy()
                lplayer.Character.Humanoid.PlatformStand = false
            end)
        end
    Mouse.KeyDown:connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = speedfly
        elseif KEY:lower() == 's' then
            CONTROL.B = -speedfly
        elseif KEY:lower() == 'a' then
            CONTROL.L = -speedfly
        elseif KEY:lower() == 'd' then
            CONTROL.R = speedfly
        end
    end)
    Mouse.KeyUp:connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = 0
        elseif KEY:lower() == 's' then
            CONTROL.B = 0
        elseif KEY:lower() == 'a' then
            CONTROL.L = 0
        elseif KEY:lower() == 'd' then
            CONTROL.R = 0
        end
    end)
    fly()
    end
    if string.sub(msg, 1, 6) == (prefix.."unfly") then
        flying = false
        lplayer.Character.Humanoid.PlatformStand = false
    end
    if string.sub(msg, 1, 6) == (prefix.."chat ") then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((string.sub(msg, 7)), "All")
    end
    if string.sub(msg, 1, 6) == (prefix.."spam ") then
        spamtext = (string.sub(msg, 7))
        spamming = true
    end
    if string.sub(msg, 1, 7) == (prefix.."unspam") then
        spamming = false
    end
    if string.sub(msg, 1, 10) == (prefix.."spamwait ") then
        spamdelay = (string.sub(msg, 11))
    end
    if string.sub(msg, 1, 8) == (prefix.."pmspam ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            pmspammed = v.Name
            spammingpm = true
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unpmspam") then
        spammingpm = false
    end
    if string.sub(msg, 1, 9) == (prefix.."cfreeze ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 10))) do
            v.Character["Left Leg"].Anchored = true
            v.Character["Left Arm"].Anchored = true
            v.Character["Right Leg"].Anchored = true
            v.Character["Right Arm"].Anchored = true
            v.Character.Torso.Anchored = true
            v.Character.Head.Anchored = true
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."uncfreeze ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 12))) do
            v.Character["Left Leg"].Anchored = false
            v.Character["Left Arm"].Anchored = false
            v.Character["Right Leg"].Anchored = false
            v.Character["Right Arm"].Anchored = false
            v.Character.Torso.Anchored = false
            v.Character.Head.Anchored = false
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unlockws") then
        local a = game:GetService("Workspace"):getChildren()
        for i = 1, #a do
            if a[i].className == "Part" then
                a[i].Locked = false
            elseif a[i].className == "Model" then
                local r = a[i]:getChildren()
                for i = 1, #r do
                    if r[i].className == "Part" then
                    r[i].Locked = false
                    end
                end
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "Workspace unlocked. Use ;lockws to lock.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."lockws") then
        local a = game:GetService("Workspace"):getChildren()
        for i = 1, #a do
            if a[i].className == "Part" then
                a[i].Locked = true
            elseif a[i].className == "Model" then
                local r = a[i]:getChildren()
                for i = 1, #r do
                    if r[i].className == "Part" then
                    r[i].Locked = true
                    end
                end
            end
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."btools") then
        local Clone_T = Instance.new("HopperBin",lplayer.Backpack)
        Clone_T.BinType = "Clone"
        local Destruct = Instance.new("HopperBin",lplayer.Backpack)
        Destruct.BinType = "Hammer"
        local Hold_T = Instance.new("HopperBin",lplayer.Backpack)
        Hold_T.BinType = "Grab"
    end
    if string.sub(msg, 1, 7) == (prefix.."pstand") then
        lplayer.Character.Humanoid.PlatformStand = true
    end
    if string.sub(msg, 1, 9) == (prefix.."unpstand") then
        lplayer.Character.Humanoid.PlatformStand = false
    end
    if string.sub(msg, 1, 10) == (prefix.."blockhead") then
        lplayer.Character.Head.Mesh:Destroy()
    end
    if string.sub(msg, 1, 4) == (prefix.."sit") then
        lplayer.Character.Humanoid.Sit = true
    end
    if string.sub(msg, 1, 10) == (prefix.."bringobj ") then
        local function bringobjw()
        for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if obj.Name == (string.sub(msg, 11)) then
        obj.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        obj.CanCollide = false
        obj.Transparency = 0.7
        wait()
        obj.CFrame = lplayer.Character["Left Leg"].CFrame
        wait()
        obj.CFrame = lplayer.Character["Right Leg"].CFrame
        wait()
        obj.CFrame = lplayer.Character["Head"].CFrame
        end
        end
        end
        while wait() do
            bringobjw()
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "BringObj";
        Text = "BringObj enabled.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."wsvis ") then
        vis = (string.sub(msg, 8))
        local a = game:GetService("Workspace"):GetDescendants()
        for i = 1, #a do
            if a[i].className == "Part" then
                a[i].Transparency = vis
            elseif a[i].className == "Model" then
                local r = a[i]:getChildren()
                for i = 1, #r do
                    if r[i].className == "Part" then
                    r[i].Transparency = vis
                    end
                end
            end
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."hypertotal") then
        loadstring(game:GetObjects("rbxassetid://1255063809")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "HyperTotal GUI Loaded!";
        })
    end
    if string.sub(msg, 1, 5) == (prefix.."cmds") then
        CMDSFRAME.Visible = true
    end
    if string.sub(msg, 1, 10) == (prefix.."rmeshhats") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."blockhats") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."rmeshtool") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."blocktool") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."spinner") then
        local p = Instance.new("RocketPropulsion")
        p.Parent = lplayer.Character.HumanoidRootPart
        p.Name = "Spinner"
        p.Target = lplayer.Character["Left Arm"]
        p:Fire()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Spinner enabled";
        Text = "Type ;nospinner to disable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."nospinner") then
        lplayer.Character.HumanoidRootPart.Spinner:Destroy()
    end
    if string.sub(msg, 1, 7) == (prefix.."reachd") then
        for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
            if v:isA("Tool") then
                local a = Instance.new("SelectionBox",v.Handle)
                a.Adornee = v.Handle
                v.Handle.Size = Vector3.new(0.5,0.5,60)
                v.GripPos = Vector3.new(0,0,0)
                lplayer.Character.Humanoid:UnequipTools()
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Reach applied!";
        Text = "Applied to equipped sword. Use ;noreach to disable.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."reach ") then
        for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
            if v:isA("Tool") then
                handleSize = v.Handle.Size
                wait()
                local a = Instance.new("SelectionBox",v.Handle)
                a.Name = "a"
                a.Adornee = v.Handle
                v.Handle.Size = Vector3.new(0.5,0.5,(string.sub(msg, 8)))
                v.GripPos = Vector3.new(0,0,0)
                lplayer.Character.Humanoid:UnequipTools()
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Reach applied!";
        Text = "Applied to equipped sword. Use ;noreach to disable.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."noreach") then
        for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
            if v:isA("Tool") then
                v.Handle.a:Destroy()
                v.Handle.Size = handleSize
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Reach removed!";
        Text = "Removed reach from equipped sword.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."rkill ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8)))do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            wait(0.1)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.5)
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."tp me ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."cbring ") then
        if (string.sub(msg, 9)) == "all" or (string.sub(msg, 9)) == "All" or (string.sub(msg, 9)) == "ALL" then
            cbringall = true
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
                brplr = v.Name
            end
        end
        cbring = true
    end
    if string.sub(msg, 1, 9) == (prefix.."uncbring") then
        cbring = false
        cbringall = false
    end
    if string.sub(msg, 1, 6) == (prefix.."swap ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            local NOWPLR = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            local NOW = lplayer.Character.HumanoidRootPart.CFrame
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            local function tp(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
            end
            end
            wait(0.1)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.5)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            wait(0.6)
            tp(lplayer, game:GetService("Players")[v.Name])
            wait(0.4)
            lplayer.Character.HumanoidRootPart.CFrame = NOWPLR
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."glitch ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            wait(0.3)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            wait(0.4)
            b = Instance.new("BodyForce")
            b.Parent = lplayer.Character.HumanoidRootPart
            b.Name = "Glitch"
            b.Force = Vector3.new(100000000,5000,0)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unglitch") then
        lplayer.Character.HumanoidRootPart.Glitch:Destroy()
        lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(10000,0,10000)
        b = Instance.new("BodyForce")
        b.Parent = lplayer.Character.HumanoidRootPart
        b.Name = "unGlitch"
        b.Force = Vector3.new(0,-5000000,0)
        wait(2)
        lplayer.Character.HumanoidRootPart.unGlitch:Destroy()
    end
    if string.sub(msg, 1, 9) == (prefix.."grespawn") then
        lplayer.Character.Humanoid.Health = 0
        wait(1)
        lplayer.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
        lplayer.Character.Torso.CFrame = CFrame.new(1000000,0,1000000)
    end
    if string.sub(msg, 1, 9) == (prefix.."explorer") then
        loadstring(game:GetObjects("rbxassetid://492005721")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "DEX Explorer has loaded.";
        })
    end
    if string.sub(msg, 1, 6) == (prefix.."anim ") then
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://"..(string.sub(msg, 7))
        local track = lplayer.Character.Humanoid:LoadAnimation(Anim)
        track:Play(.1, 1, 1)
    end
    if string.sub(msg, 1, 8) == (prefix.."animgui") then
        loadstring(game:GetObjects("rbxassetid://1202558084")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "Energize Animations GUI has loaded.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."savepos") then
        saved = lplayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Use ;loadpos to return to saved position.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."loadpos") then
        lplayer.Character.HumanoidRootPart.CFrame = saved
    end
    if string.sub(msg, 1, 6) == (prefix.."bang ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            local Anim2 = Instance.new("Animation")
            Anim2.AnimationId = "rbxassetid://148840371"
            local track2 = lplayer.Character.Humanoid:LoadAnimation(Anim2)
            track2:Play(.1, 1, 1)
            bplrr = v.Name
            banpl = true
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."unbang") then
        banpl = false
    end
    if string.sub(msg, 1, 10) == (prefix.."bringmod ") then
        local function bringmodw()
        for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if obj.Name == (string.sub(msg, 11)) then
        for i,ch in pairs(obj:GetDescendants()) do
        if (ch:IsA("BasePart")) then
        ch.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        ch.CanCollide = false
        ch.Transparency = 0.7
        wait()
        ch.CFrame = lplayer.Character["Left Leg"].CFrame
        wait()
        ch.CFrame = lplayer.Character["Right Leg"].CFrame
        wait()
        ch.CFrame = lplayer.Character["Head"].CFrame
        end
        end
        end
        end
        end
        while wait() do
            bringmodw()
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "BringMod";
        Text = "BringMod enabled.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."respawn") then
        local mod = Instance.new('Model', workspace) mod.Name = 're '..lplayer.Name
        local hum = Instance.new('Humanoid', mod)
        local ins = Instance.new('Part', mod) ins.Name = 'Torso' ins.CanCollide = false ins.Transparency = 1
        lplayer.Character = mod
    end
    if string.sub(msg, 1, 9) == (prefix.."shutdown") then
        game:GetService'RunService'.Stepped:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService'Players':GetPlayers()) do
                if v.Character ~= nil and v.Character:FindFirstChild'Head' then
                    for _,x in pairs(v.Character.Head:GetChildren()) do
                        if x:IsA'Sound' then x.Playing = true x.CharacterSoundEvent:FireServer(true, true) end
                    end
                end
            end
        end)
        end)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Attempting Shutdown";
        Text = "Shutdown Attempt has begun.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."delobj ") then
        objtodel = (string.sub(msg, 9))
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == objtodel then
                v:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."getplrs") then
        for i,v in pairs(game:GetService("Players"):GetPlayers())do
            print(v)
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Printed";
        Text = "Players have been printed to console. (F9)";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."deldecal") then
        for i,v in pairs(game:GetService("Workspace"):GetDescendants())do
            if (v:IsA("Decal")) then
                v:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."opfinality") then
        loadstring(game:GetObjects("rbxassetid://1294358929")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "OpFinality GUI has loaded.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."remotes") then
        remotes = true
        added = true
        game.DescendantAdded:connect(function(rmt)
        if added == true then
        if remotes == true then
        if rmt:IsA("RemoteEvent") then
        print("A RemoteEvent was added!")
        print(" game." .. rmt:GetFullName() .. " | RemoteEvent")
        print(" game." .. rmt:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
        end end end
        end)
        game.DescendantAdded:connect(function(rmtfnctn)
        if added == true then
        if remotes == true then
        if rmtfnctn:IsA("RemoteFunction") then
        warn("A RemoteFunction was added!")
        warn(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction")
        print(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
        end end end
        end)
       
        game.DescendantAdded:connect(function(bndfnctn)
        if added == true then
        if binds == true then
        if bndfnctn:IsA("BindableFunction") then
        print("A BindableFunction was added!")
        print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction")
        print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
        end end end
        end)
       
        game.DescendantAdded:connect(function(bnd)
        if added == true then
        if binds == true then
        if bnd:IsA("BindableEvent") then
        warn("A BindableEvent was added!")
        warn(" game." .. bnd:GetFullName() .. " | BindableEvent")
        print(" game." .. bnd:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
        end end end
        end)
       
       
        if binds == true then
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("BindableFunction") then
        print(" game." .. v:GetFullName() .. " | BindableFunction")
        print(" game." .. v:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
        end end
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("BindableEvent") then
        warn(" game." .. v:GetFullName() .. " | BindableEvent")
        print(" game." .. v:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
        end end
        else
        print("Off")
        end
        if remotes == true then
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("RemoteFunction") then
        warn(" game." .. v:GetFullName() .. " | RemoteFunction")
        print(" game." .. v:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
        end end
        wait()
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("RemoteEvent") then
        print(" game." .. v:GetFullName() .. " | RemoteEvent")
        print(" game." .. v:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
        end end
        else
        print("Off")
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Printing Remotes";
        Text = "Type ;noremotes to disable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."noremotes") then
        remotes = false
        added = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Printing Remotes Disabled";
        Text = "Type ;remotes to enable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."tpdefault") then
        spin = false
        followed = false
        traill = false
        noclip = false
        annoying = false
        hwalk = false
        cbringing = false
    end
    if string.sub(msg, 1, 8) == (prefix.."stopsit") then
        stopsitting = true
    end
    if string.sub(msg, 1, 6) == (prefix.."gosit") then
        stopsitting = false
    end
    if string.sub(msg, 1, 8) == (prefix.."version") then
        print(adminversion)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Version";
        Text = adminversion;
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."clicktp") then
        clickgoto = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click TP";
        Text = "Press E to teleport to mouse position, ;noclicktp to stop";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."clickdel") then
        clickdel = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click Delete";
        Text = "Press E to delete part at mouse, ;noclickdel to stop";
        })
    end
    if string.sub(msg, 1, 11) == (prefix.."noclickdel") then
        clickdel = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click Delete";
        Text = "Click delete has been disabled.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."noclicktp") then
        clickgoto = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click TP";
        Text = "Click TP has been disabled.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."toolson") then
        gettingtools = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Tools Enabled";
        Text = "Automatically colleting tools dropped.";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."toolsoff") then
        gettingtools = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Tools Disabled";
        Text = "Click TP has been disabled.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."delcmdbar") then
        ScreenGui:Destroy()
    end
    if string.sub(msg, 1, 6) == (prefix.."reset") then
        lplayer.Character.Head:Destroy()
    end
    if string.sub(msg, 1, 7) == (prefix.."state ") then
        statechosen = string.sub(msg, 8)
        changingstate = true
    end
    if string.sub(msg, 1, 9) == (prefix.."gravity ") then
        game:GetService("Workspace").Gravity = string.sub(msg, 10)
    end
    if string.sub(msg, 1, 10) == (prefix.."looprhats") then
        removingmeshhats = true
    end
    if string.sub(msg, 1, 12) == (prefix.."unlooprhats") then
        removingmeshhats = false
    end
    if string.sub(msg, 1, 10) == (prefix.."looprtool") then
        removingmeshtool = true
    end
    if string.sub(msg, 1, 12) == (prefix.."unlooprtool") then
        removingmeshtool = false
    end
    if string.sub(msg, 1, 10) == (prefix.."givetool ") then
        for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
            if v:IsA("Tool") then
                for i,player in pairs(GetPlayer(string.sub(msg, 11))) do
                    v.Parent = player.Character
                end
            end
        end
    end
    if string.sub(msg, 1, 14) == (prefix.."givealltools ") then
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
            if v:IsA("Tool") then
                v.Parent = lplayer.Character
                wait()
                for i,player in pairs(GetPlayer(string.sub(msg, 15))) do
                    v.Parent = player.Character
                end
            end
        end
    end
    if string.sub(msg, 1, 5) == (prefix.."age ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 6))) do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account Age: "..player.AccountAge.." days!", "All")
        end
    end
    if string.sub(msg, 1, 4) == (prefix.."id ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 5))) do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account ID: "..player.UserId, "All")
        end
    end
    if string.sub(msg, 1, 6) == (prefix..".age ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 7))) do
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = player.AccountAge.." Days";
            Text = "Account age of "..player.Name;
            })
        end
    end
    if string.sub(msg, 1, 5) == (prefix..".id ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 6))) do
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = player.UserId.." ID";
            Text = "Account ID of "..player.Name;
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."gameid") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Game ID";
        Text = "Game ID: ".. game.GameId;
        })
    end
    if string.sub(msg, 1, 4) == (prefix.."pgs") then
        local pgscheck = game:GetService("Workspace"):PGSIsEnabled()
        if pgscheck == true then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "PGSPhysicsSolverEnabled";
            Text = "PGS is Enabled!";
            })
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "PGSPhysicsSolverEnabled";
            Text = "PGS is Disabled!";
            })
        end
    end
    if string.sub(msg, 1, 12) == (prefix.."removeinvis") then
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("Part") then
                if v.Transparency == 1 then
                    if v.Name ~= "HumanoidRootPart" then
                        v:Destroy()
                    end
                end
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."removefog") then
        game:GetService("Lighting").FogStart = 0
        game:GetService("Lighting").FogEnd = 9999999999999
    end
    if string.sub(msg, 1, 8) == (prefix.."disable") then
        lplayer.Character.Humanoid.Parent = lplayer
    end
    if string.sub(msg, 1, 7) == (prefix.."enable") then
        lplayer.Humanoid.Parent = lplayer.Character
    end
    if string.sub(msg, 1, 8) == (prefix.."prefix ") then
        prefix = (string.sub(msg, 9, 9))
        wait(0.1)
        change()
        wait(0.1)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Prefix changed!";
        Text = "Prefix is now "..prefix..". Use ;resetprefix to reset to ;";
        })
    end
    if string.sub(msg, 1, 12) == (";resetprefix") then
        prefix = ";"
        wait(0.1)
        change()
        wait(0.1)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Prefix changed!";
        Text = "Prefix is now "..prefix..". Make sure it's one key!";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."flyspeed ") then
        speedfly = string.sub(msg, 11)
        wait()
        change()
    end
    if string.sub(msg, 1, 8) == (prefix.."carpet ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            local Anim3 = Instance.new("Animation")
            Anim3.AnimationId = "rbxassetid://282574440"
            local track3 = lplayer.Character.Humanoid:LoadAnimation(Anim3)
            track3:Play(.1, 1, 1)
            bplrr = v.Name
            banpl = true
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."uncarpet") then
        banpl = false
    end
    if string.sub(msg, 1, 7) == (prefix.."stare ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            staring = true
            stareplr = v
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unstare") then
        staring = false
    end
    if string.sub(msg, 1, 8) == (prefix.."logchat") then
        chatlogs = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "LogChat enabled";
        Text = "Now logging all player chat.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."unlogchat") then
        chatlogs = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "LogChat disabled";
        Text = "Stopped logging all player chat.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."fixcam") then
        game:GetService("Workspace").CurrentCamera:Destroy()
        wait(0.1)
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
        game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
        lplayer.CameraMinZoomDistance = 0.5
        lplayer.CameraMaxZoomDistance = 400
        lplayer.CameraMode = "Classic"
    end
    if string.sub(msg, 1, 8) == (prefix.."unstate") then
        changingstate = false
    end
end)
 
local function tp()
    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if player.Name == brplr then
                player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame + lplayer.Character.HumanoidRootPart.CFrame.lookVector * 2
            end
        end
    end
end
local function tpall()
    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame + lplayer.Character.HumanoidRootPart.CFrame.lookVector * 3
        end
    end
end
spawn(function()
    while wait(spamdelay) do
        if spamming == true then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamtext, "All")
        end
    end
end)
spawn(function()
    while wait(spamdelay) do
        if spammingpm == true then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..pmspammed.." @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@", "All")
        end
    end
end)
spawn(function()
    while wait() do
        if cbring == true then
            tp()
        end
    end
end)
spawn(function()
    while wait() do
        if cbringall == true then
            tpall()
        end
    end
end)
 
Mouse.KeyDown:connect(function(Key)
    if Key == prefix then
        CMDBAR:CaptureFocus()
    end
end)
 
CMDBAR.FocusLost:connect(function(enterPressed)
    if enterPressed then
        if string.sub(CMDBAR.Text, 1, 5) == ("kill ") then
            if string.sub(CMDBAR.Text, 6) == "me" then
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(100000,0,100000)
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6)))do
                    local NOW = lplayer.Character.HumanoidRootPart.CFrame
                    lplayer.Character.Humanoid.Name = 1
                    local l = lplayer.Character["1"]:Clone()
                    l.Parent = lplayer.Character
                    l.Name = "Humanoid"
                    wait(0.1)
                    lplayer.Character["1"]:Destroy()
                    game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                    lplayer.Character.Animate.Disabled = true
                    wait(0.1)
                    lplayer.Character.Animate.Disabled = false
                    lplayer.Character.Humanoid.DisplayDistanceType = "None"
                    for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                    lplayer.Character.Humanoid:EquipTool(v)
                    end
                    local function tp(player,player2)
                    local char1,char2=player.Character,player2.Character
                    if char1 and char2 then
                    char1:MoveTo(char2.Head.Position)
                    end
                    end
                    wait(0.1)
                    lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                    wait(0.2)
                    lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                    wait(0.5)
                    lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
                    wait(0.7)
                    tp(lplayer,game:GetService("Players")[v.Name])
                    wait(0.7)
                    lplayer.Character.HumanoidRootPart.CFrame = NOW
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Tools needed!";
                    Text = "You need a tool in your backpack for this command!";
                    })
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("bring ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7)))do
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
                end
                end
                local function getout(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                tp(game:GetService("Players")[v.Name], lplayer)
                wait(0.2)
                tp(game:GetService("Players")[v.Name], lplayer)
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                wait(0.5)
                getout(lplayer, game:GetService("Players")[v.Name])
                wait(0.3)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("spin ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                spinplr = v
                wait(0.5)
                spin = true
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unspin") then
            spin = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("attach ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                wait(0.3)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                attplr = v
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("unattach ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                local function getout(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                getout(lplayer, game:GetService("Players")[v.Name])
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("follow ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                followed = true
                flwplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unfollow") then
            followed = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("freefall ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.6)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                wait(0.6)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000,0)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("trail ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                traill = true
                trlplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("untrail") then
            traill = false
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("orbit ") then
            if string.sub(CMDBAR.Text, 7) == "all" or string.sub(CMDBAR.Text, 7) == "others" or string.sub(CMDBAR.Text, 7) == "me" then
                lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                    local o = Instance.new("RocketPropulsion")
                    o.Parent = lplayer.Character.HumanoidRootPart
                    o.Name = "Orbit"
                    o.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                    o:Fire()
                    noclip = true
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unorbit") then
            lplayer.Character.HumanoidRootPart.Orbit:Destroy()
            noclip = false
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("fling ") then
            if string.sub(CMDBAR.Text, 7) == "all" or string.sub(CMDBAR.Text, 7) == "others" or string.sub(CMDBAR.Text, 7) == "me" then
                lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                    local y = Instance.new("RocketPropulsion")
                    y.Parent = lplayer.Character.HumanoidRootPart
                    y.CartoonFactor = 1
                    y.MaxThrust = 800000
                    y.MaxSpeed = 1000
                    y.ThrustP = 200000
                    y.Name = "Fling"
                    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
                    y.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                    y:Fire()
                    noclip = true
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unfling") then
            noclip = false
            lplayer.Character.HumanoidRootPart.Fling:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
            wait(0.4)
            lplayer.Character.HumanoidRootPart.Fling:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("fecheck") then
            if game:GetService("Workspace").FilteringEnabled == true then
                warn("FE is Enabled (Filtering Enabled)")
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "FE is Enabled";
                    Text = "Filtering Enabled. Enjoy using Reviz Admin!";
                })
            else
                warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "FE is Disabled";
                    Text = "Filtering Disabled. Consider using a different admin script.";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("void ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.6)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999999999,0,999999999999999)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("noclip") then
            noclip = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Noclip enabled";
            Text = "Type ;clip to disable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 4) == ("clip") then
            noclip = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Noclip disabled";
            Text = "Type ;noclip to enable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("speed ") then
            lplayer.Character.Humanoid.WalkSpeed = (string.sub(CMDBAR.Text, 7))
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("ws ") then
            lplayer.Character.Humanoid.WalkSpeed = (string.sub(CMDBAR.Text, 4))
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("hipheight ") then
            lplayer.Character.Humanoid.HipHeight = (string.sub(CMDBAR.Text, 11))
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("hh ") then
            lplayer.Character.Humanoid.HipHeight = (string.sub(CMDBAR.Text, 4))
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("jumppower ") then
            lplayer.Character.Humanoid.JumpPower = (string.sub(CMDBAR.Text, 11))
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("jp ") then
            lplayer.Character.Humanoid.JumpPower = (string.sub(CMDBAR.Text, 4))
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("default") then
            lplayer.Character.Humanoid.JumpPower = 50
            lplayer.Character.Humanoid.WalkSpeed = 16
            lplayer.Character.Humanoid.HipHeight = 0
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("annoy ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                annoying = true
                annplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unannoy") then
            annoying = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("headwalk ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                hwalk = true
                hdwplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("unheadwalk") then
            hwalk = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("nolimbs") then
            lplayer.Character["Left Leg"]:Destroy()
            lplayer.Character["Left Arm"]:Destroy()
            lplayer.Character["Right Leg"]:Destroy()
            lplayer.Character["Right Arm"]:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("god") then
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "FE Godmode enabled";
            Text = "Use ;grespawn or ;respawn to remove.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("drophats") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                    v.Parent = workspace
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("droptool") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Tool")) then
                    v.Parent = workspace
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("loopdhats") then
            droppinghats = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Enabled";
            Text = "Type ;unloopdhats to disable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unloopdhats") then
            droppinghats = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Disabled";
            Text = "Type ;loopdhats to enable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("loopdtool") then
            droppingtools = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Enabled";
            Text = "Type ;unloopdtool to disable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unloopdtool") then
            droppingtools = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Disabled";
            Text = "Type ;loopdtool to enable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("invisible") then -- Credit to Timeless
            Local = game:GetService('Players').LocalPlayer
            Char  = Local.Character
            touched,tpdback = false, false
            box = Instance.new('Part',workspace)
            box.Anchored = true
            box.CanCollide = true
            box.Size = Vector3.new(10,1,10)
            box.Position = Vector3.new(0,10000,0)
            box.Touched:connect(function(part)
                if (part.Parent.Name == Local.Name) then
                    if touched == false then
                        touched = true
                        function apply()
                            if script.Disabled ~= true then
                                no = Char.HumanoidRootPart:Clone()
                                wait(.25)
                                Char.HumanoidRootPart:Destroy()
                                no.Parent = Char
                                Char:MoveTo(loc)
                                touched = false
                            end end
                        if Char then
                            apply()
                        end
                    end
                end
            end)
            repeat wait() until Char
            loc = Char.HumanoidRootPart.Position
            Char:MoveTo(box.Position + Vector3.new(0,.5,0))
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Invisibility enabled!";
            Text = "Reset or use ;respawn to remove.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("view ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                if game:GetService("Players")[v.Name].Character.Humanoid then
                    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Humanoid
                else
                    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unview") then
            if lplayer.Character.Humanoid then
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
            else
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("goto ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            end
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("fly") then
        repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
        repeat wait() until Mouse
       
        local T = lplayer.Character.HumanoidRootPart
        local CONTROL = {F = 0, B = 0, L = 0, R = 0}
        local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
        local SPEED = speedget
       
        local function fly()
            flying = true
            local BG = Instance.new('BodyGyro', T)
            local BV = Instance.new('BodyVelocity', T)
            BG.P = 9e4
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = T.CFrame
            BV.velocity = Vector3.new(0, 0.1, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
            spawn(function()
            repeat wait()
            lplayer.Character.Humanoid.PlatformStand = true
            if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
            SPEED = 50
            elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
            SPEED = 0
            end
            if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
            elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            else
            BV.velocity = Vector3.new(0, 0.1, 0)
            end
            BG.cframe = workspace.CurrentCamera.CoordinateFrame
                    until not flying
                    CONTROL = {F = 0, B = 0, L = 0, R = 0}
                    lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                    SPEED = 0
                    BG:destroy()
                    BV:destroy()
                    lplayer.Character.Humanoid.PlatformStand = false
                end)
            end
        Mouse.KeyDown:connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = speedfly
            elseif KEY:lower() == 's' then
                CONTROL.B = -speedfly
            elseif KEY:lower() == 'a' then
                CONTROL.L = -speedfly
            elseif KEY:lower() == 'd' then
                CONTROL.R = speedfly
            end
        end)
        Mouse.KeyUp:connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = 0
            elseif KEY:lower() == 's' then
                CONTROL.B = 0
            elseif KEY:lower() == 'a' then
                CONTROL.L = 0
            elseif KEY:lower() == 'd' then
                CONTROL.R = 0
            end
        end)
        fly()
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("unfly") then
            flying = false
            lplayer.Character.Humanoid.PlatformStand = false
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("chat ") then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((string.sub(CMDBAR.Text, 6)), "All")
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("spam ") then
            spamtext = (string.sub(CMDBAR.Text, 6))
            spamming = true
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unspam") then
            spamming = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("spamwait ") then
            spamdelay = (string.sub(CMDBAR.Text, 10))
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("pmspam ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                pmspammed = v.Name
                spammingpm = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unpmspam") then
            spammingpm = false
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("cfreeze ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 9))) do
                v.Character["Left Leg"].Anchored = true
                v.Character["Left Arm"].Anchored = true
                v.Character["Right Leg"].Anchored = true
                v.Character["Right Arm"].Anchored = true
                v.Character.Torso.Anchored = true
                v.Character.Head.Anchored = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("uncfreeze ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 11))) do
                v.Character["Left Leg"].Anchored = false
                v.Character["Left Arm"].Anchored = false
                v.Character["Right Leg"].Anchored = false
                v.Character["Right Arm"].Anchored = false
                v.Character.Torso.Anchored = false
                v.Character.Head.Anchored = false
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unlockws") then
            local a = game:GetService("Workspace"):getChildren()
            for i = 1, #a do
                if a[i].className == "Part" then
                    a[i].Locked = false
                elseif a[i].className == "Model" then
                    local r = a[i]:getChildren()
                    for i = 1, #r do
                        if r[i].className == "Part" then
                        r[i].Locked = false
                        end
                    end
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "Workspace unlocked. Use ;lockws to lock.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("lockws") then
            local a = game:GetService("Workspace"):getChildren()
            for i = 1, #a do
                if a[i].className == "Part" then
                    a[i].Locked = true
                elseif a[i].className == "Model" then
                    local r = a[i]:getChildren()
                    for i = 1, #r do
                        if r[i].className == "Part" then
                        r[i].Locked = true
                        end
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("btools") then
            local Clone_T = Instance.new("HopperBin",lplayer.Backpack)
            Clone_T.BinType = "Clone"
            local Destruct = Instance.new("HopperBin",lplayer.Backpack)
            Destruct.BinType = "Hammer"
            local Hold_T = Instance.new("HopperBin",lplayer.Backpack)
            Hold_T.BinType = "Grab"
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("pstand") then
            lplayer.Character.Humanoid.PlatformStand = true
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unpstand") then
            lplayer.Character.Humanoid.PlatformStand = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("blockhead") then
            lplayer.Character.Head.Mesh:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("sit") then
            lplayer.Character.Humanoid.Sit = true
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("bringobj ") then
            local function bringobjw()
            for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if obj.Name == (string.sub(CMDBAR.Text, 10)) then
            obj.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            obj.CanCollide = false
            obj.Transparency = 0.7
            wait()
            obj.CFrame = lplayer.Character["Left Leg"].CFrame
            wait()
            obj.CFrame = lplayer.Character["Right Leg"].CFrame
            wait()
            obj.CFrame = lplayer.Character["Head"].CFrame
            end
            end
            end
            while wait() do
                bringobjw()
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "BringObj";
            Text = "BringObj enabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("wsvis ") then
            vis = (string.sub(CMDBAR.Text, 7))
            local a = game:GetService("Workspace"):GetDescendants()
            for i = 1, #a do
                if a[i].className == "Part" then
                    a[i].Transparency = vis
                elseif a[i].className == "Model" then
                    local r = a[i]:getChildren()
                    for i = 1, #r do
                        if r[i].className == "Part" then
                        r[i].Transparency = vis
                        end
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("hypertotal") then
            loadstring(game:GetObjects("rbxassetid://1255063809")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "HyperTotal GUI Loaded!";
            })
        end
        if string.sub(CMDBAR.Text, 1, 4) == ("cmds") then
            CMDSFRAME.Visible = true
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("rmeshhats") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("blockhats") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("rmeshtool") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Tool")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("blocktool") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Tool")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("spinner") then
            local p = Instance.new("RocketPropulsion")
            p.Parent = lplayer.Character.HumanoidRootPart
            p.Name = "Spinner"
            p.Target = lplayer.Character["Left Arm"]
            p:Fire()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Spinner enabled";
            Text = "Type ;nospinner to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("nospinner") then
            lplayer.Character.HumanoidRootPart.Spinner:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("reachd") then
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    local a = Instance.new("SelectionBox",v.Handle)
                    a.Adornee = v.Handle
                    v.Handle.Size = Vector3.new(0.5,0.5,60)
                    v.GripPos = Vector3.new(0,0,0)
                    lplayer.Character.Humanoid:UnequipTools()
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Reach applied!";
            Text = "Applied to equipped sword. Use ;noreach to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("reach ") then
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    local a = Instance.new("SelectionBox",v.Handle)
                    a.Name = "Reach"
                    a.Adornee = v.Handle
                    v.Handle.Size = Vector3.new(0.5,0.5,(string.sub(CMDBAR.Text, 7)))
                    v.GripPos = Vector3.new(0,0,0)
                    lplayer.Character.Humanoid:UnequipTools()
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Reach applied!";
            Text = "Applied to equipped sword. Use ;noreach to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("noreach") then
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    v.Handle.Reach:Destroy()
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Reach removed!";
            Text = "Removed reach from equipped sword.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("rkill ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7)))do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                wait(0.1)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("tp me ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("cbring ") then
            if (string.sub(CMDBAR.Text, 8)) == "all" or (string.sub(CMDBAR.Text, 8)) == "All" or (string.sub(CMDBAR.Text, 8)) == "ALL" then
                cbringall = true
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                    brplr = v.Name
                end
            end
            cbring = true
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("uncbring") then
            cbring = false
            cbringall = false
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("swap ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                local NOWPLR = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                wait(0.1)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                wait(0.6)
                tp(lplayer, game:GetService("Players")[v.Name])
                wait(0.4)
                lplayer.Character.HumanoidRootPart.CFrame = NOWPLR
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("glitch ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                wait(0.3)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                wait(0.4)
                b = Instance.new("BodyForce")
                b.Parent = lplayer.Character.HumanoidRootPart
                b.Name = "Glitch"
                b.Force = Vector3.new(100000000,5000,0)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unglitch") then
            lplayer.Character.HumanoidRootPart.Glitch:Destroy()
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(10000,0,10000)
            b = Instance.new("BodyForce")
            b.Parent = lplayer.Character.HumanoidRootPart
            b.Name = "unGlitch"
            b.Force = Vector3.new(0,-5000000,0)
            wait(2)
            lplayer.Character.HumanoidRootPart.unGlitch:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("grespawn") then
            lplayer.Character.Humanoid.Health = 0
            wait(1)
            lplayer.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
            lplayer.Character.Torso.CFrame = CFrame.new(1000000,0,1000000)
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("explorer") then
            loadstring(game:GetObjects("rbxassetid://492005721")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "DEX Explorer has loaded.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("anim ") then
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"..(string.sub(CMDBAR.Text, 6))
            local track = lplayer.Character.Humanoid:LoadAnimation(Anim)
            track:Play(.1, 1, 1)
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("animgui") then
            loadstring(game:GetObjects("rbxassetid://1202558084")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "Energize Animations GUI has loaded.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("savepos") then
            saved = lplayer.Character.HumanoidRootPart.CFrame
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Position Saved";
            Text = "Use ;loadpos to return to saved position.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("loadpos") then
            lplayer.Character.HumanoidRootPart.CFrame = saved
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("bang ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                local Anim2 = Instance.new("Animation")
                Anim2.AnimationId = "rbxassetid://148840371"
                local track2 = lplayer.Character.Humanoid:LoadAnimation(Anim2)
                track2:Play(.1, 1, 1)
                bplrr = v.Name
                banpl = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unbang") then
            banpl = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("bringmod ") then
            local function bringmodw()
            for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if obj.Name == (string.sub(CMDBAR.Text, 10)) then
            for i,ch in pairs(obj:GetDescendants()) do
            if (ch:IsA("BasePart")) then
            ch.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            ch.CanCollide = false
            ch.Transparency = 0.7
            wait()
            ch.CFrame = lplayer.Character["Left Leg"].CFrame
            wait()
            ch.CFrame = lplayer.Character["Right Leg"].CFrame
            wait()
            ch.CFrame = lplayer.Character["Head"].CFrame
            end
            end
            end
            end
            end
            while wait() do
                bringmodw()
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "BringMod";
            Text = "BringMod enabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("respawn") then
            local mod = Instance.new('Model', workspace) mod.Name = 're '..lplayer.Name
            local hum = Instance.new('Humanoid', mod)
            local ins = Instance.new('Part', mod) ins.Name = 'Torso' ins.CanCollide = false ins.Transparency = 1
            lplayer.Character = mod
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("shutdown") then
            game:GetService'RunService'.Stepped:Connect(function()
            pcall(function()
                for i,v in pairs(game:GetService'Players':GetPlayers()) do
                    if v.Character ~= nil and v.Character:FindFirstChild'Head' then
                        for _,x in pairs(v.Character.Head:GetChildren()) do
                            if x:IsA'Sound' then x.Playing = true x.CharacterSoundEvent:FireServer(true, true) end
                        end
                    end
                end
            end)
            end)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Attempting Shutdown";
            Text = "Shutdown Attempt has begun.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("delobj ") then
            objtodel = (string.sub(CMDBAR.Text, 8))
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v.Name == objtodel then
                    v:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("getplrs") then
            for i,v in pairs(game:GetService("Players"):GetPlayers())do
                print(v)
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Printed";
            Text = "Players have been printed to console. (F9)";
            })
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("deldecal") then
            for i,v in pairs(game:GetService("Workspace"):GetDescendants())do
                if (v:IsA("Decal")) then
                    v:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("opfinality") then
            loadstring(game:GetObjects("rbxassetid://1294358929")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "OpFinality GUI has loaded.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("remotes") then
            remotes = true
            added = true
            game.DescendantAdded:connect(function(rmt)
            if added == true then
            if remotes == true then
            if rmt:IsA("RemoteEvent") then
            print("A RemoteEvent was added!")
            print(" game." .. rmt:GetFullName() .. " | RemoteEvent")
            print(" game." .. rmt:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
            end end end
            end)
            game.DescendantAdded:connect(function(rmtfnctn)
            if added == true then
            if remotes == true then
            if rmtfnctn:IsA("RemoteFunction") then
            warn("A RemoteFunction was added!")
            warn(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction")
            print(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
            end end end
            end)
           
            game.DescendantAdded:connect(function(bndfnctn)
            if added == true then
            if binds == true then
            if bndfnctn:IsA("BindableFunction") then
            print("A BindableFunction was added!")
            print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction")
            print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
            end end end
            end)
           
            game.DescendantAdded:connect(function(bnd)
            if added == true then
            if binds == true then
            if bnd:IsA("BindableEvent") then
            warn("A BindableEvent was added!")
            warn(" game." .. bnd:GetFullName() .. " | BindableEvent")
            print(" game." .. bnd:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
            end end end
            end)
           
           
            if binds == true then
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("BindableFunction") then
            print(" game." .. v:GetFullName() .. " | BindableFunction")
            print(" game." .. v:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
            end end
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("BindableEvent") then
            warn(" game." .. v:GetFullName() .. " | BindableEvent")
            print(" game." .. v:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
            end end
            else
            print("Off")
            end
            if remotes == true then
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("RemoteFunction") then
            warn(" game." .. v:GetFullName() .. " | RemoteFunction")
            print(" game." .. v:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
            end end
            wait()
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("RemoteEvent") then
            print(" game." .. v:GetFullName() .. " | RemoteEvent")
            print(" game." .. v:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
            end end
            else
            print("Off")
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Printing Remotes";
            Text = "Type ;noremotes to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("noremotes") then
            remotes = false
            added = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Printing Remotes Disabled";
            Text = "Type ;remotes to enable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("tpdefault") then
            spin = false
            followed = false
            traill = false
            noclip = false
            annoying = false
            hwalk = false
            cbringing = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("stopsit") then
            stopsitting = true
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("gosit") then
            stopsitting = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("version") then
            print(adminversion)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Version";
            Text = adminversion;
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("clicktp") then
            clickgoto = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Click TP";
            Text = "Press E to teleport to mouse position";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("noclicktp") then
            clickgoto = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Click TP";
            Text = "Click TP has been disabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("toolson") then
            gettingtools = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools Enabled";
            Text = "Automatically colleting tools dropped.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("toolsoff") then
            gettingtools = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools Disabled";
            Text = "Click TP has been disabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("delcmdbar") then
            ScreenGui:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("reset") then
            lplayer.Character.Head:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("state ") then
            statechosen = string.sub(CMDBAR.Text, 7)
            changingstate = true
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("gravity ") then
            game:GetService("Workspace").Gravity = string.sub(CMDBAR.Text, 9)
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("looprhats") then
        removingmeshhats = true
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unlooprhats") then
            removingmeshhats = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("looprtool") then
            removingmeshtool = true
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unlooprtool") then
            removingmeshtool = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("givetool ") then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("Tool") then
                    for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                        v.Parent = player.Character
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 4) == ("age ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 5))) do
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account Age: "..player.AccountAge.." days!", "All")
            end
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("id ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 4))) do
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account ID: "..player.UserId, "All")
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == (".age ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = player.AccountAge.." Days";
                Text = "Account age of "..player.Name;
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 4) == (".id ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 5))) do
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = player.UserId.." ID";
                Text = "Account ID of "..player.Name;
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("gameid") then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Game ID";
            Text = "Game ID: ".. game.GameId;
            })
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("pgs") then
            local pgscheck = game:GetService("Workspace"):PGSIsEnabled()
            if pgscheck == true then
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "PGSPhysicsSolverEnabled";
                Text = "PGS is Enabled!";
                })
            else
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "PGSPhysicsSolverEnabled";
                Text = "PGS is Disabled!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("removeinvis") then
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA("Part") then
                    if v.Transparency == 1 then
                        if v.Name ~= "HumanoidRootPart" then
                            v:Destroy()
                        end
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("removefog") then
            game:GetService("Lighting").FogStart = 0
            game:GetService("Lighting").FogEnd = 9999999999999
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("disable") then
            lplayer.Character.Humanoid.Parent = lplayer
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("enable") then
            lplayer.Humanoid.Parent = lplayer.Character
        end
        if string.sub(CMDBAR.Text, 1, 13) == ("givealltools ") then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
                if v:IsA("Tool") then
                    v.Parent = lplayer.Character
                    wait()
                    for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 14))) do
                        v.Parent = player.Character
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("flyspeed ") then
            speedfly = string.sub(CMDBAR.Text, 10)
            wait()
            change()
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("carpet ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                local Anim3 = Instance.new("Animation")
                Anim3.AnimationId = "rbxassetid://282574440"
                local track3 = lplayer.Character.Humanoid:LoadAnimation(Anim3)
                track3:Play(.1, 1, 1)
                bplrr = v.Name
                banpl = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("uncarpet") then
            banpl = false
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("stare ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                staring = true
                stareplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unstare") then
            staring = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("logchat") then
            chatlogs = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "LogChat enabled";
            Text = "Now logging all player chat.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("unlogchat") then
            chatlogs = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "LogChat disabled";
            Text = "Stopped logging all player chat.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("fixcam") then
            game:GetService("Workspace").CurrentCamera:Destroy()
            wait(0.1)
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
            game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
            lplayer.CameraMinZoomDistance = 0.5
            lplayer.CameraMaxZoomDistance = 400
            lplayer.CameraMode = "Classic"
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unstate") then
            changingstate = false
        end
        CMDBAR.Text = ""
    end
end)
 
wait(0.3)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Loaded successfully!";
    Text = "Reviz Admin V2 by illremember";
})
wait(0.1)
print("Reviz Admin V2 loaded!")
if game:GetService("Workspace").FilteringEnabled == true then
    warn("FE is Enabled (Filtering Enabled)")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE is Enabled";
        Text = "Filtering Enabled. Enjoy using Reviz Admin!";
    })
else
    warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE is Disabled";
        Text = "Filtering Disabled. Consider using a different admin script.";
    })
end
 
local intro = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
intro.Parent = game:GetService("CoreGui")
Frame.Parent = intro
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 1
Frame.Size = UDim2.new(1, 0, 0, 300)
Frame.Position = UDim2.new(0, 0, -0.4, 0)
ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0, 0, 0, 0)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=1542162618"
Frame:TweenPosition(UDim2.new(0, 0, 0.2, 0), "Out", "Elastic", 3)
wait(3.01)
Frame:TweenPosition(UDim2.new(0, 0, 1.5, 0), "Out", "Elastic", 5)
wait(5.01)
intro:Destroy()
end)

PrisonLifeBut.Name = "PrisonLifeBut"
PrisonLifeBut.Parent = FrixonHubScripts
PrisonLifeBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
PrisonLifeBut.BorderSizePixel = 0
PrisonLifeBut.Position = UDim2.new(0.273770511, 0, 0.386416852, 0)
PrisonLifeBut.Size = UDim2.new(0, 122, 0, 49)
PrisonLifeBut.Font = Enum.Font.SourceSans
PrisonLifeBut.Text = "Prison Life OP GUI"
PrisonLifeBut.TextColor3 = Color3.fromRGB(255, 255, 255)
PrisonLifeBut.TextSize = 14.000
PrisonLifeBut.MouseButton1Down:connect(function() 
	-- I did not make this script but it works as of January 2020

local PrisonGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TitleBar = Instance.new("TextLabel")
local ObGuns = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local KillAll = Instance.new("TextButton")
local TaseBypass = Instance.new("TextButton")
local RemoveDoors = Instance.new("TextButton")
local Btools = Instance.new("TextButton")
local BeNeutral = Instance.new("TextButton")
local ModGun = Instance.new("TextButton")
local ForceCgui = Instance.new("Frame")
local ComSeperateBar = Instance.new("TextLabel")
local InsertUser = Instance.new("TextBox")
local UserHolder = Instance.new("TextLabel")
local CrimTitle = Instance.new("TextLabel")
local CrimTitleBar = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local CrimHideButton = Instance.new("TextButton")
local TPshow = Instance.new("TextButton")
local LocalCommands = Instance.new("Frame")
local LocalCMD_Title = Instance.new("TextLabel")
local NexusTPbut = Instance.new("TextButton")
local CrimBaseTPbut = Instance.new("TextButton")
local GuardAreaTPbut = Instance.new("TextButton")
local FLY = Instance.new("TextButton")
local NWalk = Instance.new("TextButton")
local Njump = Instance.new("TextButton")
local tfJump = Instance.new("TextButton")
local Respawn = Instance.new("TextButton")
local tfWalk = Instance.new("TextButton")
local LocalCMD_BarTitle = Instance.new("TextLabel")
local TheLocal = Instance.new("TextButton")
local CrimG = Instance.new("TextButton")
local tpgui = Instance.new("Frame")
local TPtileBar = Instance.new("TextLabel")
local TPYEET = Instance.new("TextButton")
local UserHolderTP = Instance.new("TextLabel")
local InsertUserTP = Instance.new("TextBox")
local TpTitle = Instance.new("TextLabel")
local RightSepBarTp = Instance.new("TextLabel")
local TpHideButton = Instance.new("TextButton")
local AmokahsLogo = Instance.new("ImageLabel")
local SuperPunch = Instance.new("TextButton")
local KillAura = Instance.new("TextButton")
local BeCriminal = Instance.new("TextButton")
local BeGuard = Instance.new("TextButton")
local BeInmate = Instance.new("TextButton")
local ArrestAll = Instance.new("TextButton")
local InvGuns = Instance.new("TextButton")
local CrimPunch = Instance.new("TextButton")
local Trans = Instance.new("TextButton")
local Open = Instance.new("Frame")
local OpenGUI = Instance.new("TextButton")
local Credit = Instance.new("TextLabel")
local Dino = Instance.new("TextLabel")
local KA = Instance.new("Frame")
local NameOfKa = Instance.new("TextLabel")
local TrueOrFalse = Instance.new("TextLabel")
local TeamGUIOC = Instance.new("Frame")
local TeamOPorCL = Instance.new("TextButton")
local TeamMain = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local SOG = Instance.new("TextButton")
local SOC = Instance.new("TextButton")
local SOI = Instance.new("TextButton")
local Disable = Instance.new("TextButton")
local Apart = Instance.new("Part")

Apart.Name = "PlrsPos"
Apart.Parent = workspace
Apart.Anchored = true
Apart.Archivable = true
Apart.CFrame = CFrame.new(9e99, 9e99, 9e99)

-- Properties

PrisonGui.Name = "PrisonGui"
PrisonGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui

Main.Name = "Main"
Main.Parent = PrisonGui
Main.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.345, 0,2.204, 0)
Main.Size = UDim2.new(0, 338, 0, 301)
Main.Visible = false

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.136094674, 0, 0.00996677764, 0)
Title.Size = UDim2.new(0, 162, 0, 31)
Title.Font = Enum.Font.SourceSansLight
Title.FontSize = Enum.FontSize.Size14
Title.Text = "Prison Life v2.0.2 GUI"
Title.TextColor3 = Color3.new(0.807843, 0.807843, 0.807843)
Title.TextScaled = true
Title.TextStrokeTransparency = 0
Title.TextWrapped = true

TitleBar.Name = "TitleBar"
TitleBar.Parent = Main
TitleBar.BackgroundColor3 = Color3.new(0, 0, 0)
TitleBar.BackgroundTransparency = 0.5
TitleBar.BorderSizePixel = 0
TitleBar.Position = UDim2.new(0, 0, 0.116104871, 0)
TitleBar.Size = UDim2.new(0, 338, 0, 6)
TitleBar.Font = Enum.Font.SourceSans
TitleBar.FontSize = Enum.FontSize.Size14
TitleBar.Text = ""
TitleBar.TextColor3 = Color3.new(0, 0, 0)

ObGuns.Name = "ObGuns"
ObGuns.Parent = Main
ObGuns.BackgroundColor3 = Color3.new(1, 1, 1)
ObGuns.BackgroundTransparency = 0.5
ObGuns.BorderSizePixel = 0
ObGuns.Position = UDim2.new(0.0147928996, 0, 0.16104874, 0)
ObGuns.Size = UDim2.new(0, 159, 0, 22)
ObGuns.Font = Enum.Font.SourceSans
ObGuns.FontSize = Enum.FontSize.Size14
ObGuns.Text = "OBTAIN GUNS"
ObGuns.TextColor3 = Color3.new(1, 1, 1)
ObGuns.TextScaled = true
ObGuns.TextStrokeTransparency = 0
ObGuns.TextWrapped = true

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(1, 0.34902, 0.34902)
Close.BackgroundTransparency = 0.30000001192093
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.908284009, 0, 0.0224719122, 0)
Close.Size = UDim2.new(0, 24, 0, 24)
Close.Font = Enum.Font.SourceSans
Close.FontSize = Enum.FontSize.Size14
Close.Text = ""
Close.TextColor3 = Color3.new(0, 0, 0)

KillAll.Name = "KillAll"
KillAll.Parent = Main
KillAll.BackgroundColor3 = Color3.new(1, 1, 1)
KillAll.BackgroundTransparency = 0.5
KillAll.BorderSizePixel = 0
KillAll.Position = UDim2.new(0.0177514795, 0, 0.265917659, 0)
KillAll.Size = UDim2.new(0, 159, 0, 22)
KillAll.Font = Enum.Font.SourceSans
KillAll.FontSize = Enum.FontSize.Size14
KillAll.Text = "KILL ALL"
KillAll.TextColor3 = Color3.new(1, 1, 1)
KillAll.TextScaled = true
KillAll.TextStrokeTransparency = 0
KillAll.TextWrapped = true

TaseBypass.Name = "TaseBypass"
TaseBypass.Parent = Main
TaseBypass.BackgroundColor3 = Color3.new(1, 1, 1)
TaseBypass.BackgroundTransparency = 0.5
TaseBypass.BorderSizePixel = 0
TaseBypass.Position = UDim2.new(0.0177514795, 0, 0.370786548, 0)
TaseBypass.Size = UDim2.new(0, 159, 0, 22)
TaseBypass.Font = Enum.Font.SourceSans
TaseBypass.FontSize = Enum.FontSize.Size14
TaseBypass.Text = "TASER BYPASS"
TaseBypass.TextColor3 = Color3.new(1, 1, 1)
TaseBypass.TextScaled = true
TaseBypass.TextStrokeTransparency = 0
TaseBypass.TextWrapped = true

RemoveDoors.Name = "RemoveDoors"
RemoveDoors.Parent = Main
RemoveDoors.BackgroundColor3 = Color3.new(1, 1, 1)
RemoveDoors.BackgroundTransparency = 0.5
RemoveDoors.BorderSizePixel = 0
RemoveDoors.Position = UDim2.new(0.0177514795, 0, 0.483146131, 0)
RemoveDoors.Size = UDim2.new(0, 158, 0, 22)
RemoveDoors.Font = Enum.Font.SourceSans
RemoveDoors.FontSize = Enum.FontSize.Size14
RemoveDoors.Text = "REMOVE ALL DOORS"
RemoveDoors.TextColor3 = Color3.new(1, 1, 1)
RemoveDoors.TextScaled = true
RemoveDoors.TextStrokeTransparency = 0
RemoveDoors.TextWrapped = true

Btools.Name = "Btools"
Btools.Parent = Main
Btools.BackgroundColor3 = Color3.new(1, 1, 1)
Btools.BackgroundTransparency = 0.5
Btools.BorderSizePixel = 0
Btools.Position = UDim2.new(0.0177514795, 0, 0.58801502, 0)
Btools.Size = UDim2.new(0, 159, 0, 22)
Btools.Font = Enum.Font.SourceSans
Btools.FontSize = Enum.FontSize.Size14
Btools.Text = "BTOOLS"
Btools.TextColor3 = Color3.new(1, 1, 1)
Btools.TextScaled = true
Btools.TextStrokeTransparency = 0
Btools.TextWrapped = true

BeNeutral.Name = "BeNeutral"
BeNeutral.Parent = Main
BeNeutral.BackgroundColor3 = Color3.new(1, 1, 1)
BeNeutral.BackgroundTransparency = 0.5
BeNeutral.BorderSizePixel = 0
BeNeutral.Position = UDim2.new(0.756781578, 0, 0.696629226, 0)
BeNeutral.Size = UDim2.new(0, 74, 0, 22)
BeNeutral.Font = Enum.Font.SourceSans
BeNeutral.FontSize = Enum.FontSize.Size14
BeNeutral.Text = "NEUTRAL"
BeNeutral.TextColor3 = Color3.new(1, 1, 1)
BeNeutral.TextScaled = true
BeNeutral.TextStrokeTransparency = 0
BeNeutral.TextWrapped = true

ModGun.Name = "ModGun"
ModGun.Parent = Main
ModGun.BackgroundColor3 = Color3.new(1, 1, 1)
ModGun.BackgroundTransparency = 0.5
ModGun.BorderSizePixel = 0
ModGun.Position = UDim2.new(0.0177514795, 0, 0.801498115, 0)
ModGun.Size = UDim2.new(0, 325, 0, 22)
ModGun.Font = Enum.Font.SourceSans
ModGun.FontSize = Enum.FontSize.Size14
ModGun.Text = "MOD YOUR GUN (Hold the item first)"
ModGun.TextColor3 = Color3.new(1, 1, 1)
ModGun.TextScaled = true
ModGun.TextStrokeTransparency = 0
ModGun.TextWrapped = true

ForceCgui.Name = "ForceCgui"
ForceCgui.Parent = Main
ForceCgui.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
ForceCgui.BorderSizePixel = 0
ForceCgui.Position = UDim2.new(1, 0, 0.215946838, 0)
ForceCgui.Size = UDim2.new(0, 155, 0, 198)

ComSeperateBar.Name = "ComSeperateBar"
ComSeperateBar.Parent = ForceCgui
ComSeperateBar.BackgroundColor3 = Color3.new(1, 1, 1)
ComSeperateBar.BackgroundTransparency = 0.5
ComSeperateBar.BorderSizePixel = 0
ComSeperateBar.Position = UDim2.new(0, 0, 0.0757575706, 0)
ComSeperateBar.Size = UDim2.new(0, 1, 0, 167)
ComSeperateBar.Font = Enum.Font.SourceSans
ComSeperateBar.FontSize = Enum.FontSize.Size14
ComSeperateBar.Text = ""
ComSeperateBar.TextColor3 = Color3.new(0, 0, 0)

InsertUser.Name = "InsertUser"
InsertUser.Parent = ForceCgui
InsertUser.BackgroundColor3 = Color3.new(1, 1, 1)
InsertUser.BackgroundTransparency = 1
InsertUser.BorderSizePixel = 0
InsertUser.Position = UDim2.new(0.0064516128, 0, 0.186868697, 0)
InsertUser.Size = UDim2.new(0, 154, 0, 50)
InsertUser.Font = Enum.Font.SourceSansLight
InsertUser.FontSize = Enum.FontSize.Size14
InsertUser.Text = "USERNAME"
InsertUser.TextColor3 = Color3.new(1, 1, 1)
InsertUser.TextScaled = true
InsertUser.TextWrapped = true

UserHolder.Name = "UserHolder"
UserHolder.Parent = ForceCgui
UserHolder.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
UserHolder.BorderSizePixel = 0
UserHolder.Position = UDim2.new(0.0516129024, 0, 0.451651365, 0)
UserHolder.Size = UDim2.new(0, 139, 0, 3)
UserHolder.Font = Enum.Font.SourceSans
UserHolder.FontSize = Enum.FontSize.Size14
UserHolder.Text = ""
UserHolder.TextColor3 = Color3.new(0, 0, 0)

CrimTitle.Name = "CrimTitle"
CrimTitle.Parent = ForceCgui
CrimTitle.BackgroundColor3 = Color3.new(1, 1, 1)
CrimTitle.BackgroundTransparency = 1
CrimTitle.BorderSizePixel = 0
CrimTitle.Position = UDim2.new(0.0064516128, 0, 0, 0)
CrimTitle.Size = UDim2.new(0, 154, 0, 31)
CrimTitle.Font = Enum.Font.SourceSansLight
CrimTitle.FontSize = Enum.FontSize.Size14
CrimTitle.Text = "CRIMINAL GUI"
CrimTitle.TextColor3 = Color3.new(1, 1, 1)
CrimTitle.TextScaled = true
CrimTitle.TextStrokeTransparency = 0
CrimTitle.TextWrapped = true

CrimTitleBar.Name = "CrimTitleBar"
CrimTitleBar.Parent = ForceCgui
CrimTitleBar.BackgroundColor3 = Color3.new(0, 0, 0)
CrimTitleBar.BackgroundTransparency = 0.5
CrimTitleBar.BorderSizePixel = 0
CrimTitleBar.Position = UDim2.new(0.0064516128, 0, 0.14952904, 0)
CrimTitleBar.Size = UDim2.new(0, 154, 0, 1)
CrimTitleBar.Font = Enum.Font.SourceSans
CrimTitleBar.FontSize = Enum.FontSize.Size14
CrimTitleBar.Text = ""
CrimTitleBar.TextColor3 = Color3.new(0, 0, 0)

TextButton.Parent = ForceCgui
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.BackgroundTransparency = 0.5
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0516129024, 0, 0.560606062, 0)
TextButton.Size = UDim2.new(0, 139, 0, 50)
TextButton.Font = Enum.Font.SourceSansLight
TextButton.FontSize = Enum.FontSize.Size14
TextButton.Text = "TURN INTO CRIMINAL (First, click KillAura)"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextScaled = true
TextButton.TextStrokeTransparency = 0
TextButton.TextWrapped = true

CrimHideButton.Name = "CrimHideButton"
CrimHideButton.Parent = ForceCgui
CrimHideButton.BackgroundColor3 = Color3.new(1, 0.34902, 0.34902)
CrimHideButton.BackgroundTransparency = 0.30000001192093
CrimHideButton.BorderSizePixel = 0
CrimHideButton.Position = UDim2.new(0.0322580636, 0, 0.89015615, 0)
CrimHideButton.Size = UDim2.new(0, 146, 0, 18)
CrimHideButton.Font = Enum.Font.SourceSansLight
CrimHideButton.FontSize = Enum.FontSize.Size14
CrimHideButton.Text = "HIDE"
CrimHideButton.TextColor3 = Color3.new(1, 1, 1)
CrimHideButton.TextScaled = true
CrimHideButton.TextStrokeTransparency = 0
CrimHideButton.TextWrapped = true

TPshow.Name = "TPshow"
TPshow.Parent = Main
TPshow.BackgroundColor3 = Color3.new(1, 1, 1)
TPshow.BackgroundTransparency = 0.5
TPshow.BorderSizePixel = 0
TPshow.Position = UDim2.new(0.0166848004, 0, 0.900033236, 0)
TPshow.Size = UDim2.new(0, 104, 0, 22)
TPshow.Font = Enum.Font.SourceSans
TPshow.FontSize = Enum.FontSize.Size14
TPshow.Text = "TELEPORT TO PLAYER"
TPshow.TextColor3 = Color3.new(1, 1, 1)
TPshow.TextScaled = true
TPshow.TextStrokeTransparency = 0
TPshow.TextWrapped = true

LocalCommands.Name = "LocalCommands"
LocalCommands.Parent = Main
LocalCommands.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
LocalCommands.BorderSizePixel = 0
LocalCommands.Position = UDim2.new(0, 0, 1, 0)
LocalCommands.Size = UDim2.new(0, 338, 0, 100)

LocalCMD_Title.Name = "LocalCMD_Title"
LocalCMD_Title.Parent = LocalCommands
LocalCMD_Title.BackgroundColor3 = Color3.new(0, 0, 0)
LocalCMD_Title.BackgroundTransparency = 0.30000001192093
LocalCMD_Title.BorderSizePixel = 0
LocalCMD_Title.Size = UDim2.new(0, 338, 0, 22)
LocalCMD_Title.Font = Enum.Font.SourceSans
LocalCMD_Title.FontSize = Enum.FontSize.Size14
LocalCMD_Title.Text = "COMMANDS FOR YOURSELF"
LocalCMD_Title.TextColor3 = Color3.new(1, 1, 1)
LocalCMD_Title.TextStrokeTransparency = 0

NexusTPbut.Name = "NexusTPbut"
NexusTPbut.Parent = LocalCommands
NexusTPbut.BackgroundColor3 = Color3.new(1, 1, 1)
NexusTPbut.BackgroundTransparency = 0.40000000596046
NexusTPbut.BorderSizePixel = 0
NexusTPbut.Position = UDim2.new(0.0177514795, 0, 0.319999993, 0)
NexusTPbut.Size = UDim2.new(0, 98, 0, 16)
NexusTPbut.Font = Enum.Font.SourceSans
NexusTPbut.FontSize = Enum.FontSize.Size14
NexusTPbut.Text = "TP TO NEXUS"
NexusTPbut.TextColor3 = Color3.new(1, 1, 1)
NexusTPbut.TextScaled = true
NexusTPbut.TextStrokeTransparency = 0
NexusTPbut.TextWrapped = true

CrimBaseTPbut.Name = "CrimBaseTPbut"
CrimBaseTPbut.Parent = LocalCommands
CrimBaseTPbut.BackgroundColor3 = Color3.new(1, 1, 1)
CrimBaseTPbut.BackgroundTransparency = 0.40000000596046
CrimBaseTPbut.BorderSizePixel = 0
CrimBaseTPbut.Position = UDim2.new(0.0177514795, 0, 0.550980508, 0)
CrimBaseTPbut.Size = UDim2.new(0, 98, 0, 16)
CrimBaseTPbut.Font = Enum.Font.SourceSans
CrimBaseTPbut.FontSize = Enum.FontSize.Size14
CrimBaseTPbut.Text = "TP TO CRIMINAL BASE"
CrimBaseTPbut.TextColor3 = Color3.new(1, 1, 1)
CrimBaseTPbut.TextScaled = true
CrimBaseTPbut.TextStrokeTransparency = 0
CrimBaseTPbut.TextWrapped = true

GuardAreaTPbut.Name = "GuardAreaTPbut"
GuardAreaTPbut.Parent = LocalCommands
GuardAreaTPbut.BackgroundColor3 = Color3.new(1, 1, 1)
GuardAreaTPbut.BackgroundTransparency = 0.40000000596046
GuardAreaTPbut.BorderSizePixel = 0
GuardAreaTPbut.Position = UDim2.new(0.0177514795, 0, 0.781960726, 0)
GuardAreaTPbut.Size = UDim2.new(0, 98, 0, 16)
GuardAreaTPbut.Font = Enum.Font.SourceSans
GuardAreaTPbut.FontSize = Enum.FontSize.Size14
GuardAreaTPbut.Text = "TP TO GUARD AREA"
GuardAreaTPbut.TextColor3 = Color3.new(1, 1, 1)
GuardAreaTPbut.TextScaled = true
GuardAreaTPbut.TextStrokeTransparency = 0
GuardAreaTPbut.TextWrapped = true

FLY.Name = "FLY"
FLY.Parent = LocalCommands
FLY.BackgroundColor3 = Color3.new(1, 1, 1)
FLY.BackgroundTransparency = 0.40000000596046
FLY.BorderSizePixel = 0
FLY.Position = UDim2.new(0.354683876, 0, 0.330000013, 0)
FLY.Size = UDim2.new(0, 98, 0, 16)
FLY.Font = Enum.Font.SourceSans
FLY.FontSize = Enum.FontSize.Size14
FLY.Text = "FLY 'E'"
FLY.TextColor3 = Color3.new(1, 1, 1)
FLY.TextScaled = true
FLY.TextStrokeTransparency = 0
FLY.TextWrapped = true

NWalk.Name = "NWalk"
NWalk.Parent = LocalCommands
NWalk.BackgroundColor3 = Color3.new(1, 1, 1)
NWalk.BackgroundTransparency = 0.40000000596046
NWalk.BorderSizePixel = 0
NWalk.Position = UDim2.new(0.354683876, 0, 0.560980558, 0)
NWalk.Size = UDim2.new(0, 98, 0, 16)
NWalk.Font = Enum.Font.SourceSans
NWalk.FontSize = Enum.FontSize.Size14
NWalk.Text = "NORMAL WALKSPEED"
NWalk.TextColor3 = Color3.new(1, 1, 1)
NWalk.TextScaled = true
NWalk.TextStrokeTransparency = 0
NWalk.TextWrapped = true

Njump.Name = "Njump"
Njump.Parent = LocalCommands
Njump.BackgroundColor3 = Color3.new(1, 1, 1)
Njump.BackgroundTransparency = 0.40000000596046
Njump.BorderSizePixel = 0
Njump.Position = UDim2.new(0.354683876, 0, 0.791960776, 0)
Njump.Size = UDim2.new(0, 98, 0, 16)
Njump.Font = Enum.Font.SourceSans
Njump.FontSize = Enum.FontSize.Size14
Njump.Text = "NORMAL JUMP HEIGHT"
Njump.TextColor3 = Color3.new(1, 1, 1)
Njump.TextScaled = true
Njump.TextStrokeTransparency = 0
Njump.TextWrapped = true

tfJump.Name = "tfJump"
tfJump.Parent = LocalCommands
tfJump.BackgroundColor3 = Color3.new(1, 1, 1)
tfJump.BackgroundTransparency = 0.40000000596046
tfJump.BorderSizePixel = 0
tfJump.Position = UDim2.new(0.691616237, 0, 0.781960726, 0)
tfJump.Size = UDim2.new(0, 98, 0, 16)
tfJump.Font = Enum.Font.SourceSans
tfJump.FontSize = Enum.FontSize.Size14
tfJump.Text = "+25 JUMP HEIGHT"
tfJump.TextColor3 = Color3.new(1, 1, 1)
tfJump.TextScaled = true
tfJump.TextStrokeTransparency = 0
tfJump.TextWrapped = true

Respawn.Name = "Respawn"
Respawn.Parent = LocalCommands
Respawn.BackgroundColor3 = Color3.new(1, 1, 1)
Respawn.BackgroundTransparency = 0.40000000596046
Respawn.BorderSizePixel = 0
Respawn.Position = UDim2.new(0.691616237, 0, 0.319999993, 0)
Respawn.Size = UDim2.new(0, 98, 0, 16)
Respawn.Font = Enum.Font.SourceSans
Respawn.FontSize = Enum.FontSize.Size14
Respawn.Text = "RESPAWN"
Respawn.TextColor3 = Color3.new(1, 1, 1)
Respawn.TextScaled = true
Respawn.TextStrokeTransparency = 0
Respawn.TextWrapped = true

tfWalk.Name = "tfWalk"
tfWalk.Parent = LocalCommands
tfWalk.BackgroundColor3 = Color3.new(1, 1, 1)
tfWalk.BackgroundTransparency = 0.40000000596046
tfWalk.BorderSizePixel = 0
tfWalk.Position = UDim2.new(0.691616237, 0, 0.550980508, 0)
tfWalk.Size = UDim2.new(0, 98, 0, 16)
tfWalk.Font = Enum.Font.SourceSans
tfWalk.FontSize = Enum.FontSize.Size14
tfWalk.Text = "+25 WALKSPEED"
tfWalk.TextColor3 = Color3.new(1, 1, 1)
tfWalk.TextScaled = true
tfWalk.TextStrokeTransparency = 0
tfWalk.TextWrapped = true

LocalCMD_BarTitle.Name = "LocalCMD_BarTitle"
LocalCMD_BarTitle.Parent = LocalCommands
LocalCMD_BarTitle.BackgroundColor3 = Color3.new(1, 1, 1)
LocalCMD_BarTitle.BackgroundTransparency = 0.30000001192093
LocalCMD_BarTitle.BorderSizePixel = 0
LocalCMD_BarTitle.Position = UDim2.new(0.0798816606, 0, 0.219999999, 0)
LocalCMD_BarTitle.Size = UDim2.new(0, 283, 0, 4)
LocalCMD_BarTitle.Font = Enum.Font.SourceSans
LocalCMD_BarTitle.FontSize = Enum.FontSize.Size14
LocalCMD_BarTitle.Text = ""
LocalCMD_BarTitle.TextColor3 = Color3.new(1, 1, 1)
LocalCMD_BarTitle.TextStrokeTransparency = 0

TheLocal.Name = "TheLocal"
TheLocal.Parent = Main
TheLocal.BackgroundColor3 = Color3.new(1, 1, 1)
TheLocal.BackgroundTransparency = 0.5
TheLocal.BorderSizePixel = 0
TheLocal.Position = UDim2.new(0.344114006, 0, 0.900033236, 0)
TheLocal.Size = UDim2.new(0, 104, 0, 22)
TheLocal.Font = Enum.Font.SourceSans
TheLocal.FontSize = Enum.FontSize.Size14
TheLocal.Text = "MORE LOCAL COMMANDS"
TheLocal.TextColor3 = Color3.new(1, 1, 1)
TheLocal.TextScaled = true
TheLocal.TextStrokeTransparency = 0
TheLocal.TextWrapped = true

CrimG.Name = "CrimG"
CrimG.Parent = Main
CrimG.BackgroundColor3 = Color3.new(1, 1, 1)
CrimG.BackgroundTransparency = 0.5
CrimG.BorderSizePixel = 0
CrimG.Position = UDim2.new(0.671616912, 0, 0.900033236, 0)
CrimG.Size = UDim2.new(0, 104, 0, 22)
CrimG.Font = Enum.Font.SourceSans
CrimG.FontSize = Enum.FontSize.Size14
CrimG.Text = "FORCE CRIMINAL PLAYER"
CrimG.TextColor3 = Color3.new(1, 1, 1)
CrimG.TextScaled = true
CrimG.TextStrokeTransparency = 0
CrimG.TextWrapped = true

tpgui.Name = "tpgui"
tpgui.Parent = Main
tpgui.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
tpgui.BorderSizePixel = 0
tpgui.Position = UDim2.new(-0.458579868, 0, 0.215946838, 0)
tpgui.Size = UDim2.new(0, 155, 0, 198)

TPtileBar.Name = "TPtileBar"
TPtileBar.Parent = tpgui
TPtileBar.BackgroundColor3 = Color3.new(0, 0, 0)
TPtileBar.BackgroundTransparency = 0.5
TPtileBar.BorderSizePixel = 0
TPtileBar.Position = UDim2.new(0.0064516128, 0, 0.14952904, 0)
TPtileBar.Size = UDim2.new(0, 154, 0, 1)
TPtileBar.Font = Enum.Font.SourceSans
TPtileBar.FontSize = Enum.FontSize.Size14
TPtileBar.Text = ""
TPtileBar.TextColor3 = Color3.new(0, 0, 0)

TPYEET.Name = "TPYEET"
TPYEET.Parent = tpgui
TPYEET.BackgroundColor3 = Color3.new(1, 1, 1)
TPYEET.BackgroundTransparency = 0.5
TPYEET.BorderSizePixel = 0
TPYEET.Position = UDim2.new(0.0580645166, 0, 0.560606062, 0)
TPYEET.Size = UDim2.new(0, 140, 0, 50)
TPYEET.Font = Enum.Font.SourceSansLight
TPYEET.FontSize = Enum.FontSize.Size14
TPYEET.Text = "TELEPORT"
TPYEET.TextColor3 = Color3.new(1, 1, 1)
TPYEET.TextScaled = true
TPYEET.TextStrokeTransparency = 0
TPYEET.TextWrapped = true

UserHolderTP.Name = "UserHolderTP"
UserHolderTP.Parent = tpgui
UserHolderTP.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
UserHolderTP.BorderSizePixel = 0
UserHolderTP.Position = UDim2.new(0.0516129024, 0, 0.451651365, 0)
UserHolderTP.Size = UDim2.new(0, 139, 0, 3)
UserHolderTP.Font = Enum.Font.SourceSans
UserHolderTP.FontSize = Enum.FontSize.Size14
UserHolderTP.Text = ""
UserHolderTP.TextColor3 = Color3.new(0, 0, 0)

InsertUserTP.Name = "InsertUserTP"
InsertUserTP.Parent = tpgui
InsertUserTP.BackgroundColor3 = Color3.new(1, 1, 1)
InsertUserTP.BackgroundTransparency = 1
InsertUserTP.BorderSizePixel = 0
InsertUserTP.Position = UDim2.new(0.0064516128, 0, 0.186868697, 0)
InsertUserTP.Size = UDim2.new(0, 154, 0, 50)
InsertUserTP.Font = Enum.Font.SourceSansLight
InsertUserTP.FontSize = Enum.FontSize.Size14
InsertUserTP.Text = "USERNAME"
InsertUserTP.TextColor3 = Color3.new(1, 1, 1)
InsertUserTP.TextScaled = true
InsertUserTP.TextWrapped = true

TpTitle.Name = "TpTitle"
TpTitle.Parent = tpgui
TpTitle.BackgroundColor3 = Color3.new(1, 1, 1)
TpTitle.BackgroundTransparency = 1
TpTitle.BorderSizePixel = 0
TpTitle.Position = UDim2.new(0.0064516128, 0, 0, 0)
TpTitle.Size = UDim2.new(0, 154, 0, 31)
TpTitle.Font = Enum.Font.SourceSansLight
TpTitle.FontSize = Enum.FontSize.Size14
TpTitle.Text = "TELEPORT GUI"
TpTitle.TextColor3 = Color3.new(1, 1, 1)
TpTitle.TextScaled = true
TpTitle.TextStrokeTransparency = 0
TpTitle.TextWrapped = true

RightSepBarTp.Name = "RightSepBarTp"
RightSepBarTp.Parent = tpgui
RightSepBarTp.BackgroundColor3 = Color3.new(1, 1, 1)
RightSepBarTp.BackgroundTransparency = 0.5
RightSepBarTp.BorderSizePixel = 0
RightSepBarTp.Position = UDim2.new(0.993548393, 0, 0.0757575706, 0)
RightSepBarTp.Size = UDim2.new(0, 1, 0, 167)
RightSepBarTp.Font = Enum.Font.SourceSans
RightSepBarTp.FontSize = Enum.FontSize.Size14
RightSepBarTp.Text = ""
RightSepBarTp.TextColor3 = Color3.new(0, 0, 0)

TpHideButton.Name = "TpHideButton"
TpHideButton.Parent = tpgui
TpHideButton.BackgroundColor3 = Color3.new(1, 0.34902, 0.34902)
TpHideButton.BackgroundTransparency = 0.30000001192093
TpHideButton.BorderSizePixel = 0
TpHideButton.Position = UDim2.new(0.0322580636, 0, 0.89015615, 0)
TpHideButton.Size = UDim2.new(0, 146, 0, 18)
TpHideButton.Font = Enum.Font.SourceSansLight
TpHideButton.FontSize = Enum.FontSize.Size14
TpHideButton.Text = "HIDE"
TpHideButton.TextColor3 = Color3.new(1, 1, 1)
TpHideButton.TextScaled = true
TpHideButton.TextStrokeTransparency = 0
TpHideButton.TextWrapped = true

AmokahsLogo.Name = "AmokahsLogo"
AmokahsLogo.Parent = Main
AmokahsLogo.BackgroundColor3 = Color3.new(1, 1, 1)
AmokahsLogo.BackgroundTransparency = 1
AmokahsLogo.BorderSizePixel = 0
AmokahsLogo.Position = UDim2.new(0.0177514795, 0, 0, 0)
AmokahsLogo.Size = UDim2.new(0, 34, 0, 35)
AmokahsLogo.Image = "rbxassetid://2715559615"

SuperPunch.Name = "SuperPunch"
SuperPunch.Parent = Main
SuperPunch.BackgroundColor3 = Color3.new(1, 1, 1)
SuperPunch.BackgroundTransparency = 0.5
SuperPunch.BorderSizePixel = 0
SuperPunch.Position = UDim2.new(0.511219442, 0, 0.58801502, 0)
SuperPunch.Size = UDim2.new(0, 158, 0, 22)
SuperPunch.Font = Enum.Font.SourceSans
SuperPunch.FontSize = Enum.FontSize.Size14
SuperPunch.Text = "SUPER PUNCH"
SuperPunch.TextColor3 = Color3.new(1, 1, 1)
SuperPunch.TextScaled = true
SuperPunch.TextStrokeTransparency = 0
SuperPunch.TextWrapped = true

KillAura.Name = "KillAura"
KillAura.Parent = Main
KillAura.BackgroundColor3 = Color3.new(1, 1, 1)
KillAura.BackgroundTransparency = 0.5
KillAura.BorderColor3 = Color3.new(1, 0, 0)
KillAura.BorderSizePixel = 0
KillAura.Position = UDim2.new(0.511219442, 0, 0.262595385, 0)
KillAura.Size = UDim2.new(0, 157, 0, 22)
KillAura.Font = Enum.Font.SourceSans
KillAura.FontSize = Enum.FontSize.Size14
KillAura.Text = "TOGGABLE KILL AURA 'P'"
KillAura.TextColor3 = Color3.new(1, 1, 1)
KillAura.TextScaled = true
KillAura.TextStrokeTransparency = 0
KillAura.TextWrapped = true

BeCriminal.Name = "BeCriminal"
BeCriminal.Parent = Main
BeCriminal.BackgroundColor3 = Color3.new(1, 1, 1)
BeCriminal.BackgroundTransparency = 0.5
BeCriminal.BorderSizePixel = 0
BeCriminal.Position = UDim2.new(0.514421463, 0, 0.696629226, 0)
BeCriminal.Size = UDim2.new(0, 74, 0, 22)
BeCriminal.Font = Enum.Font.SourceSans
BeCriminal.FontSize = Enum.FontSize.Size14
BeCriminal.Text = "CRIMINAL"
BeCriminal.TextColor3 = Color3.new(1, 1, 1)
BeCriminal.TextScaled = true
BeCriminal.TextStrokeTransparency = 0
BeCriminal.TextWrapped = true

BeGuard.Name = "BeGuard"
BeGuard.Parent = Main
BeGuard.BackgroundColor3 = Color3.new(1, 1, 1)
BeGuard.BackgroundTransparency = 0.5
BeGuard.BorderSizePixel = 0
BeGuard.Position = UDim2.new(0.0177514795, 0, 0.696629226, 0)
BeGuard.Size = UDim2.new(0, 77, 0, 22)
BeGuard.Font = Enum.Font.SourceSans
BeGuard.FontSize = Enum.FontSize.Size14
BeGuard.Text = "GUARD"
BeGuard.TextColor3 = Color3.new(1, 1, 1)
BeGuard.TextScaled = true
BeGuard.TextStrokeTransparency = 0
BeGuard.TextWrapped = true

BeInmate.Name = "BeInmate"
BeInmate.Parent = Main
BeInmate.BackgroundColor3 = Color3.new(1, 1, 1)
BeInmate.BackgroundTransparency = 0.5
BeInmate.BorderSizePixel = 0
BeInmate.Position = UDim2.new(0.268615901, 0, 0.696629226, 0)
BeInmate.Size = UDim2.new(0, 74, 0, 22)
BeInmate.Font = Enum.Font.SourceSans
BeInmate.FontSize = Enum.FontSize.Size14
BeInmate.Text = "INMATE"
BeInmate.TextColor3 = Color3.new(1, 1, 1)
BeInmate.TextScaled = true
BeInmate.TextStrokeTransparency = 0
BeInmate.TextWrapped = true

ArrestAll.Name = "ArrestAll"
ArrestAll.Parent = Main
ArrestAll.BackgroundColor3 = Color3.new(1, 1, 1)
ArrestAll.BackgroundTransparency = 0.5
ArrestAll.BorderSizePixel = 0
ArrestAll.Position = UDim2.new(0.511834323, 0, 0.370786548, 0)
ArrestAll.Size = UDim2.new(0, 159, 0, 22)
ArrestAll.Font = Enum.Font.SourceSans
ArrestAll.FontSize = Enum.FontSize.Size14
ArrestAll.Text = "ARREST ALL"
ArrestAll.TextColor3 = Color3.new(1, 1, 1)
ArrestAll.TextScaled = true
ArrestAll.TextStrokeTransparency = 0
ArrestAll.TextWrapped = true

InvGuns.Name = "InvGuns"
InvGuns.Parent = Main
InvGuns.BackgroundColor3 = Color3.new(1, 1, 1)
InvGuns.BackgroundTransparency = 0.5
InvGuns.BorderSizePixel = 0
InvGuns.Position = UDim2.new(0.508875728, 0, 0.16104874, 0)
InvGuns.Size = UDim2.new(0, 159, 0, 22)
InvGuns.Font = Enum.Font.SourceSans
InvGuns.FontSize = Enum.FontSize.Size14
InvGuns.Text = "TURN GUNS INVIS (Unequip first)"
InvGuns.TextColor3 = Color3.new(1, 1, 1)
InvGuns.TextScaled = true
InvGuns.TextStrokeTransparency = 0
InvGuns.TextWrapped = true

CrimPunch.Name = "CrimPunch"
CrimPunch.Parent = Main
CrimPunch.BackgroundColor3 = Color3.new(1, 1, 1)
CrimPunch.BackgroundTransparency = 0.5
CrimPunch.BorderSizePixel = 0
CrimPunch.Position = UDim2.new(0.508260846, 0, 0.481702745, 0)
CrimPunch.Size = UDim2.new(0, 158, 0, 22)
CrimPunch.Font = Enum.Font.SourceSans
CrimPunch.FontSize = Enum.FontSize.Size14
CrimPunch.Text = "REMOVE TOOLS"
CrimPunch.TextColor3 = Color3.new(1, 1, 1)
CrimPunch.TextScaled = true
CrimPunch.TextStrokeTransparency = 0
CrimPunch.TextWrapped = true

Trans.Name = "Trans"
Trans.Parent = Main
Trans.BackgroundColor3 = Color3.new(1, 0.458824, 0.439216)
Trans.BackgroundTransparency = 0.5
Trans.BorderSizePixel = 0
Trans.Position = UDim2.new(0.64462477, 0, 0.0199335553, 0)
Trans.Size = UDim2.new(0, 80, 0, 25)
Trans.Font = Enum.Font.SourceSans
Trans.FontSize = Enum.FontSize.Size14
Trans.Text = "TRANSPARENT"
Trans.TextColor3 = Color3.new(1, 1, 1)
Trans.TextScaled = true
Trans.TextStrokeTransparency = 0
Trans.TextWrapped = true

Open.Name = "Open"
Open.Parent = PrisonGui
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.BackgroundTransparency = 1
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.915841579, 0)
Open.Size = UDim2.new(0, 154, 0, 34)

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = Open
OpenGUI.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
OpenGUI.BackgroundTransparency = 0.5
OpenGUI.BorderSizePixel = 0
OpenGUI.Size = UDim2.new(0, 154, 0, 34)
OpenGUI.Font = Enum.Font.SourceSansLight
OpenGUI.FontSize = Enum.FontSize.Size14
OpenGUI.Text = "OPEN"
OpenGUI.TextColor3 = Color3.new(1, 1, 1)
OpenGUI.TextScaled = true
OpenGUI.TextStrokeTransparency = 0
OpenGUI.TextWrapped = true

Credit.Name = "Credit"
Credit.Parent = PrisonGui
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.BorderSizePixel = 0
Credit.Position = UDim2.new(0, 0, 0.589113653, 0)
Credit.Size = UDim2.new(0, 156, 0, 43)
Credit.Font = Enum.Font.SourceSansSemibold
Credit.FontSize = Enum.FontSize.Size14
Credit.Text = "Lame Prison Life GUI by Amokah"
Credit.TextColor3 = Color3.new(0, 0.764706, 0.776471)
Credit.TextScaled = true
Credit.TextStrokeTransparency = 0.80000001192093
Credit.TextTransparency = 0.5
Credit.TextWrapped = true
Credit.TextXAlignment = Enum.TextXAlignment.Left

Dino.Name = "Dino"
Dino.Parent = PrisonGui
Dino.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Dino.BackgroundTransparency = 0.80000001192093
Dino.BorderColor3 = Color3.new(1, 0, 0)
Dino.BorderSizePixel = 5
Dino.Position = UDim2.new(0, 0, 0.343575954, 0)
Dino.Size = UDim2.new(0, 1025, 0, 101)
Dino.Visible = false
Dino.Font = Enum.Font.SourceSans
Dino.FontSize = Enum.FontSize.Size14
Dino.Text = "This GUI is not the best with FREE exploits. It's mainly for paid exploits, such as Visenya, Synapse, etc. If you are using a free lua executor with this, then don't be surprised if something does not work correctly, please note, if anyone has uploaded this with their own link, that is not 'https://pastebin.com/JS5SYqaU' then you won't get the newest release of my crappy GUI, but anyway, good luck and have fun with this I guess."
Dino.TextColor3 = Color3.new(1, 1, 1)
Dino.TextScaled = true
Dino.TextStrokeTransparency = 0.80000001192093
Dino.TextTransparency = 0.80000001192093
Dino.TextWrapped = true

KA.Name = "KA"
KA.Parent = PrisonGui
KA.BackgroundColor3 = Color3.new(1, 1, 1)
KA.BackgroundTransparency = 1
KA.BorderSizePixel = 0
KA.Position = UDim2.new(0, 0, 0.640399575, 0)
KA.Size = UDim2.new(0, 162, 0, 62)

NameOfKa.Name = "NameOfKa"
NameOfKa.Parent = KA
NameOfKa.BackgroundColor3 = Color3.new(1, 1, 1)
NameOfKa.BackgroundTransparency = 1
NameOfKa.BorderSizePixel = 0
NameOfKa.Position = UDim2.new(0, 0, 0.419354856, 0)
NameOfKa.Size = UDim2.new(0, 157, 0, 30)
NameOfKa.Font = Enum.Font.SourceSans
NameOfKa.FontSize = Enum.FontSize.Size14
NameOfKa.Text = "KILL AURA "
NameOfKa.TextColor3 = Color3.new(0.72549, 0.329412, 0.337255)
NameOfKa.TextScaled = true
NameOfKa.TextStrokeColor3 = Color3.new(0.333333, 0, 0)
NameOfKa.TextStrokeTransparency = 0.5
NameOfKa.TextWrapped = true
NameOfKa.TextXAlignment = Enum.TextXAlignment.Left

TrueOrFalse.Name = "TrueOrFalse"
TrueOrFalse.Parent = KA
TrueOrFalse.BackgroundColor3 = Color3.new(1, 1, 1)
TrueOrFalse.BackgroundTransparency = 1
TrueOrFalse.BorderSizePixel = 0
TrueOrFalse.Position = UDim2.new(0, 0, 0.913856268, 0)
TrueOrFalse.Size = UDim2.new(0, 148, 0, 33)
TrueOrFalse.Font = Enum.Font.SourceSans
TrueOrFalse.FontSize = Enum.FontSize.Size14
TrueOrFalse.Text = "nil"
TrueOrFalse.TextColor3 = Color3.new(1, 0.278431, 0.278431)
TrueOrFalse.TextScaled = true
TrueOrFalse.TextStrokeTransparency = 0.5
TrueOrFalse.TextWrapped = true
TrueOrFalse.TextXAlignment = Enum.TextXAlignment.Left

TeamGUIOC.Name = "TeamGUIOC"
TeamGUIOC.Parent = PrisonGui
TeamGUIOC.BackgroundColor3 = Color3.new(1, 1, 1)
TeamGUIOC.BackgroundTransparency = 1
TeamGUIOC.BorderSizePixel = 0
TeamGUIOC.Position = UDim2.new(0.00132625992, 0, 0.759765625, 0)
TeamGUIOC.Size = UDim2.new(0, 156, 0, 33)

TeamOPorCL.Name = "TeamOPorCL"
TeamOPorCL.Parent = TeamGUIOC
TeamOPorCL.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
TeamOPorCL.BackgroundTransparency = 0.5
TeamOPorCL.BorderColor3 = Color3.new(0.568627, 0.176471, 0.568627)
TeamOPorCL.BorderSizePixel = 0
TeamOPorCL.Position = UDim2.new(-5.00802327972, 5, 5.12121212, 5)
TeamOPorCL.Size = UDim2.new(0, 156, 0, 32)
TeamOPorCL.Font = Enum.Font.SourceSansLight
TeamOPorCL.FontSize = Enum.FontSize.Size14
TeamOPorCL.Text = "Open/Close STAY ON TEAM GUI"
TeamOPorCL.TextColor3 = Color3.new(1, 1, 1)
TeamOPorCL.TextScaled = true
TeamOPorCL.TextStrokeTransparency = 0
TeamOPorCL.TextWrapped = true

TeamMain.Name = "TeamMain"
TeamMain.Parent = PrisonGui
TeamMain.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
TeamMain.BorderSizePixel = 0
TeamMain.Position = UDim2.new(0, 0, 0.291015625, 0)
TeamMain.Size = UDim2.new(0, 214, 0, 152)
TeamMain.Visible = false

TextLabel.Parent = TeamMain
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.5
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.104430377, 0, 0.203947365, 0)
TextLabel.Size = UDim2.new(0, 169, 0, 3)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.new(0, 0, 0)

TextLabel_2.Parent = TeamMain
TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 214, 0, 31)
TextLabel_2.Font = Enum.Font.SourceSansLight
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "Stay On Team GUI"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextStrokeTransparency = 0
TextLabel_2.TextWrapped = true

SOG.Name = "SOG"
SOG.Parent = TeamMain
SOG.BackgroundColor3 = Color3.new(0.52549, 0.756863, 1)
SOG.BackgroundTransparency = 0.5
SOG.BorderSizePixel = 0
SOG.Position = UDim2.new(0, 0, 0.223684207, 0)
SOG.Size = UDim2.new(0, 214, 0, 25)
SOG.Font = Enum.Font.SourceSansLight
SOG.FontSize = Enum.FontSize.Size14
SOG.Text = "Stay on guards team!"
SOG.TextColor3 = Color3.new(1, 1, 1)
SOG.TextScaled = true
SOG.TextStrokeTransparency = 0
SOG.TextWrapped = true

SOC.Name = "SOC"
SOC.Parent = TeamMain
SOC.BackgroundColor3 = Color3.new(1, 0.235294, 0.235294)
SOC.BackgroundTransparency = 0.5
SOC.BorderSizePixel = 0
SOC.Position = UDim2.new(0, 0, 0.394416004, 0)
SOC.Size = UDim2.new(0, 214, 0, 25)
SOC.Font = Enum.Font.SourceSansLight
SOC.FontSize = Enum.FontSize.Size14
SOC.Text = "Stay on criminals team!"
SOC.TextColor3 = Color3.new(1, 1, 1)
SOC.TextScaled = true
SOC.TextStrokeTransparency = 0
SOC.TextWrapped = true

SOI.Name = "SOI"
SOI.Parent = TeamMain
SOI.BackgroundColor3 = Color3.new(1, 0.831373, 0.494118)
SOI.BackgroundTransparency = 0.5
SOI.BorderSizePixel = 0
SOI.Position = UDim2.new(0, 0, 0.559050083, 0)
SOI.Size = UDim2.new(0, 214, 0, 25)
SOI.Font = Enum.Font.SourceSansLight
SOI.FontSize = Enum.FontSize.Size14
SOI.Text = "Stay on inmates team!"
SOI.TextColor3 = Color3.new(1, 1, 1)
SOI.TextScaled = true
SOI.TextStrokeTransparency = 0
SOI.TextWrapped = true

Disable.Name = "Disable"
Disable.Parent = TeamMain
Disable.BackgroundColor3 = Color3.new(0.615686, 0.407843, 0.411765)
Disable.BackgroundTransparency = 0.5
Disable.BorderSizePixel = 0
Disable.Position = UDim2.new(0, 0, 0.801872253, 0)
Disable.Size = UDim2.new(0, 214, 0, 29)
Disable.Font = Enum.Font.SourceSansSemibold
Disable.FontSize = Enum.FontSize.Size14
Disable.Text = "Disable"
Disable.TextColor3 = Color3.new(1, 1, 1)
Disable.TextScaled = true
Disable.TextStrokeTransparency = 0
Disable.TextWrapped = true


Main.Position = UDim2.new(0.345, 0,2.204, 0)
TeamOPorCL.Visible = false
TeamMain.Visible = false
TeamGUIOC.Visible = false
LocalCommands.Visible = false
ForceCgui.Visible = false
tpgui.Visible = false
KA.Visible = true
TrueOrFalse.Text = "nil"
TrueOrFalse.TextColor3 = Color3.new(255, 0, 191)

wait(0.5)
Dino.Visible = true
Dino.TextTransparency = 0.8
Dino.TextStrokeTransparency = 0.8
wait(0.1)
Dino.TextTransparency = 0.7
Dino.TextStrokeTransparency = 0.7
wait(0.1)
Dino.TextTransparency = 0.6
Dino.TextStrokeTransparency = 0.6
wait(0.1)
Dino.TextTransparency = 0.5
Dino.TextStrokeTransparency = 0.5
wait(0.1)
Dino.TextTransparency = 0.4
Dino.TextStrokeTransparency = 0.4
wait(0.1)
Dino.TextTransparency = 0.3
Dino.TextStrokeTransparency = 0.3
wait(0.1)
Dino.TextTransparency = 0.2
Dino.TextStrokeTransparency = 0.2
wait(0.1)
Dino.TextTransparency = 0.1
Dino.TextStrokeTransparency = 0.1

wait(5)

Dino.TextTransparency = 0.1
Dino.TextStrokeTransparency = 0.1
wait(0.1)
Dino.TextTransparency = 0.2
Dino.TextStrokeTransparency = 0.2
wait(0.1)
Dino.TextTransparency = 0.3
Dino.TextStrokeTransparency = 0.3
wait(0.1)
Dino.TextTransparency = 0.4
Dino.TextStrokeTransparency = 0.4
wait(0.1)
Dino.TextTransparency = 0.5
Dino.TextStrokeTransparency = 0.5
wait(0.1)
Dino.TextTransparency = 0.6
Dino.TextStrokeTransparency = 0.6
wait(0.1)
Dino.TextTransparency = 0.7
Dino.TextStrokeTransparency = 0.7
wait(0.1)
Dino.TextTransparency = 0.8
Dino.TextStrokeTransparency = 0.8
wait(0.1)
Dino.Visible = false

OpenGUI.MouseButton1Down:connect(function()
	Main.Visible = true
	
	Main:TweenPosition(UDim2.new(0.345, 0,0.204, 0), 'Out', 'Bounce', 3)
end)

Close.MouseButton1Down:connect(function()
	Main:TweenPosition(UDim2.new(0.345, 0,2.204, 0), 'Out', 'Bounce', 1)
	wait(1)
	Main.Visible = false
end)

CrimG.MouseButton1Down:connect(function()
	ForceCgui.Visible = true
end)

CrimHideButton.MouseButton1Down:connect(function()
	ForceCgui.Visible = false
end)

TheLocal.MouseButton1Down:connect(function()
	if LocalCommands.Visible == false then
		LocalCommands.Visible = true
	elseif LocalCommands.Visible == true then
		LocalCommands.Visible = false
	end
end)

NWalk.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

NexusTPbut.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2377)
end)

CrimBaseTPbut.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943, 96, 2055)
end)

tfWalk.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 41
end)

tfJump.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 75
end)

Njump.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

GuardAreaTPbut.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(802,99,2270)
end)

Respawn.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -496, 0)
end)

ObGuns.MouseButton1Down:connect(function()
	for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do

OwO = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
end
end)

TaseBypass.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	game.Players.LocalPlayer.CharacterAdded:connect(function()
	game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	end)
end)

RemoveDoors.MouseButton1Down:connect(function()
				Workspace.Prison_Cellblock.doors:Destroy()
			
			for i,v in pairs(workspace:GetChildren())do
					if v.Name == "Doors" then
				v:Destroy()
			end
	end
end)

Btools.MouseButton1Down:connect(function()
	local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool4 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool5 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	tool1.BinType = "Clone"
	tool2.BinType = "GameTool"
	tool3.BinType = "Hammer"
	tool4.BinType = "Script"
	tool5.BinType = "Grab"
end)

ModGun.MouseButton1Down:connect(function()
local m = require(game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
                m.Damage = 100
                m.MaxAmmo = math.huge
                m.CurrentAmmo = math.huge
                m.AutoFire = true
                m.FireRate = 0
end)

KillAll.MouseButton1Down:connect(function()
	
workspace.Remote.TeamEvent:FireServer("Medium stone grey")

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)	

wait(0.5)
function kill(a)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = a.Character.Head
},
   [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = a.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = a.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = a.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = a.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end

for i,v in pairs(game.Players:GetChildren())do
if v.Name ~= game.Players.LocalPlayer.Name then
kill(v)
end
end
wait(1)
workspace.Remote.TeamEvent:FireServer("Bright orange")

end)

TPshow.MouseButton1Down:connect(function()
	tpgui.Visible = true
end)

TpHideButton.MouseButton1Down:connect(function()
	tpgui.Visible = false
end)

TPYEET.MouseButton1Down:connect(function()
	Target = InsertUserTP.Text
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
end)

FLY.MouseButton1Down:connect(function()
	repeat wait()
   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end)

SuperPunch.MouseButton1Down:connect(function()
	mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']
mouse = game.Players.LocalPlayer:GetMouse()
punching = false
cooldown = false

function punch()
cooldown = true
local part = Instance.new("Part", game.Players.LocalPlayer.Character)
part.Transparency = 1
part.Size = Vector3.new(5, 2, 3)
part.CanCollide = false
local w1 = Instance.new("Weld", part)
w1.Part0 = game.Players.LocalPlayer.Character.Torso
w1.Part1 = part
w1.C1 = CFrame.new(0,0,2)
part.Touched:connect(function(hit)
if game.Players:FindFirstChild(hit.Parent.Name) then
local plr = game.Players:FindFirstChild(hit.Parent.Name)
if plr.Name ~= game.Players.LocalPlayer.Name then
part:Destroy()

for i = 1,100 do
meleeRemote:FireServer(plr)
end
end
end
end)

wait(1)
cooldown = false
part:Destroy()
end


mouse.KeyDown:connect(function(key)
if cooldown == false then
if key:lower() == "f" then

punch()

end
end
end)
end)

BeInmate.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

BeGuard.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

BeCriminal.MouseButton1Down:connect(function()
	LCS = game.Workspace["Criminals Spawn"].SpawnLocation

LCS.CanCollide = false
LCS.Size = Vector3.new(51.05, 24.12, 54.76)
LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
LCS.Transparency = 1
wait(0.5)
LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LCS.Size = Vector3.new(6, 0.2, 6)
LCS.Transparency = 0
end)

InvGuns.MouseButton1Down:connect(function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants())do
	if v.ClassName == "Model" then
		v:Destroy()
	end
end

game.Players.LocalPlayer.Backpack.M9.Part:Destroy()

game.Players.LocalPlayer.Backpack.M9.Part:Destroy()
end)

CrimPunch.MouseButton1Down:connect(function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
		if v.ClassName == "Tool" then
			v:Destroy()
		end
	end
end)

BeNeutral.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)

TeamOPorCL.MouseButton1Down:connect(function()
	if TeamMain.Visible == true then
		
		TeamMain:TweenPosition(UDim2.new(-0.00802327972, 0, 1.12121212, 0), 'Out', 'Bounce', 2)
		wait(2)
		TeamMain.Visible = false
	elseif
		TeamMain.Visible == false then
			TeamMain:TweenPosition(UDim.new(-0.00802327972, 0, 5.12121212, 0), 'Out', 'Bounce', 2)
		TeamMain.Visible = true
	end
end)

local yee = false

SOC.MouseButton1Down:connect(function()
yee = true
wait(0.2)
if yee == true then
	LCS = game.Workspace["Criminals Spawn"].SpawnLocation

LCS.CanCollide = false
LCS.Size = Vector3.new(51.05, 24.12, 54.76)
LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
LCS.Transparency = 1
wait(0.5)
while yee do
	wait(0.003)
	LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
		LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LCS.Size = Vector3.new(6, 0.2, 6)
LCS.Transparency = 1
wait(2)
LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LCS.Size = Vector3.new(6, 0.2, 6)
LCS.Transparency = 1	
end
end)

local GuTe = false

SOG.MouseButton1Down:connect(function()
	if GuTe == false then
		GuTe = true
		if GuTe == true then
			while GuTe do
				wait(0.2)
				Workspace.Remote.TeamEvent:FireServer("Bright blue")
			end
		end
	end
end)

local InTe = false

SOI.MouseButton1Down:connect(function()
	if InTe == false then
		InTe = true
		if InTe == true then
			wait(0.2)
			workspace.Remote.TeamEvent:FireServer("Bright orange")
		end
	end
end)

Disable.MouseButton1Down:connect(function()
	InTe = false
	
	GuTe = false
	
		yee = false
		wait(0.2)
		if yee == false then
		LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LCS.Size = Vector3.new(6, 0.2, 6)
LCS.Transparency = 1
wait(2)
LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LCS.Size = Vector3.new(6, 0.2, 6)
LCS.Transparency = 1	
end
end)

Trans.MouseButton1Down:connect(function()
	PLMain = Main
	PLCgui = ForceCgui
	PLLc = LocalCommands
	PLtp = tpgui
	TMain = TeamMain
	
	TLble = TitleBar
	LCTitleBar = LocalCMD_BarTitle
	LCTitle = LocalCMD_Title
	
	if LCTitle.BackgroundTransparency == 0 then
		LCTitle.BackgroundTransparency = 0.5
	elseif
		LCTitle.BackgroundTransparency == 0.5 then
		LCTitle.BackgroundTransparency = 0
	end
	
	if LCTitleBar.BackgroundTransparency == 0 then
		LCTitleBar.BackgroundTransparency = 0.5
	elseif
		LCTitleBar.BackgroundTransparency == 0.5 then
		LCTitleBar.BackgroundTransparency = 0
	end
	
	if TLble.BackgroundTransparency == 0.8 then
		TLble.BackgroundTransparency = 0.5
	elseif
		TLble.BackgroundTransparency == 0.5 then
		TLble.BackgroundTransparency = 0.8
	end
	
	if PLMain.BackgroundTransparency == 0 then
		PLMain.BackgroundTransparency = 0.5
	elseif
		PLMain.BackgroundTransparency == 0.5 then
		PLMain.BackgroundTransparency = 0
	end
	
	if PLCgui.BackgroundTransparency == 0 then
		PLCgui.BackgroundTransparency = 0.5
	elseif
		PLCgui.BackgroundTransparency == 0.5 then
		PLCgui.BackgroundTransparency = 0
	end
	
	if PLLc.BackgroundTransparency == 0 then
		PLLc.BackgroundTransparency = 0.5
	elseif
		PLLc.BackgroundTransparency == 0.5 then
		PLLc.BackgroundTransparency = 0
	end
	
	if PLtp.BackgroundTransparency == 0 then
		PLtp.BackgroundTransparency = 0.5
	elseif
		PLtp.BackgroundTransparency == 0.5 then
		PLtp.BackgroundTransparency = 0
	end

	if TMain.BackgroundTransparency == 0 then
		TMain.BackgroundTransparency = 0.5
	elseif
		TMain.BackgroundTransparency == 0.5 then
		TMain.BackgroundTransparency = 0
	end
end)

ArrestAll.MouseButton1Down:connect(function()
	wait(0.1)
	Player = game.Players.LocalPlayer
	Pcf = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
	if v.Name ~= Player.Name then
	local i = 10
    repeat
    wait()
    i = i-1
    game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
    until i == 0
end
end
end)

KillAura.MouseButton1Down:connect(function()
	TrueOrFalse.Text = "FALSE"
	TrueOrFalse.TextColor3 = Color3.new(0.768628, 0.156863, 0.109804)

	mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']

_G.killAura = false

contextactionservice = game.ContextActionService

function toggleKillAura(actionName, inputState, inputObject)
if inputState == Enum.UserInputState.Begin then
if _G.killAura == true then
_G.killAura = false
	TrueOrFalse.Text = "FALSE"
	TrueOrFalse.TextColor3 = Color3.new(0.768628, 0.156863, 0.109804)
else
_G.killAura = true
	TrueOrFalse.Text = "TRUE"
	TrueOrFalse.TextColor3 = Color3.new(0.6, 0.992157, 0.541176)
end
end
end



contextactionservice:BindAction('ToggleKillAura', toggleKillAura, false, Enum.KeyCode.P)

while wait() do
if _G.killAura == true then
for _, plr in pairs (game:GetService('Players'):GetChildren()) do
if plr.Name ~= game.Players.LocalPlayer.Name then
meleeRemote:FireServer(plr)

end
end
end
end
end)

local istptoplr = false
local metoplr = false

TextButton.MouseButton1Down:connect(function()
	Target = InsertUser.Text
	
	_G.killAura = true
	wait(0.2)
	
	Apart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Apart.Transparency = 1
	Apart.Anchored = true
	Apart.CanCollide = false
	wait(0.3)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
	
	istptoplr = true
	wait(0.004)
	
	if game.Players.LocalPlayer.Team.TeamColor == "Bright orange" then
		wait(6)
		workspace.Remote.TeamEvent:FireServer("Bright orange")
	elseif
		game.Players.LocalPlayer.Team.TeamColor == "Bright blue" then
			workspace.Remote.TeamEvent:FireServer("Bright blue")
	end
	
		 if istptoplr == true then
		    while istptoplr do
			wait()
			
			game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
			
			LCS = game.Workspace["Criminals Spawn"].SpawnLocation

			LCS.CanCollide = false
			LCS.Size = Vector3.new(51.05, 24.12, 54.76)
			LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			LCS.Transparency = 1
		
		wait(2)
		
		      istptoplr = false
		_G.killAura = false
		
		wait(0.04)
		
		        if istptoplr == false then
		           LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		           LCS.Size = Vector3.new(6, 0.2, 6)
		           LCS.Transparency = 0
		           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Apart.CFrame
		           wait()
		           istptoplr = false
		    end
		end
	end
end)

TeamOPorCL:Destroy()


function dragify(Main)
dragToggle = nil
dragSpeed = .20 -- You can edit this.
dragInput = nil
dragStart = nil
dragPos = nil

function updateInput(input)
Delta = input.Position - dragStart
Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
game:GetService("TweenService"):Create(Main, TweenInfo.new(.25), {Position = Position}):Play()
end

Main.InputBegan:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
dragToggle = true
dragStart = input.Position
startPos = Main.Position
input.Changed:Connect(function()
if (input.UserInputState == Enum.UserInputState.End) then
dragToggle = false
end
end)
end
end)

Main.InputChanged:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
dragInput = input
end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
if (input == dragInput and dragToggle) then
updateInput(input)
end
end)
end

dragify(Main)
end)

CBROKillAllBut.Name = "CBROKillAllBut"
CBROKillAllBut.Parent = FrixonHubScripts
CBROKillAllBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CBROKillAllBut.BorderSizePixel = 0
CBROKillAllBut.Position = UDim2.new(0.0295082182, 0, 0.386416852, 0)
CBROKillAllBut.Size = UDim2.new(0, 122, 0, 49)
CBROKillAllBut.Font = Enum.Font.SourceSans
CBROKillAllBut.Text = "Counter Blox Kill All"
CBROKillAllBut.TextColor3 = Color3.fromRGB(255, 255, 255)
CBROKillAllBut.TextSize = 14.000
CBROKillAllBut.MouseButton1Down:connect(function()
	-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local OpenGUI = Instance.new("Frame")
local Open = Instance.new("TextButton")
local MainGUI = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local KillAll = Instance.new("TextButton")
local Close = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = ScreenGui
OpenGUI.BackgroundColor3 = Color3.new(1, 1, 1)
OpenGUI.Position = UDim2.new(0, 0, 0.492024541, 0)
OpenGUI.Size = UDim2.new(0, 100, 0, 28)

Open.Name = "Open"
Open.Parent = OpenGUI
Open.BackgroundColor3 = Color3.new(0.333333, 1, 1)
Open.Size = UDim2.new(0, 100, 0, 28)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextSize = 14
Open.MouseButton1Down:connect(function()
MainGUI.Visible = true
end)

MainGUI.Name = "MainGUI"
MainGUI.Parent = ScreenGui
MainGUI.BackgroundColor3 = Color3.new(0, 1, 1)
MainGUI.Position = UDim2.new(0.100769229, 0, 0.163992867, 0)
MainGUI.Size = UDim2.new(0, 112, 0, 85)
MainGUI.Draggable = true

TextLabel.Parent = MainGUI
TextLabel.BackgroundColor3 = Color3.new(0.666667, 1, 1)
TextLabel.Position = UDim2.new(0, 0, 0.0941176564, 0)
TextLabel.Size = UDim2.new(0, 112, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "CBRO Kill all"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 14

KillAll.Name = "Kill All"
KillAll.Parent = MainGUI
KillAll.BackgroundColor3 = Color3.new(0.666667, 1, 1)
KillAll.Position = UDim2.new(0, 0, 0.505882382, 0)
KillAll.Size = UDim2.new(0, 112, 0, 35)
KillAll.Font = Enum.Font.SourceSans
KillAll.Text = "Kill All"
KillAll.TextColor3 = Color3.new(0, 0, 0)
KillAll.TextSize = 14
KillAll.MouseButton1Down:connect(function()
local Remote = game.ReplicatedStorage.Events['HitPart']

for _,v in pairs(game:GetService"Players":GetChildren()) do
if v.Team ~= game.Players.LocalPlayer.Team then
if v.Character and v.Character.Head then
local Arguments = {
[1] = workspace[v.Name].Head,
[2] = workspace[v.Name].Head.Position,
[3] = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value,
[4] = math.rad(1,100000),
[5] = workspace[game.Players.LocalPlayer.Name].Gun,
[8] = 8, --damage multiplier
[9] = false,
[10] = false,
[11] = Vector3.new(),
[12] = math.rad(1,100000),
[13] = Vector3.new()
}

Remote:FireServer(unpack(Arguments))
end
end
end
end)

Close.Name = "Close"
Close.Parent = MainGUI
Close.BackgroundColor3 = Color3.new(0.333333, 1, 1)
Close.Position = UDim2.new(-1.16964281, 0, 1.78145063, 0)
Close.Size = UDim2.new(0, 100, 0, 23)
Close.Font = Enum.Font.SourceSans
Close.Text = "Close"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextSize = 14
Close.MouseButton1Down:connect(function()
MainGUI.Visible = false
end)
-- Scripts:
end)

KATGUIBut.Name = "KATGUIBut"
KATGUIBut.Parent = FrixonHubScripts
KATGUIBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
KATGUIBut.BorderSizePixel = 0
KATGUIBut.Position = UDim2.new(0.0295082182, 0, 0.562060893, 0)
KATGUIBut.Size = UDim2.new(0, 122, 0, 49)
KATGUIBut.Font = Enum.Font.SourceSans
KATGUIBut.Text = "Knife Ability Test GUI"
KATGUIBut.TextColor3 = Color3.fromRGB(255, 255, 255)
KATGUIBut.TextSize = 14.000
KATGUIBut.MouseButton1Down:connect(function() 
	--[[
Gogo1000 was here!

Powered by IronBrew!
]]

local H=string.byte;local r=string.char;local n=string.sub;local K=table.concat;local U=math.ldexp;local O=getfenv or function()return _ENV end;local M=setmetatable;local L=select;local a=unpack;local I=tonumber;local function J(f)local l,e,c="","",{}local a=256;local d={}for o=0,a-1 do d[o]=r(o)end;local o=1;local function H()local l=I(n(f,o,o),36)o=o+1;local e=I(n(f,o,o+l-1),36)o=o+l;return e end;l=r(H())c[1]=l;while o<#f do local o=H()if d[o]then e=d[o]else e=l..n(l,1,1)end;d[a]=l..n(e,1,1)c[#c+1],l,a=e,e,a+1 end;return table.concat(c)end;local f=J('1621A27521821827521A23522X27727921T21S21927927I21A27D27522122121821627922122721V22321821027922X22322I23H22322K22G21Z22527V21527923I21U22722F28322L21821127922Q21T22522721U28B28D28321821327923D21T22K21X22L22M2272872181Z27923122J22K22K22321S22I23127T28322721821227Y28022R21T22J22L27V1X27R28022K22722H27U22I22729X22421U28827923523521Z21S22222322E28H27929O22I29922722227F21U22F2181W27921V22721X22323522H22K21Z22I2232272A027V28I27521S22322H22522521U21T22L29727V27X2752B82AG22L2AE2A627O28927522U22I22I22M27Z22I2181F27921Y2BO22M22L1K11112902BH2232242A61022521T21V1129T22H1123H22R21S22521Y23122K27O1Y2952AF2AW23D2A62AH22H27P27922R2272A621821727922P22I21Y28R29I2752822BO2BJ28G2BL21A22T22322F22Y21T22H21S2182DE2C921S2B32252BS21427923E21T27N2A12AL27Y22J21S1E23H21Z2A129B1E23321Z21V2CW27522028C2BK27922I2DX2212A11V21827H27522Z23H23I2DN2DV29T28722K28G2DU2752EA21V23021T2BS2DE2822DS21Z27F21821M2792DG22F1K1E22U21T21U2221E22Q22322022I2E421Y21Z2FQ21821R27922W21Z2EY2FR23I28F27F1E22P21S2AJ21829Q2D921V21T2F52D622K2E92EB2242F52D127922328Z22M22M29H2792CZ21V2GK2BO2BS2D227528Z29U2DM2EP21A23E22K22525227926H21226625T2672D826G21Q1U21A2HH2752HB2HD26G2HG1E2HJ26G1E2HM21I2HO21I27526L2HW25T26G2HY21A2692I12I327526D162HO27421A26C21I2262HK2I42711M2HO1M2752IF2HU22J2I42IF24U21A23C2I426X2IB2I22ID26W1E2IH2HT27526P22U2HO22U27526W21I2HU2I821A2J223Y2HK2HU21A27021I24E2II27527021Q2JE21Q27526R25Y1121A23Q25Y25T2292JF2432I42J521A2432JK26T2262HD22U2IH21A25L2IZ26G2ID26S2JS2HK2JU21A25K1M2722HK2IN21A25P22M2HO22M27525R2ID2KJ21A24U26I1E2HD2382HU24U2KW2HD2482KZ21A25C2KU25E2KU25G27922N27925O21I2JU2622I426I2I12382HY2LB22E2LD22E2752LH2752LJ27525G2D822N2D82LP2LR2I425P24U2LD2IU21A25R2122JU25Q29I2L521A2L82752LB2HC25T23B2D825C2JA21A25E2MY25J2122322JZ2MN2L32K82L22HJ2K82NA26G2N42K82NE2K72K92M22KM22J2KO26S21Y2JI24G21Y27525D2KX25T2LE27525F2MK21A2MM2L426I2792382MR2L62L82LA2NT2LD2LF25G2LI2KU2602M82MW2LQ21A2LS2752LU2L82LX25D2LZ2NV2M121A2OD2M42OF2LM27925C2OJ2OL21A25D24M2LD24M27525H2IZ25X2ID25G23A1E21B26G23A2752652522HO2H921A25S2HG2D825G2JK2K725C21A2JE2OZ2122JE2PR23I2322PG23I2PJ23Q2HO23Q2M62JD2JP21A2602Q221B2512Q521A25T24E2HD24S2JO2QD2QB2JF2642QF26G2QI25X2462HO2462752642QQ2I425T2KI2ID25S2GQ2HK2LF2R72IU26G2LF25W22M2JO2RD27525W2KM2HL21A24O22E24U21B25U2OT24O24U25A2QG2MH24H2I123B2I424O2OJ2RZ27524O23A23Y2PG2PI21A24H26U2HO26U27524K21A2JU26G27924K25Q2722PG25Q2752572OJ23Q2LX2PH2752432SB24O162HU2612ID24S2262S926G2KF24L2662HO2662752542SJ2HK2792542SO2SQ27525B1E2HU23Q2LA2T92SY2KF2HP2SY2D824S2T221A2T427524G2T72PG2KF25525Y2HO25Y2752582TH2SL2UC2TL26G2SR21A24Z162JU23Q27424U2TT2K82KF24G2U02U221A24K2U52UR25921A2672I221A21B21A24W2UE27924W2UH2UJ2531U2TQ2HJ2UQ2KF2432TV2792432SM2U02392ID25422621Q2182UR24X21Q2V32HH2V62542OJ2JF2VS2VU2VW21I2VZ21I2W12W32I42542NO2PG2NR21A24X1E2VZ2PF21A2502V92752502TL25J2UJ23V1M2TQ2IN2UQ2WH2432WH2RM2432KO2542U022J2ID25B2322UN2N42UQ2D82432D8259162V3226162V625B22U2TQ2JA2UQ2VM2792X32KO2591U2V323S1U2V62591M2VZ1M2V624X2XY2I22Y121A25821Q2SK2XW2Y42I22Y62WI2XJ2J02V62YD2YF27525923A2HD23B2SB2592322V323R2Q321A2Y32Y52Y72YX2I22Z02YO2KN2752TW2HK2D821A2CO27521N2792ED21A2AO2D52ZJ21Y22J22127V2GZ21A2902G028G27Q27M29E27W29J2812832852922DE28P28E2EY31002752BR310728F28S29521Y2272EW2AW22K2E02752FZ2A72FZ2G12312FT2FL2GS2BM22J2AO21S21T21Z2222182F021A22U2AX21U2D52H427J2182KO3115310X227310Z311123G2GE22I23I310I2BS2ZX31152AX31122FD27528V22K2FL2DW23C21Z2B422M28W311L311029B310V21A23I2B92AV2FA2DM2DE23C2232DS28W1S2EO2792B32CV2V627523A218312O21A23B310F2752AO22121S2AV22J2A822X27926D2MT23O2D82IP2QC26X2I72IJ2L72I22JK270162Q52N726T1U2HO2NA2JM2JE2I4313H2KZ2N72JR2ZA2KO26W21A2N42UF21A26I2462VZ24621B24U25O27926M27925N21225A21A26J2MN2O32752O52O22522V3238252314725O2322IU25U2NE2MJ2ML314I2O42O622E314O22E314R314T21A314V27525O22U314F2512MY25H23I2HD24C2QI2LP2IQ2I4314X2O0314Z314K2O62Z52382Q331483156315821A315A2JI25U2MY315A2JO31612L0212314B26Q315P21A314L2L52VY25T23821Q3155314U2NE315A315C315E21Y315H2WH315K21A2IR2L025I27523J316V2L525Q2L82SR315V316J3159315B21A315D2P82NU24C2LF316R316T2MI2QZ21A23J2QZ2L52QL316F2JO31482D826M2MA2J821A2462MY25G31562ND2M623A2KS2SX2OU2PI2SA31592R22NS2P52I22P72LG23I2PF2QU2M622U2Y126G2MY26022U2Q3318J2M2318721A25H318926G318B2PD318E2SB2602XU2792642PQ2QA313Q2M223I2RH2QI25C23I23I2Q42NX2122HS316A316C26I2MT2382MN2682NE25E2NE26C2QI25E2QI313Y2HU25R27926I1625S316F31A02292682KO21Z2KO2ZB23L2D827827J2762XU31A631A82D831AA275312S21A311T27K2B121A2CJ312G21X28M21U2A1310L2ZD2EJ2BH2AU21S27O312S312Q311431B02BJ2ZJ2202CT2EU27M28022029A22G311A27923231132AC2252AU22M311O27922O2ZZ311423121U3120312631AC27A27C31BZ27F31BI2MP1H312R279312U28T275310S310I291310K2ZJ31162AG21821O28U28W311X21T23H31BN22329A31292A62BS2ZD312922L312B2FB2H422U2AV31BL31CB22W29T27U2V12752692MT2482D82682PZ21A24F2D826B24U2FX25Q2RQ2L53152316F315424U268314A279314H2HU24E319H2O623A314O23A314726921Q2LD2KO26C2D825E31DE2NK2KO26B1M1V21A26Q2Y62L52Y92382Y124U269313E2482JK31A52Q524M2KO26D313M2YA27526X2IL2YI2IO2RL31E921I2RC2IS21I314F2JF26X315G2I22QI268318Q26B2UJ2UI2O22SE316F2SG31DT317P31DE31DG31DI27526B2NZ2O12MO315Q2O2317L238317N2692YS2NV2SB31A5314B25U31EF2122KS25O31E02O231892382P731FS275317Q31F627525M313X31902JQ31932IE318Q26W31A82KO27031GU21A26P2NU2RI2JG2K62I431DU2PX27531A52TE2RM31A52V52RM2IF2ZA31FB316H2JF2JR318E31F8319531H82HS2I431GZ313W31DA31DC31FU2HU31FW21A26B22M31DM22M314726I21Y314O21Y314731DU31GO31DW31DG31DZ2O231502O222U314O22U31E531E72NV31E931EB31ED2IQ31EF16319X26Q2XM2L52WK316F2PF31EQ31ES31EU21Q31EW31EY31F026G2NA31F32IM31F62JT2IO31F92QC2IF31FD2IX31FG318F21A31FJ31HS26B2KS2HK2KS2L526E2L826E2L431DF31GO31I031DH31DJ2QO23J317N26I2Q7316F2Q931EQ31G824831GA21Q31GC31EF25A2KS26Q314F2L531GK31GM31K221A31GP2IE2KO23G31GT2ZA279271313C31JI31HS31HW2Z92JL31H326O31GW2JC31HL31HD2PW2TI31HD31E731L631HH2PG31F831LC31GX31HN313R2JS31LK31L32QC2JC2SR2JF31L531HG31DV27526J1E2BU31M131I82W8316F2WA31EQ31IQ24831IS2M431IU316S31GE2Y131GH31IJ31G22L525I2L8316Y31ER2LD31J731J92I931JB31JD31F426G2KU26C31F731JI31FA31JI31JM31F231JO31FI31FK2PN26G2H92L525A2L831KO31KS31KU31DF31I131DJ2OT23J2M12L52NU2382KZ31KE2LD31KH31KJ31FX31GF315Y31GI2L52J8316F2XR31NG31382792LL31JI31HU2JB31H32J231LV31EU318Q31HE31LI2JU31LR31JQ21Q318N2KO31HH31OH31GO31E927924227926W31GW31FJ31LM31IE31LF2ZC2ZA31AB27I2ZF27K311P22422F2AW31BI24U22X31BK2ZS2ZU3109311P27S27U310A21A2BR2822842862A231CB28W22322X22J21Z2AB310B280310S2E62222992DM311P31BS31PK31CA21A31CP29929A31PV31PX2DE22Z21S2AY2A12222V527521H27926K2TH25131QP31EE27526N31DG31MI31G1316B2O623Y2L82JI24U2I02LD2I431MP2K231MR31L626X31MU31HD31OF21Q313T31ON31H027531QQ3140319Y31O1318O24U26O16314U2ID26R1M314F31EK2O231F031EO2L431RS316031RV2122JO31QY314J31R02O2319K2MN27023I314B25J2QI2O32MQ2L431SF2JO31SI31RL31LE319X2OM25225T316F31SU2K331AI2D831AL2DE2GM2EE2EG2DD2EI2EK2EM2V527L31C031TB31C331AD2661H31C427531P53141314B31KZ2JU25U31902HU31TP31M0319F31NY31MJ31SB316D2L82JU24U26H31J62ZA162IH25J2ID319J2L82MN31U231MQ31U42KZ31U731P227531AJ31AD2ZS31T321A2EF22722131T62752EJ2DY22331EI21B31C431TG31TI21A31AP31TL319031TO31TQ315731DW21I2HJ26Q2LX26I31IQ316G2L431UC25T24C2PT2D826F2D831U9316F31UB2IZ24C2L231VL31GW31UJ27J31AN31UM31UO31UQ31BC21A31UT2EL31UV31TA31BZ27B31TB27N31UY31C62DE2AE29128F31V02ZJ22M21U31PH27R2ZZ2DE29O31PP310528A28C310828G31PF2CZ31092BD31PM280310D310931Q931CC310J28R2AM310N2CT310Q2BH31Q1310U311D22U311F311H222311J2F5311M22K2BS31AP2BR31XE31Q329A31PL2332BO29121Y27U31262DE22Y2GO2AE21T2FG31H331TM2TI31V531KZ31TR31IG2HJ31S931IK31J12O831VG31U32HK31U521A31UG21A26H31F42482KU2HP2JU24K31VN31IA316F31IC31U131YL2KJ2IU21T2ID26H31N631KZ2RH2792692KC2I22TV318Q26H31RP2MY26H316O2I22WH26L31ZJ31RL21231LV2D826K31RK2TI31RN2OM2TC2I22TE24U2702L731572JK27331FZ31NZ26I2722L831JW32042TE25U313G2742QG2ID26T318924C318B313P316S2I43208314Y31TW319I2PL31SW2L427131ZM2482WH26O320524W2JK26O2VF2PG2NA26O31ZW31H231ZY314231G82SX24U25C3205320H3196316H23331992Q5319D2U1320X31NA318P31HS25F2L22UP2O731J32L4321K320G2JK319A316H25U321Q2Y1322931962Q32QH2NJ2LR31H131SR319Y24M31SV31GL2K22SL319W319Y26631A1238322S31SY31UI2ZD27I31UL2ZS31W031UR31W331T831W631UX31TF31TH31AD31TJ31Y831V431V731YC323E314G31TU31YG31MK31VD31TZ31YK315H31VK27531VM2OM31SD31VG31VR31VT323Q31VV322Y2793230279323231W231W431T9323727J31UZ323A2ZE323C31TN323G322P323G314H31YF320A31VE31U031VH31VJ31UH21A323R3142323T31U1323V324O324Q31A9323Z27521G2ZI2ZD22V21S2BH311G2922H4312M21831P52302E621U2GK310I22231QE2ZJ31PJ31PR312831WU310E31AP28K31AU31X331PL31PN310331PQ31W223131PT325I2GB21A2CL2AX2AW325C31AV325F22K31123261326329Y22331Q722331QH22321V2AK31CK31CB2CQ326E29E31D631BX2222G921J2CP32642233266325E21T325G2G723H29E23E2AX2EC32612BR326H326J31X328G326L31X122I326Q29A326S22F327C2182I421A325331WQ22I326Y32682222DW327L2JK327O3254283327R325D327T2DW327H2A72AJ327L21C279327P3280327S327032692CS2D52G72AJ2G7223327527T2ZJ22H2CZ22I31C425Q3239324831C631WX2ZV31PY327F31XS31Q42ZJ326F31C72EQ329521A23031W231Y331B031Y623G2HA2MT22X2HG31LE314131R62I22K631N021A26L2MT2ZB26K31DG2ZB2I62HX31RL329O31R92K731EV31OH2J431OR31KZ31OA32A621A271313E2K7313S31YM27526T2322HO2NE320Q2JF2JW2JY2K0322O2XT31U42SY2ID2J72HD2262MY26R2TH2Q92L431412VN2J631FG2262QI26R2NZ23Q2N62XF2D826P31G82262SB26R2KM23Q31U02ZB2XG32AR2N82J631ZE2262KF26R2QB2SV32B12I42K531HX2K82KO26P31ZM2262WH26R2TP2JZ2TS2JK2NI31L62X42J62NU2262LF26P31F023B2NA26P2OR2262OT26P31F423B2KU26P2MF25T2262MH26P32AH2MU2NE26P3189226318B26P31ND2NV314F21A26T320X24C2PN321C31IV2JV3209320V2O631MM316F316Y26O31LZ21A31RW2Q331RZ31EM2L82VH32CN2M027531L92JU21X32BD32CW26G2MH32E231P131H4318T318B32E92ZB26I22E31SV26G32EH22926P31KB24832B026T313E2292JK26S1M313T2KU25P32D1317Y21A26S318Q32EU2262PG2KU2KL32C032DQ321F26I31MW2WY25G23I31I7322C31YO31F921B2LP2O2324K2L432FF32FH2QI25J21Q2RW26Q31U031VO319L32FP23I2S9322F2OU2YE2OK2KO32DQ322Q2OM23Q322M32GB22926I26U322T32GG322W21A31VW31Q9327N3127327P29X2CI27V32582B4325A279328D325G325I31Q62ZZ312S22Z31UM31D62ZZ31AP23321U328P22F22L2G72DW2KZ21B2ZJ2E522C2ZR27923F22Y2EB1S31C42N331C41A23231V031C421M31BK2942EQ22E2AW29B32HC2202202AD31W2312F312H22K1T31WC328Z23H22I313132I432I628031W22332AH22K2B329P32GW29121X22122K29M2A7325Y2B8310L21K32IR22532IT32IV2E2327U29T325429031Q422522F21932I532JF22026W31C632612F4326928332HI22323I21Z22E22321U31D43128310I29A22I1N31ZC2MT22B31ME2RM26D31L231OK31JH31JQ31H331OZ31412681E313J2JK31DB2HO32K431JA313N31LG32K926C31H326C1M2RC31MY31H331FF2HO319U32C82K7271321H2SB26P31ZE2UR26T31ZM26G2WH25L31H62LF26W2U02N726C318M2HK2MY32KP32A826X32E62MH2J22JE2JK32102HO2WH32D42HO318B32L732LU2JB32KZ2JK26C22E31402OT32LL31P032LN2HO32LP32M227532LT31ZN2J632EC32AF32L82WH32LQ2JJ2IO25A314032DB32M8314126C31N92PN26823Y2SK2JI31JQ23Q32F526G32B02682463181317G26D31Z931GX31HS26X32MI32A932MK32MH32LX32MJ32M02IE32LF2ID268318H32LJ2IO31OB31GW26C26M314031TM32MS27926826M2HS31TM2ZB2ZB31BZ21A2ID27K3252325432GQ3257312L32GU31Q9327532I122Q2AY32JT32JV23832532A822E32HS31BK32J127523032IS32IU32IW32J7311G2H132JB32JD3238312731CX31CZ2DM2ZS32HM32HO32HV27J24U23326M32HH21Z32HJ2ZJ22W27F2BS31Q92332AU28N2F4310U2ZD32PM29B32JO32JV32JO1V312J311P32OI2DT28A32JX312632H031PK2ZS22J2GQ28R32OU2H52A928131Y52AQ2H632P132JA29A32JC328S31C632OH32QH32IY28W310M21A310O22231XC29C310T3112311431CH311821Y312731XH310Y311022232HS32PH31PI31WO31WT28Q3109325P28L28N325S31X5310H31X7310L311P31CH3112311P2ZL32R732312B832QV2ZH27532HN325532GR31D62CA31X631CE28R312S1U312V326228C22L22L329431AP22O310X22428323C28N22J32HK27532SO21U32SQ2ZJ111V1U1U317G21A31352HD24Y3138318Q313B329X31L732A831392JF26C32KF32MN2IE1U313T31JD31ZQ2JG32MD32A932NB26P32NB26T32NB25L32L22JB32NN2IO23231402NE26X32TL32MM32L032FD32B432KX32AF2R527525L32NB32LE2JE2ID26C22631402KF26C21Y31LV2WH32M431HI2OT319V2PG31OU2HR2PG2JK2J2318N32UX329O26C24M3140318B26C32N22PG32B026C2462SK317G32US31412J22RQ2K726P31JY2I231K031H831HS26Z1M2SK2WY26I31S12VH32US31TS32TM2RQ2512JK26P320C31VI31JU2JC315L27526Z32DK31QZ319I22U26231O221624U26X31HZ32M12HU24432LS32K732DQ32A832W631LT32TF2K726W32TI2HK2NA27132TL313H32UF32U731FH32AF32TT32NB25P31FP26G2SG2JL32TX2JG232313J2NE32WZ2J92JQ32XD32CR31JF32DC32TT32UA2KV32NB32X132AE2JG32B62HK2KF26W32UM2HK32ML2M12PG2OT271329R2D832XT2N726P32K726S31H332AK313R32WT313G32WW31JC2J632TL32182JE2NA32TS32U82KG32X732NB25D32NB31RS32X22JL2322J432D332YM2VF32WX32AF32U632YS32YR25P32XQ32YV32YR32YX32XU27032BS32XX2JQ32Y032L92JQ32Y332EJ2JQ32V732N42JQ32VB2HK317G26P31702I22UJ32182SP32YK21A321825Q321A32E1313M330632DS2QO26G31K931KB23831KD32ZW2LD32ZZ1U2SP257321B1U3305330232182663309321832VH2NA25L2V22V42V626O318Q26R2LF2RI2L531ZM2382NR24U26P2122V331DD33102VF21826L2NA2KL32SC2RM25P32ZX31FN315Y22U3301316222U330P331T330S318O331Q27K331Y315A2RC2MY32F231LM32G831P027024M2J4318B31SK2V431SM32V321825J32ED2PW2RR279330U2QG330W32VK24C32VM331132W732DS32WA31SA319I31FP23831FR32G8332L33072RQ32WV32UB32VK26G332S318Q32182ET330226R32N22VV31KD26I31R2316F31R4331B331D212331F1E21823I331J332K314132EU2RW31MX27532EU2GR333Z32F11M32N32KU32DH31L632AG2VZ2Z0321832TJ2JB332A2HK32D7331C2I2333P3303331G330232YD318E279333X32F6334032EV2VV32F73345334T3303329O334A2Z6331F334E2JG334G318U31ST2PM2L4333N2NV334L32YN21826S333U334Q334U2T8334X333Y334X334632E133512Z52ND335432Z53356332B2J6334J2HP333Q2VV335I32UT335K334Z334S334332F4334Z33482RM3352335T334M335526W3357318B26W32V725J32B026W32ZT24G317G324X275311A173251328A32OC325632GS32OF2CV32QS32OJ32OL32JU311432OO2A72A932OS21832QF32OW32J332OY32J632QL32J932Q732QP32P531CW312A22I312C31UM32PB21V32HP324A31PB32PG32PI32PK311P32PW32PO27932PQ21Z32PS2FK311232PV32PN32PY311432Q032Q22DV32QH32JV31XN32JY32932ZZ32QB32QD32J0338F32I132IF32IV32QK32J832P232QO32P427J328T31PL32Q432QU32IB32JV33921T32QW32QY32R031XS32JV32R52ZM2ZD32R9311G32RB32RD325J32RG275327L32RK325R325N310L32RO31CD2DS28R32RS311R2ZJ32RW31VZ32RZ310L32S121A32S332OD22332S621V32S8339T310L32SB32SD31BV22732SG32SI31BR32SL32SN32SP32SR2IV33AL32SW32SY1U26D32K12HD21V32KK2I932K7313Y32A831JR2QC32KE32KG31HD32YJ2NA26D32TL32TC31JN32YR27132TP32TR32TV32NM32YY319N2HS2NE33B832XJ32NC313A32Z733BD32YR26P32XQ32YQ32X433BH32XU2682262HS2KF26832ZK2WH26832ZN32M7333V2792IF318I31FB318N2IS329O26824M2HS318B26832ZQ32B026D26M2HO32NY32T732NB2IK32XN32XM31F52IE32TN32N62HS317G32KP335J31GX333Y2IJ32W326G31JU33BA323Q32VQ2KT31S032DX2L433D3333333D52QG2IJ31FP24C32XB3139317E31VM320U32WB2O624E32WE31G532WG32T3335D31LS23T2IX32K731H232TB318Q32TE33B432TH335532U233BN32U432LS33BE32YR33BV31JP25L331O2UJ32UE32XU26C32TZ2HK32U132U332TN33CU33CX32TQ33EI32XQ32UC32YR33EO32LG32UI32ZI2IE33C42IO33C731F232Y732WK32TG31L132T932WP31P032WR31LW32YH2JB33B632ME32X032XL32TR32X632Z932XS32XD26W32XF33ES33FO33BN32Y932AT32Z733EJ2QI2KH2IC27525P33FU32YY26W32XW2UR32XZ32UN2JB33FA2JG33CM32ME33CP2I231TM33G132X331JP26T32Z725L32Z7320432LR2JB246313J317G27132DN26G316V32XC330P2ID313H331X33H82742VV2ID320T31P133DU2O2330E31KD33H22LD33H5313H330525733HB33HA32XK332033HB333Y320L335Z334L32YF275273331431NR31I92L83319271316E31MB2V6313H32SC26L2ID31L931BK2ZB25L33H333H525K232330P2NE33IM331X33IP2N42VV33IS2W633IS2RC2NE331131LM31H231HC3356313J332C2MP332E24U336H2ET332I2JQ332K32VX313H2RW251320L32W324C31JU320Q317E27333H5316X2O232ZX238317233J233DJ33JG21B25533JJ2HO33JM318Q313H22633HD33I12123342320A333K23831R433I8331D316H32XC32SC23I33IF33C933072T8330N24U3362330732N3313O329O2J72VZ31IO32XC2J432UG24M33J532ME316E2W033KI33K7330333KM334M33KO333433KR334M33KT2JQ33KV31IM2I233KY33K533EP33L2334H33592I231NB33KF31IR33IB1632SC26S33KL33D4321824E330T1U33LC33LF330931HP31L633KW33LK33LV33L02IO33LO335832A933L533KH33IC33L83332314133M133M333M5321833LG2JL33LI33KX33MC33LN33L32IE336L32B027133GM21U33GO33FQ33EI33GT33GV32TN32VA33H0324O31UJ32O732QF32GO336Y32GR312K2B232GU325B3282328E325H31PW338K31PK312S32992ZS32H531PK32H732H928D32HC21S32HE31TA311P32PY32PA32HN337T32HQ32HU31AD32HT32PD31VX31BK2DE32IM28W32IP311C32J232J432OZ339533942FK28W32IC32P5337D32OX32J52A7337I338V2CI32JD32JG32I532JI2GA32GW28W2A822K32JO32JQ32JS337632Q631Q422I2JY2HZ2MT26V31ZU329U2D8329W329M329Y32K931QQ32A833PU31P026K33FL329P33FC21A329T2Q031DA31RE33Q233CG32KB32KS33DE32KA32A832NA32YR33DB21A26X33BG27132L52KF32C332NL26T32LC2IO32XD32NP2HS2MY32KC32O02OT32ZO2I532NF31A532K926D32NH33QH32D926G32DB27133R732DB32KE33GX33Q224U2JE2MH26K252318N2PN26K23Q318132B026932NB33R231L626D33RB31F233R533RA2HO32DB33QN32MG31JQ32XD26K2XP32NR33QC31P031EA324O26824E2HS2QO33QW31RL24E2JE330B31GW31AL32HZ31P631WN31PK31X0325U31WR33AM328M21V28G2ZD2BR33SW22L31WI32Q3327633NS33AM31PG28G31X932QX31XB2ZV32R131Q231PL23H22M312G29X2EJ31WZ3101327L2ZS29Z2DZ31142A6327Q1G31H324N31H331412HN334K323F314133PQ2JF2I331HS2SL321F2HH32K931413141320831UH33HH2L524U314O31DO2ZB31KU2SL2IH2733190313T27926L32EZ2NE32KI33U132K831RC32K733B12JF31A5314031RJ32C031RM31P02O32VZ2V531RR162KZ25U31S631TT32DL33JS317131S333VD315733HX2HD2532D832EU2HS335M33QB33G932YR32F231HS33PM2SK320A2LV2LX26T32WJ33442HJ25U334X3160334X33VE2KU32B82KZ314H33VI2L531ZE2382IH33VC2JO33JI335Q2HU2202KO32AG32AI27525K2NC331J31OL31L632212J524U26131ZE2482KF2602262KS25U2KF26432DR25S2SB25E318Y2P12I4334P2MI319Y26M322M33XP22931QQ32G9314225Q322T33XW33XS32DR31ZV27531A733ND324Y21A33SO339J33SR310131PO310433SV327633SY310133T133T3338F328N32Q933T731WY33T92FY33TC310R32R233TG33TI2DS29Y28W28G33SS31X2339P31WW2EI31QJ27V33TS327Z31XO1I31H323D33TY329F32KJ33U231ZC32K733U62QC33U831P033UA31L633UC2792732RQ2HK31DO32EG3153314733UL329I33UO33UQ31P033UT33WV2I533Q133RT2RM32T833PR31JQ31RG33V431LG33V6313Z33V82U92I22UB33VC33VE33VG21A31II33UG32GF2L8333133VM33VF32AF2MT22V33VR1M33VT334U31FD32EX32NB33VY2QC26V2PT2LA2ON31M72L433W52LD340Y33W833WA315733WC341I32DJ33WG320A33WK33WM31RS33WO33IF2KM33WS32AF33UU33WW33WY334033X02RM33X22LA33X52LD33X833XA315733XD33XF33XH33XJ2MC3340322J2OM33XP316F33XR33XT33XN2OM25I322T342N33XZ31IF329Y33Y231AH322X323A327E31UM33T833Y82BC33YA325V31WS31PS299325I31XQ31Q032R2329233YL329732H331Y231Y432IV2AK2ZS33T1312733T033YE31WI3278280327A327K33Z133AD32RP32S9310L33TA339833TD339A339V31CI326B326N32GX326932SD33SW339233P7326M326W326F343R1K33ZD25T22R2D826L31IQ2RM329T319G2I932AB2JK26K318Q329T313J31ZU31ZW33ZK3141319Z33G732032J3320633K82KZ323J31TX32FY31SE1E2IU32W033LH322H323F31SS3142246322M345K22926H31MA31A821A2HJ25D31ZC32TL33ZI33U521A2JI33UC329O33ZO2752N233UF332X32DM31MN31VG33X62TV31DG240344K340531H331ZV340C3142333K26G31R431RS33XB31RV32DB23J31KO26I31KQ33VL346O33072SR251330W2OR24C2OT332T320R32DJ33DT34662O231FG2382Q5331A32CW2482MH33LY2KS2642KK2IL33QB25K2UM2PG33IF2WC2J633RW32F1163181347K31HF2KU347N31HN2ID25O321Z32E11E2SK344S342F3142232322M348B32GE2K1316F2K132GJ31VW27I21P2ZI328X31WM2ZY33Y931PZ310233SU325X325Z33NR343833TE2FL343B31BR32H132GW329A343G31Y631UM343K33SZ28033YH324A31CJ31013285327J327L339R32RQ339733YQ31XD33YS344231123106343T339N32RM339P218326U344C326D34462223272327433T5327E326C2AW326F349F2AJ1H344H344J2HZ344M2KO344O32EA26D344R31RL344U212344W342S33ZN340F345034AJ34532IH321M21A27331RH31EJ32FX324S3204345D313G32G5262345Q33XU26I342H23833XR345O31E831KZ345S345U33BN345W2K6345Y33ZL346131H3346433HG34782L531M62LW314726H346A31P22HU346D33PK33ZE33S93141346H33X133D831JW346N33VN3476315O33WI26I31G4317N34C9340U334M346Y3470315H34732QB317E32B8347731YH32EG2L831NN34CH320L31IQ23N2NM2IN336632VQ34D2318133WE22U313T2XR26I32D1315T335B32D924832DB347H21A21S347X33QB321C2YP31H4321U2PN34DH2N732EU347Y33WW34843303347R33Q2348931VD322M21Q2K226I348F238348H336S31AD33A23430325T28033YB325W343J33YE343L349A343N349C348N3233325Y3436348W3101329131XU343C32H23494329C2AK349Q32RI33YY33TN343T33TS342Z349I343W349K310P3440349N27932RT328Z325Q349T32RI344B3262344533NO325G34483276344A3444344D29E343R2NE31YQ2MT25W329I33J333U431H933U734AQ31AF33UB31H326J24E23J2HK33M22L523Q314O23Q34BV31F02482NA329Q2HD22933PN33Q432T232Z7344T31HS329T2RC344X32C0344Z319Y34AS3204314F34AV34AX2JI32FW31SC31UA31SM1E33WO34B4345G2TI34B834BA34BC33W62SL314B2313190318134G531L626L33QQ34C331QT346I340Q2I2340S320G31S634CR323K2QX316F317J31RS34HY33072V5346Z32UB320N32ED34CO2I426R346Q346S346U33VC34I632DC2MT23N340Y314B33682WW34D234DU32DS23A313T2PI2L5347A347C26P320X24834DQ2IB21A347J334U31HN347Z16318N347Q2SK2I432EM2Q8334034J534DS34D33343347N34JC315934DW3214348731SQ34B8212322M34JV348I33Y51A2ZI311423I22Q23323B22Z23G34EC34F031WV34FF32RL28O349U2ZS22R22P23F23H32H3349922I29L29N27V31BZ23123132SD311V28Y29029233SO29629832JY29D27U29T31W222Z22O23323022Q22Z22Y328Z2ER23I23534L734L934LB34LD31W827C31P522W23G22Z22Z23522W22P23G23523322Q22Q33O532GW22V22O22Y31C422V31BK2ZD34LF23523034M334M531AD22S31BK31X023122U23322O22X34LS23322V22R329722N32JV34MP22R34LX23E31CG339W311P328P2AV32ID21L310122O2AX2992BH31X32DW34KO29O339434LQ23323E32H32ZS23134LB23334K8338034MD31W22FF2DJ2DL31W22DP2DR2GY2FE2DH23F2GR31AP23022J2BO27F1V34NT2DM33YZ348S33YC31PL23G2E234EF34KY27923G327I32JN2AW32QD31QL21A2392HA31IQ23M345Q2HS3190321F33U02ZB34OZ33ZY34BM32K926H32XQ34BD2I2345Q2RC319031FD2HA32Z7346231YQ32NB34PF26H33BG34BW2HO2TV33F831YQ33QL2ZA33GI34PL31ZF2ZA24M318E318B34PT2UR31NA33RL2HM34PQ2HK33GK31YQ34I226G317G26L33GM26G32O432G52RM26H33J723B2HA32VK22632VM31412LN34C12MU344K32W33427329P31IQ23B2KO26L31FP22632XB26N32G532BK32B132AQ329P32ZX2262UJ33IE2LD2ID329T2SP25U33PN33052512D834AI2YT344S33XK2HZ2IZ24834RE2HC2RR34RI2QG34RL2IZ23B34RE34RP329P34RR34RT27K34RH31ZR34RJ31VL2UM2JZ2UP32B231QP34S234RC2NV34RT34RG34RW34RK2I932CS2KU344T2JU23Z2I4344L2HO34AF2MK2VV34RL33MI2V634GS2QC344O34SY34S82PG31VL2WW2JZ2WY314125N2XU2D8314D34AK342D329P34I2248317G329T31YW344K31KF2SB31QW2SR3458319I324S26L32ZX2482UJ34TN2UX34TP31NT31QV2N321834TU2O631SU31SW2K226L34TK34TM2NZ22W344K34Q426K34PO26L34UJ33GI34UM34PM31RL34PW2PG318B32O52ZD31Q918348M279342Z32RF31PK34KA310E34OB327L34K234K434K634K833TP33Z432JV33TT328031TB31W934LO34LQ34LS34LU34LW34LY34M027K34F733AA32HG32QS27T344A343Y349L348Y32R3338334MQ34MX32P6337O337Q31Q934KV2H134OI31CB29733PH34L329F34FJ325Y33P92A6326D33NX27V312S2GR31Q9312X312Z32IG2A833NK21A23G28D34WU325934KG34KI34KK34WU31D22BS34KR34KT311P2E231D333SO32QY31XN22I2G734WW2AK32RV29Y32RX324233A033T62ZJ22221Z2BH34WU31WK32RR27934XP32I531TA31142E234KX21X34WU21V2A631C41Q232314932A833H534DZ33B031H333E02ZB26X34AE32M12HS32UX1E314032V032C032KP32FB32U624U33G634SI27526V31RT340N3220313E2L92L425L34GI2NA33IM33VE316K27925E2OZ2OE33WW34S233D3342L314232GB31KC2K233E031DD32A72MZ33CA33X02NL2OM21Q263316F21Q21734YT32D124833IS34H22NE25N25223W31EJ25221831NC264316F25A350A33W034CC340P26U33DX26U32WG2KQ31642KU25N26E2O325O26E32WG34B933DX26M350M2KR341K2KV34S4317533XB2MY25N23Y256340N23Y350V25233DX252350Z350O33WW33IN21A22A2NE25D341W318C31HF2QI25K318Q314D34IP320A23A33DX23A32WG314S2V5315X25D31IQ22L2KO3227321S319A318E322A35292QT315J22U345Z331T319C331Y25D317L330C319631I731JP25H34YI318331HN2SB318W31853183318I352V23A318N2SB26134QC31TM33X9333Y3426318N2KF26534C72R021Y318I2WH26421Y318N2WH33X93181342633M22UR353733F62P031HS352R34SV317Z352U317Z26M352X2QS2ZA2QI25T352S2R731HN2OC2HR32TG26533IK353E330P2WH25S2N42PG2NE25S34RA33F62R7352J2LF264329O25S2IL334Z25W341Y2PO2KX2R92RJ346G354Z31H7354T331X2KU354W2ZA2NA2R731HF2RA31ZS32EA25S21A25B2TI2V63555354V354X355B35502PO355E2ZB2PP2LN33602PO354U33433558335V355O3554355R2D825S21Q33UP33L625T33Q62R7313T2RE31ZW24O2X2354G34DY26I23A350C238312Q34ZZ2LD350231573504319F34U7320A1U356L32SC24U350N351133IM2SR351L2NS351O319A351Q34ZE31HS351U34BQ34CS266314O330S315V3522351M3525352723I31HN321Q352B3196318I321Q318N352F352H3175352J2MY352L2HO2QO319A352P2QI353V34P8353X352X352W31822PD352Z317Z3532275353433CQ27535372U6358I32UI358K21A353C33K2353E353G353E353K358L353N358L353P342631FD2KF353T2QC35852RM2PD353Y31833540318235422HK3544354622M35482M6354A2K7354C2HO33H5353I354F275354H31HI354K354M2UR354O2PG354Q354S355X3557355N35532RE3552355C359P359Z2RJ35A135A5355Q31ZT359P355H355J355W355635A83559359P35A2359P356335AM355U334L355L355Y35A9355P2PP35AC2PO35662KN2V6356932KM354Y356C2RJ356E356G359P34DY34ZG345I320B25W316F27225W22934AI331D2WM31L525E31E931QU324P316731TV340P324S32M834QP31KV342T2I932DN24833H52IF330526T2IX354D32TM333D32LS31J22HT3310321D31ZW33AZ33SA329J27923731TU2TW35BS34H833J92OY2JB31AG33FB341E31GV31MD35CQ2N434ZS31422IZ2382UP314S333R315X2MJ2HJ340O34BR345A2L4314S2VU315X25O35CR2JG34E0345K34I32K235CF35BV31L533Y332EA348J27913336W27532GP336Z34WY33NM32GW34FM3269325I34V834K534K732SD31X3325I33NW31D727V337322I32OK32SM32JU343C2H434LF32IL32IN33OL33NZ32HA33O233O432HG33SO22Z32I132JY32II32I7312E33TJ33OT33OF27I31TG337Y33AM337S337U33OG34WU22Y22P34MY32JK33OX33OP33OS310L31X02302AU32J3344A35FJ2AU2212BW1E299311233OW337F33OY32P0337J32P32191T35G235G327132JJ33P832JM33PB32PJ32JP32JR32OM337N31CY337P31TE338Y24131TI33OH279311Z31CY2AZ32ON32OP337A33OD31BK31Q623322R32H3311D337E33OO32J633OQ31BU35FH33OU27I25Q21T33OC27J22Y32RE2FY32PN32SD3384338632PU35HE32PX35GA32PZ35GA1V1Q2ZJ32Q4338H32Q734NY27532QC33TI339Q338P29C35FH22333AT25T22G33AW32T232K726X34AJ35C732TG33V12I434YF32T632ND33Q6313V31L633QG32WI34C233EF32ME32Z7321C32C033FJ31HA23231FD2NE2682QI31JP26823A34IP2SB27134HR33GP31H42OR33QZ26T32LO32UB35JA2OT33GW35ID21Y313J2WH33RZ2I232DB35J832DZ2I22OT32DD335A2KG35JF33G834DP32XK33BI33MF32V532TZ354J32ME352M2QO35JP34Q8317G33M831HJ23Q313J32V926M333Y32NY320C31JV32ME347T35JP33EM32AF35JW2KG35KO2KV35KQ35J826C26U313J32XB35JM33R835JZ32XU26P35C626T35KQ33IJ359L33G835KU32XD32V233MY26C26634IP2TE2IE2UB2VV2UB32XE33IW32ME31M62I333LV32YY26P35CA2WM32EQ2WL2V625L35LV33IB32TN31GZ34GA33L626W314B2PG31TM26W35KJ33D935KL33S035L232YA35KQ35L62HO2OT25L35KQ32ZA2VZ2XM32XC33GB35KX2HK35KZ35KM32XL32CW24C2MH35MJ25T22D35ML330Y2SL2V625P35LB33GB35K12JB35LG2HK35LI26W35LK26G35LM32WV34MT31JC2V633FW25B33IU33IB340N2VV279313H2RC33HB32PH313U329O26W23I35M5319C32A935K635MG32AT35K933LH32K932XZ35M531IC32EA32O627I31Q9342Y33YN338H34V935E631Q935E833NR2ZD2CJ31Q23490275329435EJ2ES34WU22V22L23332GV32OV35E133NQ31QF279329B31Y522F33A233U023X344K352S34AG329S2N332EA33Y134AP32FB31Z934532Q534H332Z031EJ2XD32FC2L82WY32042KZ345E32DC32D124C32AJ34ID33K834I0345934B11E315C34HC32G6345H319Y25A322M35QG34JY323A31BZ31UM34NL22Z34NN31UM2H12DL31Q933U026A2PQ33W1324O32O531H334P72RM26N25Y21D2JZ34E8314C31AF34HD34E931QM275311D328O328Q35QM34NM34VB34V035OK34V2325L339M34ES343A31XU34VR31CF34VX34FA33YR33TF349O34VH34LN2FY34VK34LT34LV34LX34LZ27634VU33A835FH35OL35E534K831BU34NG34NI31WC22Y344H34ZN2ZC31NJ31M03305317H33052L526U314O26U33ZW32DR314H35Q7319I35DJ238345M34P731MB31P22JU2232D826H32K726L35IB344V35PK2122J434GW35PM33V831E22I231E4345333VE3207332W34CS2YH23831EL35PY345532XC345D320L31O124C2MY33JN320S33KH23J316H2L5334J319L314733BR2NV2QI313H316433HE35BQ34U831GJ2L831GM320433XB32W12NU2NW334M33XB2NA27326M2IH24E314B2L534I235T134H935TO32XK35TY32AF35U035U235Q534AW35TQ323K32CW2382IU24U2712OR24834731E2KZ24T32171U31FD331J31GW2JM34JE2OM35PO35TV34AV35NV317735TZ315H35V9332U2732ID23J34Z031YJ35VH35VJ35VL35V4334M34H235VS2752M92JQ34S2324F35BB24M322T35WO348E25V348G25V345N33W626L35MY2MH2HH35RA31SZ323A31X031UM2B822H339U27931P82AW34EC34OB34OH27V311D23F31WQ325322M34O535XE32SD35P034NS2DK31Q527931QH310X34NR2DH325Y34WT31Q92FO2FQ23H2FT2FV31QG34L834LA34LC31AN31QQ2JU22H31QT33PT33PO33PS33ZN31GW329L2JF329T314034RY33G733Q234AL35TG34SN32XN2IT31JK31FC34T3318Q31QW35QX35CM31VP2L4329T35WI344K32B535J035X235RC27535X42ZS35X635X827535XA27V35RM34ED34OC325W35XG35XI21S35XK35ZL29231Q935XO2DH34O92ZJ35XT2EC2DE2FF35XX35EC28J2FP28135Y32F635XS35Y634LK348L31SQ35YB35YD31L633Q335PK346135YI32K735YL34AH32XQ34T235YK35TF34AH32Z735YU32TD35YW35YK35YY34QF34B035CN33PW35BV26L35Z733Y431AK27I35ZC27935ZE34XU35ZG31P934KQ2A327C34M92ES34MB34NQ31AP34MA34LI35Y735SI33SP310N34MD34M127534N235HV326235RI327X35YA34BL35YG344N35YF33Q733UB360K32T9360M2ZB35SX357C323K33KC31R434SH34RS34U52IH35UJ31YI322231R531YS34SP2NZ31YX31ZR35Z534RQ32AV31U831G8356M2L4362H2ID31QW2IU362L35PV316F2WY31ZP2LD2MY34U122M35Z632YR34U1329S346G346G35YI32XQ34E931AL31UL34LM31PL34MJ34ML34MN34LX34MQ34MU34W234NH34MZ31CI343J33YX21T360C33Q035CT33Q231DG34S7314G359F364A2O23317331934GL33E1364733W82D826N21I2N431VB32FN323M31R533W6344T2Q525J2LT32VU3630364S31TU364931QW2Q5363534TW364S364M32FJ361635ZA21A33NG35Y534LJ34LC21834N5348R34N732JX34NA339P34NC29M29O35S7310G339S35RT33YP35RV349M33TF363P311434MV34MX32ID339E31XI32RB339B31173119349C34N1328Q21922D21M23K22X25R22C22I31C634X634WG2GE326934WJ2AW34WL3394366R32GT312N34V032I835F0339334XI2ZM311432J82AH21V32JE33P425K1H344G2HM33W6362C31G035D923Y314O2S931U1345P34BY31K531TT31VA320A31DQ23831DS33V732VX35TD26334RL33Q62IF313T2I4360P2I435YZ362D345935TS31EL31OZ31Y926B1624V31EJ31J02L6314O31J431DU2N432VX31A534H231RJ31602KO25J21A2BU24O33VB34E52L8340J31O431FX31JJ364O31TY34ZW2L431ZD34252I931ZM24C33C534B52KO26935UQ2LF26D32CW26I2MH2IF31LO31F234HR2J231HF34YL318E313G29I34T735JZ347P2J635JY334M31HN32YP33BG25L346K32N033IM352J2NE25P33BG357Z2I22QO351S31HS25P36A5357W2PG357Y33BG25H35O6315Y31H932E135CH32XK33MD33BO33V222E2HS2OT34E532EI34E835Z927J2FX276311P34XT2ZW33SQ325L31WQ34OD34V4310931BZ21U34O228J34KD325S311P2CJ310I343U365S28R31WE2EW310E363P31AY36BT2EY312J31Q922H28W34KW31WG363Q32R232IM2A8349P29527F34NX32JV32RZ35HY35QQ29034NU2DE2ZO21V34XP2232FM34OS2HD22134OV31P032A02PT31ZH33Q134P131KZ2J42HA34P6363L2L431P031YR32XN34QH2YT2HA31O124D31ZK345V2NZ34P032NB34UP34PU3647318134RI34AH2MT2MV34AK332U2PH2JU24G2SB34P734QX2HM32CO2OT26H347E2MH26L35WC313W34HD35T92YT2I426H32D534PY318924834UU362R323Y279311P21E34UZ27534V134V031WL34F2348R349H365R349J35RU32QZ34FB33TF31XG3664311I311K34XD31XV31XX2CJ31Y034X5361G31WA22132ID31P733T532OB32S432OE33NL2CV311P23033T5349S34KE34FI31142CS2222D51U35G135G335G226L31C636FR31112D52EN343C31X022W31WG34WE29T31TA34NK35SA34KZ35FH28222N32SQ33NJ35S8344A2H427F337031US36C1328Z31XW29X36F732JY32SC32H736F631XZ32JY1V22P344H26U35PF353W364I360I34GX34G42OM16350C2KJ350A3204368K320721I27823J36HJ316D356L2VU345336HH32XK2Q533WP32DC31F024C313O35VA33HF367E34CS35SS31FQ314736HG35TW33LM26E33HB313J320L33GV318Q27323Q2FX32N431I8367G333L35UB350032AJ1634H235UH2JI3635367Q31DS33QK369732XC2KS23032AT34HR26T352S34DT33QB32EU3140335O33QB33I032A933QJ33BG27024U31HN2MH32L12HO2SB27025A31HN33R936JE25231LV2PN36JJ35TL2JQ23Y352J32N036JU318226P35O935US335V26S345C32UW334U335P2KP36K72K733IM32N333IZ33K424E2J42QO36IW36DJ313H347W2J633G336J4347L34IQ36J836K936JA318Q271333832VM36KL2UR36KN35L332Z736K634YN36KV334336JB271353D36JC36JK2J636KZ2JQ26U2J435KZ33BG32W2358Q2JL25Q2J431FM35DI35WS35T135WU35RB27I33TA34K92AC343335RN343T36EW339934FC35OV2ZZ366A34N336FX35G235G531TB36BH36BP349J33A2343Z35RW2FL22P22033AE32SG32R836F134W02BM366721Y31WI36BS31WG2EY1933US2MT33SB364734GP32K6362934AL35YM32NS313J34SF31HS368435CL35D9332Z31FR331I2LD2NA26931F424C34SP369C2HZ34Z531ZR34TO2HZ36IN31ZR34H2364K27229Q23J27234E426E322M36O522934022NV2NE329T314F26E33PN345Z34RL33BG368234U535Z035D9322L316F322L36O836NW3647314F31L931ZR36OG2I936OI34AL351V2752HF36OL34CS348B316F348D34HQ2OB36NT34U2365931AL326135RF34N331AD338Z36B736EQ36LZ2H036M131W233TO35RK328Y34V6343T35RS31X8365U36EX36MK311236F032RA36F231XM311N328Z31XR35RQ34OA338336GY36F834EX35PA324436BX22L1R35SJ36H531VI31H032DI314G3154317H31DS26I22M314O31I731Z231UD2TI2Q522K31ZC33Q634BJ2HV32T936D633CX35YJ368121234GV34AO2RM34GY31ZZ2TD34H934H235TP35SY2O632W3238320E35QA36I7162JI36HU26T31G824C36JL36HZ35VC3459320X314P320Z362P3485314F3216330734IP321B321D36HA321G36LE321J36RO34AV319A2JO321P3196345Z2QI26133R535922JF321Y32AR362M34Z236SE36RH31963164321Q33XB321Q346Y319936NQ31L734B836ON322N2K334E0322S316F322V26H36E52ZC36NU321G322T23A25S35QJ31UK2ZI363P36MX2EX28G36C036C234W927V31P531XS34OK2GD22G36CN348U2DQ33TJ2ZD33U035SK329L24836R8368K33PN36HT34RL34QI36NC34752KN36DT342U32GK2ZD312S36LY343C36BG2GR34EN31WJ36PK36PS34F136MG34F836M436EY31XF34FD36MR31XL311L36Q4348X34ET36Q82F136QA338J343F34EY36PF360831US36QF31W236CK36CM22233Z9360D323G31E634BE31OK31TO2KO31QW31DY33KB367H314736U931R8313E35LU31LG313J33V5360G36SB34HV32XA33VL34AU34HZ350H35D935V134I431YN34CI334D3177330W35Q236KG332U34IF316W34IH35UL335B2I136UA34JI2IH24W347K3412341Z32F936W931ZQ24U25G36WJ2PC23A314U353031602SB31YP35W82O234Z12LA36X836WD317Z36XC317Z36XE317Z33WO352V36T4332735BB34UA314P2K2342K35BB34JV31VP34UC34BX364736TH34SU31IR31ZR34AU36NZ36O136O332GE36O5316F36O736Y835T436472IH23333PN313T34RL351O36OJ21A26N25229Q31NA34E435QG350D34UC32112WH34U1362S329P369F36PA36Z5363M27I');local d=bit and bit.bxor or function(o,e)local l,d=1,0 while o>0 and e>0 do local n,c=o%2,e%2 if n~=c then d=d+l end o,e,l=(o-n)/2,(e-c)/2,l*2 end if o<e then o=e end while o>0 do local e=o%2 if e>0 then d=d+l end o,l=(o-e)/2,l*2 end return d end local function l(e,o,l)if l then local o=(e/2^(o-1))%2^((l-1)-(o-1)+1);return o-o%1;else local o=2^(o-1);return(e%(o+o)>=o)and 1 or 0;end;end;local o=1;local function e()local c,n,e,l=H(f,o,o+3);c=d(c,46)n=d(n,46)e=d(e,46)l=d(l,46)o=o+4;return(l*16777216)+(e*65536)+(n*256)+c;end;local function c()local l=d(H(f,o,o),46);o=o+1;return l;end;local function I()local o=e();local e=e();local n=1;local d=(l(e,1,20)*(2^32))+o;local o=l(e,21,31);local l=((-1)^l(e,32));if(o==0)then if(d==0)then return l*0;else o=1;n=0;end;elseif(o==2047)then return(d==0)and(l*(1/0))or(l*(0/0));end;return U(l,o-1023)*(n+(d/(2^52)));end;local J=e;local function U(l)local e;if(not l)then l=J();if(l==0)then return'';end;end;e=n(f,o,o+l-1);o=o+l;local l={}for o=1,#e do l[o]=r(d(H(n(e,o,o)),46))end return K(l);end;local o=e;local function H(...)return{...},L('#',...)end local function S()local r={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local f={0,0,0,0,0,0,0,0,0,0,0,0};local o={};local a={r,nil,f,nil,o};local o=e()local n={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};for e=1,o do local l=c();local o;if(l==0)then o=(c()~=0);elseif(l==3)then o=I();elseif(l==2)then o=U();end;n[e]=o;end;a[2]=n for c=1,e()do local n=d(e(),198);local e=d(e(),198);local d=l(n,1,2);local o=l(e,1,11);local o={o,l(n,3,11),nil,nil,e};if(d==0)then o[3]=l(n,12,20);o[5]=l(n,21,29);elseif(d==1)then o[3]=l(e,12,33);elseif(d==2)then o[3]=l(e,12,32)-1048575;elseif(d==3)then o[3]=l(e,12,32)-1048575;o[5]=l(n,21,29);end;r[c]=o;end;a[4]=c();for o=1,e()do f[o-1]=S();end;return a;end;local function U(o,I,f)local e=o[1];local n=o[2];local l=o[3];local o=o[4];return function(...)local d=e;local n=n;local D=l;local r=o;local J=H local l=1;local c=-1;local S={};local K={...};local H=L('#',...)-1;local Q={};local e={};for o=0,H do if(o>=r)then S[o-r]=K[o+1];else e[o]=K[o+1];end;end;local o=H-r+1 local o;local r;while true do o=d[l];r=o[1];if r<=94 then if r<=46 then if r<=22 then if r<=10 then if r<=4 then if r<=1 then if r==0 then if(e[o[2]]==n[o[5]])then l=l+1;else l=l+o[3];end;else e[o[2]]=e[o[3]][e[o[5]]];end;elseif r<=2 then local r,r;local K;local A;local r;local I;local H;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;K={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;K,A=J(e[H](a(I,1,A-H)));A=A+H-1;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];H=o[2];I={};r=0;A=c;for o=H+1,A do r=r+1;I[r]=e[o];end;K={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]]+e[o[5]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;K={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];l=l+o[3];elseif r>3 then l=l+o[3];else if(e[o[2]]==e[o[5]])then l=l+1;else l=l+o[3];end;end;elseif r<=7 then if r<=5 then local r;local K,r;local A;local r;local I;local L;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];L=e[o[3]];e[H+1]=L;e[H]=L[n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;K,A=J(e[H](a(I,1,A-H)));A=A+H-1;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];H=o[2];I={};r=0;A=c;for o=H+1,A do r=r+1;I[r]=e[o];end;K={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];l=l+o[3];elseif r>6 then local f;local I,f;local H;local r;local A;local K;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f=o[2];K=e[o[3]];e[f+1]=K;e[f]=K[n[o[5]]];l=l+1;o=d[l];f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;I,H=J(e[f](a(A,1,H-f)));H=H+f-1;r=0;for o=f,H do r=r+1;e[o]=I[r];end;c=H;l=l+1;o=d[l];f=o[2];A={};r=0;H=c;for o=f+1,H do r=r+1;A[r]=e[o];end;I={e[f](a(A,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=I[r];end;c=H;l=l+1;o=d[l];l=l+o[3];else e[o[2]]=I[o[3]];end;elseif r<=8 then local d=o[2];local n={};local l=0;local o=d+o[3]-1;for o=d+1,o do l=l+1;n[l]=e[o];end;local n,o=J(e[d](a(n,1,o-d)));o=o+d-1;l=0;for o=d,o do l=l+1;e[o]=n[l];end;c=o;elseif r==9 then local r,r;local L;local A;local H;local I;local K;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];l=l+o[3];else e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]();c=A;l=l+1;o=d[l];e[o[2]]=(o[3]~=0);l=l+1;o=d[l];I[o[3]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];end;elseif r<=16 then if r<=13 then if r<=11 then e[o[2]]=e[o[3]][e[o[5]]];elseif r>12 then local J;local H;local r;local I;local A;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];I={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;I[r]=e[o];end;J={e[f](a(I,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;else local K;local A;local H;local J;local I;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];if not e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=14 then local J;local H;local r;local I;local A;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];I={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;I[r]=e[o];end;J={e[f](a(I,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];if not e[o[2]]then l=l+1;else l=l+o[3];end;elseif r==15 then I[o[3]]=e[o[2]];else local J;local H;local r;local A;local I;local f;f=o[2];I=e[o[3]];e[f+1]=I;e[f]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;J={e[f](a(A,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];if(e[o[2]]==n[o[5]])then l=l+1;else l=l+o[3];end;end;elseif r<=19 then if r<=17 then e[o[2]]=#e[o[3]];elseif r==18 then e[o[2]]=e[o[3]]-e[o[5]];else local I;local J;local H;local r;local A;local f;f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;J={e[f](a(A,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];f=o[2];I=e[o[3]];e[f+1]=I;e[f]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]={};l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];end;elseif r<=20 then local I;local J;local H;local r;local A;local f;f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;J={e[f](a(A,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];f=o[2];I=e[o[3]];e[f+1]=I;e[f]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]={};l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];elseif r==21 then e[o[2]][n[o[3]]]=n[o[5]];else local r,r;local L;local A;local H;local I;local K;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];l=l+o[3];end;elseif r<=34 then if r<=28 then if r<=25 then if r<=23 then local r,r;local K;local A;local H;local I;local L;local r;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];l=l+o[3];elseif r==24 then local J;local H;local r;local A;local I;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f=o[2];I=e[o[3]];e[f+1]=I;e[f]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;J={e[f](a(A,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];if(n[o[2]]>=e[o[5]])then l=l+1;else l=l+o[3];end;else local r;local K,r;local A;local H;local I;local L;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];l=l+o[3];end;elseif r<=26 then if(e[o[2]]==n[o[5]])then l=l+1;else l=l+o[3];end;elseif r==27 then local l=o[2];local n={};local o=0;local d=c;for l=l+1,d do o=o+1;n[o]=e[l];end;local n,d=J(e[l](a(n,1,d-l)));d=d+l-1;o=0;for l=l,d do o=o+1;e[l]=n[o];end;c=d;else local I;local J;local L;local A;local r;local K;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]+n[o[5]];l=l+1;o=d[l];H=o[2];K={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;K[r]=e[o];end;L={e[H](a(K,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=L[r];end;c=A;l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]+n[o[5]];l=l+1;o=d[l];H=o[2];K={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;K[r]=e[o];end;L={e[H](a(K,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=L[r];end;c=A;l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];end;elseif r<=31 then if r<=29 then local r;local K,r;local H;local r;local I;local A;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];A=o[2];I={};r=0;H=A+o[3]-1;for o=A+1,H do r=r+1;I[r]=e[o];end;K,H=J(e[A](a(I,1,H-A)));H=H+A-1;r=0;for o=A,H do r=r+1;e[o]=K[r];end;c=H;l=l+1;o=d[l];A=o[2];I={};r=0;H=c;for o=A+1,H do r=r+1;I[r]=e[o];end;K,H=J(e[A](a(I,1,H-A)));H=H+A-1;r=0;for o=A,H do r=r+1;e[o]=K[r];end;c=H;l=l+1;o=d[l];A=o[2];I={};r=0;H=c;for o=A+1,H do r=r+1;I[r]=e[o];end;K={e[A](a(I,1,H-A))};H=A+o[5]-2;r=0;for o=A,H do r=r+1;e[o]=K[r];end;c=H;l=l+1;o=d[l];if(n[o[2]]>=e[o[5]])then l=l+1;else l=l+o[3];end;elseif r==30 then local r;local K,r;local A;local r;local I;local L;local H;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];H=o[2];L=e[o[3]];e[H+1]=L;e[H]=L[n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;K,A=J(e[H](a(I,1,A-H)));A=A+H-1;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];H=o[2];I={};r=0;A=c;for o=H+1,A do r=r+1;I[r]=e[o];end;K={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];l=l+o[3];else local K;local A;local r;local J;local H;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];I[o[3]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];do return end;end;elseif r<=32 then e[o[2]]=e[o[3]]+e[o[5]];elseif r==33 then e[o[2]][e[o[3]]]=e[o[5]];else local L;local U;local f,f;local K;local H;local f;local A;local r;e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];r=o[2];A={};f=0;H=r+o[3]-1;for o=r+1,H do f=f+1;A[f]=e[o];end;K={e[r](a(A,1,H-r))};H=r+o[5]-2;f=0;for o=r,H do f=f+1;e[o]=K[f];end;c=H;l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];A={};f=0;H=r+o[3]-1;for o=r+1,H do f=f+1;A[f]=e[o];end;K,H=J(e[r](a(A,1,H-r)));H=H+r-1;f=0;for o=r,H do f=f+1;e[o]=K[f];end;c=H;l=l+1;o=d[l];r=o[2];A={};f=0;H=c;for o=r+1,H do f=f+1;A[f]=e[o];end;K={e[r](a(A,1,H-r))};H=r+o[5]-2;f=0;for o=r,H do f=f+1;e[o]=K[f];end;c=H;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];r=o[2];U=e[o[3]];e[r+1]=U;e[r]=U[n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];A={};f=0;H=r+o[3]-1;for o=r+1,H do f=f+1;A[f]=e[o];end;K={e[r](a(A,1,H-r))};H=r+o[5]-2;f=0;for o=r,H do f=f+1;e[o]=K[f];end;c=H;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];H=r+o[3]-2;L={};f=0;for o=r,H do f=f+1;L[f]=e[o];end;do return a(L,1,f)end;end;elseif r<=40 then if r<=37 then if r<=35 then e[o[2]]=I[o[3]];elseif r>36 then e[o[2]]={};else if(e[o[2]]~=n[o[5]])then l=l+1;else l=l+o[3];end;end;elseif r<=38 then if not e[o[2]]then l=l+1;else l=l+o[3];end;elseif r==39 then local d=o[2];local c=o[5];local o=d+2;local n={e[d](e[d+1],e[o])};for l=1,c do e[o+l]=n[l];end;local d=e[d+3];if d then e[o]=d else l=l+1;end;else e[o[2]]=e[o[3]][n[o[5]]];end;elseif r<=43 then if r<=41 then local J;local H;local r;local I;local A;local f;f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];I={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;I[r]=e[o];end;J={e[f](a(I,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];f=o[2];I={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;I[r]=e[o];end;J={e[f](a(I,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];e[o[2]]=#e[o[3]];l=l+1;o=d[l];if(n[o[2]]>=e[o[5]])then l=l+1;else l=l+o[3];end;elseif r==42 then e[o[2]]=e[o[3]];else local d=o[2];local f={};local l=0;local n=c;for o=d+1,n do l=l+1;f[l]=e[o];end;local n={e[d](a(f,1,n-d))};local o=d+o[5]-2;l=0;for o=d,o do l=l+1;e[o]=n[l];end;c=o;end;elseif r<=44 then local J;local K;local H;local f;local A;local r;e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];A={};f=0;H=r+o[3]-1;for o=r+1,H do f=f+1;A[f]=e[o];end;K={e[r](a(A,1,H-r))};H=r+o[5]-2;f=0;for o=r,H do f=f+1;e[o]=K[f];end;c=H;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];H=r+o[3]-2;J={};f=0;for o=r,H do f=f+1;J[f]=e[o];end;do return a(J,1,f)end;elseif r>45 then local r;local K,r;local A;local r;local I;local L;local H;e[o[2]]={};l=l+1;o=d[l];e[o[2]]={};l=l+1;o=d[l];e[o[2]]={};l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];L=e[o[3]];e[H+1]=L;e[H]=L[n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;K,A=J(e[H](a(I,1,A-H)));A=A+H-1;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];H=o[2];I={};r=0;A=c;for o=H+1,A do r=r+1;I[r]=e[o];end;K={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];l=l+o[3];else local I;local K;local L;local A;local r;local J;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]+n[o[5]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;L={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=L[r];end;c=A;l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];K=o[3];I=e[K]for o=K+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]+n[o[5]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;L={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=L[r];end;c=A;l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];K=o[3];I=e[K]for o=K+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];end;elseif r<=70 then if r<=58 then if r<=52 then if r<=49 then if r<=47 then e[o[2]][n[o[3]]]=n[o[5]];elseif r==48 then if(e[o[2]]>=e[o[5]])then l=l+1;else l=l+o[3];end;else local A;local J;local H;local r;local I;local f;f=o[2];I={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;I[r]=e[o];end;J={e[f](a(I,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]={};l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];end;elseif r<=50 then local l=o[2];local n={};local d=0;local o=l+o[3]-1;for o=l+1,o do d=d+1;n[d]=e[o];end;e[l](a(n,1,o-l));c=l;elseif r>51 then local A;local H;local I;local r;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;e[r](a(I,1,A-r));c=r;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;e[r](a(I,1,A-r));c=r;else local K;local A;local H;local J;local I;local r;r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];if not e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=55 then if r<=53 then e[o[2]]=e[o[3]]+n[o[5]];elseif r==54 then local d=o[3];local l=e[d]for o=d+1,o[5]do l=l..e[o];end;e[o[2]]=l;else local a;local c;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];c=o[2];a=e[o[3]];e[c+1]=a;e[c]=a[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];end;elseif r<=56 then local l=o[2];local n=l+o[3]-2;local d={};local o=0;for l=l,n do o=o+1;d[o]=e[l];end;do return a(d,1,o)end;elseif r==57 then local d=o[2];local l=e[o[3]];e[d+1]=l;e[d]=l[n[o[5]]];else e[o[2]]=e[o[3]][n[o[5]]];end;elseif r<=64 then if r<=61 then if r<=59 then if(e[o[2]]>=e[o[5]])then l=l+1;else l=l+o[3];end;elseif r==60 then local K;local A;local H;local J;local I;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]]=#e[o[3]];l=l+1;o=d[l];if(e[o[2]]==n[o[5]])then l=l+1;else l=l+o[3];end;else local r;local K,r;local A;local H;local I;local L;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=(o[3]~=0);l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];K,A={e[r]()};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;end;elseif r<=62 then local n=o[2];local d=c;local l={};local o=0;for d=n,d do o=o+1;l[o]=e[d];end;do return a(l,1,o)end;elseif r==63 then local d=o[2];local f={};local l=0;local n=d+o[3]-1;for o=d+1,n do l=l+1;f[l]=e[o];end;local n={e[d](a(f,1,n-d))};local o=d+o[5]-2;l=0;for o=d,o do l=l+1;e[o]=n[l];end;c=o;else if(n[o[2]]<e[o[5]])then l=l+1;else l=l+o[3];end;end;elseif r<=67 then if r<=65 then local J;local A;local r;local I;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;elseif r>66 then local J;local H;local r;local A;local I;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f=o[2];I=e[o[3]];e[f+1]=I;e[f]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;J={e[f](a(A,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;else local J;local H;local r;local I;local A;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];I={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;I[r]=e[o];end;J={e[f](a(I,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];if not e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=68 then local J;local K;local A;local H;local I;local r;e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;elseif r>69 then e[o[2]]=e[o[3]]*e[o[5]];else local H;local r;local A;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=(o[3]~=0);l=l+1;o=d[l];f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;e[f](a(A,1,H-f));c=f;l=l+1;o=d[l];l=l+o[3];end;elseif r<=82 then if r<=76 then if r<=73 then if r<=71 then local d=o[2];local n=c;local l={};local o=0;for d=d,n do o=o+1;l[o]=e[d];end;do return a(l,1,o)end;elseif r>72 then local A;local I;local r;local H;local f;f=o[2];H={};r=0;I=f+o[3]-1;for o=f+1,I do r=r+1;H[r]=e[o];end;e[f](a(H,1,I-f));c=f;l=l+1;o=d[l];f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]={};l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];else e[o[2]][n[o[3]]]=e[o[5]];end;elseif r<=74 then f[n[o[3]]]=e[o[2]];elseif r>75 then e[o[2]]();c=A;else local J;local H;local r;local A;local I;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f=o[2];I=e[o[3]];e[f+1]=I;e[f]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;J={e[f](a(A,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=79 then if r<=77 then e[o[2]]=(o[3]~=0);elseif r>78 then local L;local A;local H;local K;local J;local r;e[o[2]]={};l=l+1;o=d[l];I[o[3]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;L={e[r](a(K,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;L={e[r](a(K,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];e[o[2]]=#e[o[3]];l=l+1;o=d[l];if(n[o[2]]>=e[o[5]])then l=l+1;else l=l+o[3];end;else local J;local A;local r;local I;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=80 then local J;local A;local r;local I;local H;H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];l=l+o[3];elseif r==81 then local J;local H;local r;local I;local A;local f;f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];I={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;I[r]=e[o];end;J={e[f](a(I,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];if(e[o[2]]~=n[o[5]])then l=l+1;else l=l+o[3];end;else e[o[2]]=n[o[3]];end;elseif r<=88 then if r<=85 then if r<=83 then local J;local H;local r;local I;local A;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];I={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;I[r]=e[o];end;J={e[f](a(I,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;elseif r>84 then local r;local J;local r;local H;local I,A;local H;H=o[2];I,A={e[H]()};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=I[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;I={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=I[r];end;c=A;l=l+1;o=d[l];l=l+o[3];else local a=D[o[3]];local c;local n={};c=M({},{__index=function(l,o)local o=n[o];return o[1][o[2]];end,__newindex=function(e,o,l)local o=n[o]o[1][o[2]]=l;end;});for c=1,o[5]do l=l+1;local o=d[l];if o[1]==123 then n[c-1]={e,o[3]};else n[c-1]={I,o[3]};end;Q[#Q+1]=n;end;e[o[2]]=U(a,c,f);end;elseif r<=86 then e[o[2]]=e[o[3]]+e[o[5]];elseif r==87 then if(n[o[2]]>=e[o[5]])then l=l+1;else l=l+o[3];end;else local f;local I,f;local H;local f;local A;local K;local r;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];r=o[2];A={};f=0;H=r+o[3]-1;for o=r+1,H do f=f+1;A[f]=e[o];end;I,H=J(e[r](a(A,1,H-r)));H=H+r-1;f=0;for o=r,H do f=f+1;e[o]=I[f];end;c=H;l=l+1;o=d[l];r=o[2];A={};f=0;H=c;for o=r+1,H do f=f+1;A[f]=e[o];end;I={e[r](a(A,1,H-r))};H=r+o[5]-2;f=0;for o=r,H do f=f+1;e[o]=I[f];end;c=H;l=l+1;o=d[l];l=l+o[3];end;elseif r<=91 then if r<=89 then e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];if(e[o[2]]~=e[o[5]])then l=l+1;else l=l+o[3];end;elseif r>90 then local d=o[2];local n={};local l=0;local o=d+o[3]-1;for o=d+1,o do l=l+1;n[l]=e[o];end;local n,o=J(e[d](a(n,1,o-d)));o=o+d-1;l=0;for o=d,o do l=l+1;e[o]=n[l];end;c=o;else local L;local K;local A;local H;local J;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];if not e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=92 then local d=o[2];local n=o[5];local o=d+2;local c={e[d](e[d+1],e[o])};for l=1,n do e[o+l]=c[l];end;local d=e[d+3];if d then e[o]=d else l=l+1;end;elseif r>93 then local r,r;local K;local A;local H;local I;local L;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];l=l+o[3];else local d=o[2];local l=e[o[3]];e[d+1]=l;e[d]=l[n[o[5]]];end;elseif r<=141 then if r<=117 then if r<=105 then if r<=99 then if r<=96 then if r>95 then local A;local H;local I;local r;f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;e[r](a(I,1,A-r));c=r;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;e[r](a(I,1,A-r));c=r;else local K;local A;local H;local I;local J;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];if not e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=97 then local K;local A;local r;local J;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];if not e[o[2]]then l=l+1;else l=l+o[3];end;elseif r==98 then if e[o[2]]then l=l+1;else l=l+o[3];end;else e[o[2]]=e[o[3]]-e[o[5]];end;elseif r<=102 then if r<=100 then if(e[o[2]]==e[o[5]])then l=l+1;else l=l+o[3];end;elseif r==101 then local r;local K,r;local A;local r;local I;local L;local H;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];L=e[o[3]];e[H+1]=L;e[H]=L[n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;K,A=J(e[H](a(I,1,A-H)));A=A+H-1;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];H=o[2];I={};r=0;A=c;for o=H+1,A do r=r+1;I[r]=e[o];end;K={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];l=l+o[3];else local K;local A;local H;local J;local I;local r;r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];if(e[o[2]]~=e[o[5]])then l=l+1;else l=l+o[3];end;end;elseif r<=103 then local K;local I;local A;local H;local J;local r;r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;e[r](a(J,1,A-r));c=r;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];elseif r>104 then do return end;else local I;local J;local L;local A;local H;local K;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]-e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]-e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]*e[o[5]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;L={e[r](a(K,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;L={e[r](a(K,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]-e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;L={e[r](a(K,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]]={};l=l+1;o=d[l];e[o[2]][e[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]]=e[o[3]][e[o[5]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]]=e[o[3]][e[o[5]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]]=e[o[3]][e[o[5]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;e[r](a(K,1,A-r));c=r;l=l+1;o=d[l];l=l+o[3];end;elseif r<=111 then if r<=108 then if r<=106 then local K;local A;local H;local I;local J;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=(o[3]~=0);l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=(o[3]~=0);l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;e[r](a(I,1,A-r));c=r;elseif r==107 then e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];if(e[o[2]]~=e[o[5]])then l=l+1;else l=l+o[3];end;else local r,r;local K;local A;local H;local I;local L;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];l=l+o[3];end;elseif r<=109 then e[o[2]]=U(D[o[3]],nil,f);elseif r==110 then local r=D[o[3]];local a;local n={};a=M({},{__index=function(l,o)local o=n[o];return o[1][o[2]];end,__newindex=function(e,o,l)local o=n[o]o[1][o[2]]=l;end;});for c=1,o[5]do l=l+1;local o=d[l];if o[1]==123 then n[c-1]={e,o[3]};else n[c-1]={I,o[3]};end;Q[#Q+1]=n;end;e[o[2]]=U(r,a,f);else local I;local H;local A;local r;f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];A={};H=0;I=r+o[3]-1;for o=r+1,I do H=H+1;A[H]=e[o];end;e[r](a(A,1,I-r));c=r;l=l+1;o=d[l];do return end;end;elseif r<=114 then if r<=112 then e[o[2]]=f[n[o[3]]];elseif r==113 then e[o[2]]();c=A;else if(e[o[2]]~=n[o[5]])then l=l+1;else l=l+o[3];end;end;elseif r<=115 then e[o[2]]=e[o[3]]+n[o[5]];elseif r==116 then e[o[2]]=n[o[3]];else local r;local a;f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]();c=a;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];a=o[2];r=e[o[3]];e[a+1]=r;e[a]=r[n[o[5]]];end;elseif r<=129 then if r<=123 then if r<=120 then if r<=118 then if(e[o[2]]~=e[o[5]])then l=l+1;else l=l+o[3];end;elseif r==119 then local l=o[2];local n,d={e[l]()};local d=l+o[5]-2;local o=0;for l=l,d do o=o+1;e[l]=n[o];end;c=d;else local r;local J;local r;local H;local I,A;local H;H=o[2];I,A={e[H]()};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=I[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;I={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=I[r];end;c=A;l=l+1;o=d[l];l=l+o[3];end;elseif r<=121 then e[o[2]]={};elseif r>122 then e[o[2]]=e[o[3]];else local r;local A;local f;local H;local n;e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];n=o[2];H={};f=n+o[3]-1;for o=n+1,f do H[#H+1]=e[o];end;do return e[n](a(H,1,f-n))end;l=l+1;o=d[l];n=o[2];f=c;A={};r=0;for o=n,f do r=r+1;A[r]=e[o];end;do return a(A,1,r)end;l=l+1;o=d[l];do return end;end;elseif r<=126 then if r<=124 then local K;local A;local r;local J;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;elseif r==125 then e[o[2]][n[o[3]]]=e[o[5]];else local J;local A;local r;local I;local K;local H;H=o[2];K=e[o[3]];e[H+1]=K;e[H]=K[n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]]-e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];if(e[o[2]]>=e[o[5]])then l=l+1;else l=l+o[3];end;end;elseif r<=127 then local r;local K,r;local A;local r;local I;local L;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];L=e[o[3]];e[H+1]=L;e[H]=L[n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;K,A=J(e[H](a(I,1,A-H)));A=A+H-1;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];H=o[2];I={};r=0;A=c;for o=H+1,A do r=r+1;I[r]=e[o];end;K={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];l=l+o[3];elseif r==128 then e[o[2]]();c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];do return end;else local K;local J;local A;local r;local I;local H;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]={};l=l+1;o=d[l];e[o[2]]={};l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];H=o[2];K=e[o[3]];e[H+1]=K;e[H]=K[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;end;elseif r<=135 then if r<=132 then if r<=130 then local l=o[2];local d={};local o=l+o[3]-1;for o=l+1,o do d[#d+1]=e[o];end;do return e[l](a(d,1,o-l))end;elseif r==131 then e[o[2]][e[o[3]]]=e[o[5]];else local J;local A;local r;local I;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];end;elseif r<=133 then local J;local A;local H;local I;local K;local r;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;J={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=J[H];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;J={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=J[H];end;c=A;l=l+1;o=d[l];l=l+o[3];elseif r==134 then if(e[o[2]]~=e[o[5]])then l=l+1;else l=l+o[3];end;else local J;local H;local r;local A;local I;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f=o[2];I=e[o[3]];e[f+1]=I;e[f]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;J={e[f](a(A,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=138 then if r<=136 then local l=o[2];local d={};local o=0;local n=c;for l=l+1,n do o=o+1;d[o]=e[l];end;local n,d=J(e[l](a(d,1,n-l)));d=d+l-1;o=0;for l=l,d do o=o+1;e[l]=n[o];end;c=d;elseif r>137 then if(n[o[2]]<e[o[5]])then l=l+1;else l=l+o[3];end;else local J;local A;local r;local I;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=139 then local r,r;local L;local A;local H;local I;local K;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];l=l+o[3];elseif r>140 then e[o[2]]=e[o[3]]*e[o[5]];else I[o[3]]=e[o[2]];end;elseif r<=165 then if r<=153 then if r<=147 then if r<=144 then if r<=142 then local J;local A;local r;local I;local H;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;elseif r>143 then local K;local A;local H;local I;local J;local r;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;else local K;local A;local H;local J;local I;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];if e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=145 then local L;local A;local H;local K;local J;local r;e[o[2]]={};l=l+1;o=d[l];I[o[3]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;L={e[r](a(K,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;L={e[r](a(K,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];e[o[2]]=#e[o[3]];l=l+1;o=d[l];if(n[o[2]]<e[o[5]])then l=l+1;else l=l+o[3];end;elseif r==146 then local I;local K;local L;local A;local r;local J;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]+n[o[5]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;L={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=L[r];end;c=A;l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];K=o[3];I=e[K]for o=K+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]+n[o[5]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;L={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=L[r];end;c=A;l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];K=o[3];I=e[K]for o=K+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];l=l+o[3];else do return end;end;elseif r<=150 then if r<=148 then local L;local U;local f,f;local K;local H;local f;local A;local r;e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];A={};f=0;H=r+o[3]-1;for o=r+1,H do f=f+1;A[f]=e[o];end;K={e[r](a(A,1,H-r))};H=r+o[5]-2;f=0;for o=r,H do f=f+1;e[o]=K[f];end;c=H;l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];r=o[2];A={};f=0;H=r+o[3]-1;for o=r+1,H do f=f+1;A[f]=e[o];end;K,H=J(e[r](a(A,1,H-r)));H=H+r-1;f=0;for o=r,H do f=f+1;e[o]=K[f];end;c=H;l=l+1;o=d[l];r=o[2];A={};f=0;H=c;for o=r+1,H do f=f+1;A[f]=e[o];end;K={e[r](a(A,1,H-r))};H=r+o[5]-2;f=0;for o=r,H do f=f+1;e[o]=K[f];end;c=H;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];r=o[2];U=e[o[3]];e[r+1]=U;e[r]=U[n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];A={};f=0;H=r+o[3]-1;for o=r+1,H do f=f+1;A[f]=e[o];end;K={e[r](a(A,1,H-r))};H=r+o[5]-2;f=0;for o=r,H do f=f+1;e[o]=K[f];end;c=H;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];H=r+o[3]-2;L={};f=0;for o=r,H do f=f+1;L[f]=e[o];end;do return a(L,1,f)end;elseif r>149 then local I;local J;local L;local A;local r;local K;local H;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]+n[o[5]];l=l+1;o=d[l];H=o[2];K={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;K[r]=e[o];end;L={e[H](a(K,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=L[r];end;c=A;l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]+n[o[5]];l=l+1;o=d[l];H=o[2];K={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;K[r]=e[o];end;L={e[H](a(K,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=L[r];end;c=A;l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];l=l+o[3];else local l=o[2];local n,d={e[l]()};local d=l+o[5]-2;local o=0;for l=l,d do o=o+1;e[l]=n[o];end;c=d;end;elseif r<=151 then if e[o[2]]then l=l+1;else l=l+o[3];end;elseif r==152 then local r,r;local L;local A;local H;local I;local K;local r;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];l=l+o[3];else local l=o[2];local n={};local d=0;local o=l+o[3]-1;for o=l+1,o do d=d+1;n[d]=e[o];end;e[l](a(n,1,o-l));c=l;end;elseif r<=159 then if r<=156 then if r<=154 then local f;local I,f;local H;local r;local A;local K;local f;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f=o[2];K=e[o[3]];e[f+1]=K;e[f]=K[n[o[5]]];l=l+1;o=d[l];f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;I,H=J(e[f](a(A,1,H-f)));H=H+f-1;r=0;for o=f,H do r=r+1;e[o]=I[r];end;c=H;l=l+1;o=d[l];f=o[2];A={};r=0;H=c;for o=f+1,H do r=r+1;A[r]=e[o];end;I={e[f](a(A,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=I[r];end;c=H;l=l+1;o=d[l];l=l+o[3];elseif r>155 then l=l+o[3];else e[o[2]]=f[n[o[3]]];end;elseif r<=157 then local I;local J;local H;local r;local A;local f;f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;J={e[f](a(A,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];f=o[2];I=e[o[3]];e[f+1]=I;e[f]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;e[f](a(A,1,H-f));c=f;l=l+1;o=d[l];f=o[2];I=e[o[3]];e[f+1]=I;e[f]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];A={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;A[r]=e[o];end;e[f](a(A,1,H-f));c=f;l=l+1;o=d[l];f=o[2];I=e[o[3]];e[f+1]=I;e[f]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]={};elseif r>158 then e[o[2]]=U(D[o[3]],nil,f);else local l=o[2];local d={};local o=l+o[3]-1;for o=l+1,o do d[#d+1]=e[o];end;do return e[l](a(d,1,o-l))end;end;elseif r<=162 then if r<=160 then local J;local A;local r;local I;local H;H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];l=l+o[3];elseif r>161 then if(n[o[2]]>=e[o[5]])then l=l+1;else l=l+o[3];end;else local K;local A;local H;local J;local I;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];end;elseif r<=163 then local r;local K,r;local A;local H;local I;local L;local r;e[o[2]]();c=r;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];l=l+o[3];elseif r==164 then e[o[2]]=#e[o[3]];else local J;local H;local r;local I;local A;local f;f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];f=o[2];I={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;I[r]=e[o];end;J={e[f](a(I,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];f=o[2];A=e[o[3]];e[f+1]=A;e[f]=A[n[o[5]]];l=l+1;o=d[l];f=o[2];I={};r=0;H=f+o[3]-1;for o=f+1,H do r=r+1;I[r]=e[o];end;J={e[f](a(I,1,H-f))};H=f+o[5]-2;r=0;for o=f,H do r=r+1;e[o]=J[r];end;c=H;l=l+1;o=d[l];e[o[2]]=#e[o[3]];l=l+1;o=d[l];if(n[o[2]]>=e[o[5]])then l=l+1;else l=l+o[3];end;end;elseif r<=177 then if r<=171 then if r<=168 then if r<=166 then f[n[o[3]]]=e[o[2]];elseif r>167 then local I;local H;local A;local r;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];A={};H=0;I=r+o[3]-1;for o=r+1,I do H=H+1;A[H]=e[o];end;e[r](a(A,1,I-r));c=r;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];r=o[2];A={};H=0;I=r+o[3]-1;for o=r+1,I do H=H+1;A[H]=e[o];end;e[r](a(A,1,I-r));c=r;else local K;local A;local H;local J;local I;local r;r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I=e[o[3]];e[r+1]=I;e[r]=I[n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];J={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;J[H]=e[o];end;K={e[r](a(J,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];if not e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=169 then local r,r;local K;local A;local H;local I;local L;local r;e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];L=e[o[3]];e[r+1]=L;e[r]=L[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];l=l+o[3];elseif r>170 then local L;local K;local A;local r;local J;local H;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];L=e[o[3]];e[H+1]=L;e[H]=L[n[o[5]]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];L=e[o[3]];e[H+1]=L;e[H]=L[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];if not e[o[2]]then l=l+1;else l=l+o[3];end;else local J;local A;local r;local I;local H;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];end;elseif r<=174 then if r<=172 then if not e[o[2]]then l=l+1;else l=l+o[3];end;elseif r==173 then e[o[2]]();c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]();c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]();c=A;l=l+1;o=d[l];l=l+o[3];else local d=o[3];local l=e[d]for o=d+1,o[5]do l=l..e[o];end;e[o[2]]=l;end;elseif r<=175 then local d=o[2];local n=d+o[3]-2;local l={};local o=0;for d=d,n do o=o+1;l[o]=e[d];end;do return a(l,1,o)end;elseif r==176 then local J;local A;local r;local I;local H;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];I={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;I[r]=e[o];end;J={e[H](a(I,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=J[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];else local K;local A;local H;local I;local J;local r;r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];if not e[o[2]]then l=l+1;else l=l+o[3];end;end;elseif r<=183 then if r<=180 then if r<=178 then local d=o[2];local n={};local l=0;local f=c;for o=d+1,f do l=l+1;n[l]=e[o];end;local n={e[d](a(n,1,f-d))};local o=d+o[5]-2;l=0;for o=d,o do l=l+1;e[o]=n[l];end;c=o;elseif r==179 then local d=o[2];local f={};local l=0;local n=d+o[3]-1;for o=d+1,n do l=l+1;f[l]=e[o];end;local n={e[d](a(f,1,n-d))};local o=d+o[5]-2;l=0;for o=d,o do l=l+1;e[o]=n[l];end;c=o;else local r,r;local L;local A;local H;local I;local K;local r;r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];l=l+o[3];end;elseif r<=181 then local I;local J;local L;local A;local H;local K;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]-e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]-e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]*e[o[5]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;L={e[r](a(K,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;L={e[r](a(K,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]]-e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;L={e[r](a(K,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]]={};l=l+1;o=d[l];e[o[2]][e[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]]=e[o[3]][e[o[5]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]]=e[o[3]][e[o[5]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];J=o[3];I=e[J]for o=J+1,o[5]do I=I..e[o];end;e[o[2]]=I;l=l+1;o=d[l];e[o[2]]=e[o[3]][e[o[5]]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];r=o[2];K={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;K[H]=e[o];end;e[r](a(K,1,A-r));c=r;elseif r==182 then e[o[2]]();c=A;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]();c=A;l=l+1;o=d[l];e[o[2]]=(o[3]~=0);l=l+1;o=d[l];I[o[3]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=(o[3]~=0);l=l+1;o=d[l];f[n[o[3]]]=e[o[2]];else e[o[2]]=(o[3]~=0);end;elseif r<=186 then if r<=184 then local K;local A;local H;local I;local J;local r;r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];if(e[o[2]]==n[o[5]])then l=l+1;else l=l+o[3];end;elseif r==185 then local r,r;local L;local A;local H;local I;local K;local r;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;L,A=J(e[r](a(I,1,A-r)));A=A+r-1;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];r=o[2];I={};H=0;A=c;for o=r+1,A do H=H+1;I[H]=e[o];end;L={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=L[H];end;c=A;l=l+1;o=d[l];l=l+o[3];else local K;local A;local H;local I;local J;local r;r=o[2];J=e[o[3]];e[r+1]=J;e[r]=J[n[o[5]]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;K={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=K[H];end;c=A;l=l+1;o=d[l];if(e[o[2]]==n[o[5]])then l=l+1;else l=l+o[3];end;end;elseif r<=187 then local K;local A;local r;local J;local H;e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];I[o[3]]=e[o[2]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];H=o[2];J={};r=0;A=H+o[3]-1;for o=H+1,A do r=r+1;J[r]=e[o];end;K={e[H](a(J,1,A-H))};A=H+o[5]-2;r=0;for o=H,A do r=r+1;e[o]=K[r];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=I[o[3]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];do return end;elseif r>188 then local K;local J;local A;local H;local I;local r;e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;J={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=J[H];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]][n[o[3]]]=n[o[5]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];K=e[o[3]];e[r+1]=K;e[r]=K[n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;J={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=J[H];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=n[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;J={e[r](a(I,1,A-r))};A=r+o[5]-2;H=0;for o=r,A do H=H+1;e[o]=J[H];end;c=A;l=l+1;o=d[l];e[o[2]][n[o[3]]]=e[o[5]];l=l+1;o=d[l];do return end;else local A;local H;local I;local r;e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;e[r](a(I,1,A-r));c=r;l=l+1;o=d[l];e[o[2]]=f[n[o[3]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]][n[o[5]]];l=l+1;o=d[l];e[o[2]]=e[o[3]];l=l+1;o=d[l];r=o[2];I={};H=0;A=r+o[3]-1;for o=r+1,A do H=H+1;I[H]=e[o];end;e[r](a(I,1,A-r));c=r;end;l=l+1;end;end;end;return U(S(),{},O())();
end)

LegacyHubBut.Name = "LegacyHubBut"
LegacyHubBut.Parent = FrixonHubScripts
LegacyHubBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
LegacyHubBut.BorderSizePixel = 0
LegacyHubBut.Position = UDim2.new(0.273770511, 0, 0.562060893, 0)
LegacyHubBut.Size = UDim2.new(0, 122, 0, 49)
LegacyHubBut.Font = Enum.Font.SourceSans
LegacyHubBut.Text = "Legacy Hub"
LegacyHubBut.TextColor3 = Color3.fromRGB(255, 255, 255)
LegacyHubBut.TextSize = 14.000
LegacyHubBut.MouseButton1Down:connect(function() 
	loadstring(game:GetObjects("rbxassetid://1683559539")[1].Source)()
end)

OwlHubBut.Name = "OwlHubBut"
OwlHubBut.Parent = FrixonHubScripts
OwlHubBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
OwlHubBut.BorderSizePixel = 0
OwlHubBut.Position = UDim2.new(0.518032789, 0, 0.562060893, 0)
OwlHubBut.Size = UDim2.new(0, 122, 0, 49)
OwlHubBut.Font = Enum.Font.SourceSans
OwlHubBut.Text = "Owl Hub"
OwlHubBut.TextColor3 = Color3.fromRGB(255, 255, 255)
OwlHubBut.TextSize = 14.000
OwlHubBut.MouseButton1Down:connect(function() 
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

MM2GUIBut.Name = "MM2GUIBut"
MM2GUIBut.Parent = FrixonHubScripts
MM2GUIBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MM2GUIBut.BorderSizePixel = 0
MM2GUIBut.Position = UDim2.new(0.768852472, 0, 0.562060893, 0)
MM2GUIBut.Size = UDim2.new(0, 122, 0, 49)
MM2GUIBut.Font = Enum.Font.SourceSans
MM2GUIBut.Text = "MM2 GUI"
MM2GUIBut.TextColor3 = Color3.fromRGB(255, 255, 255)
MM2GUIBut.TextSize = 14.000
MM2GUIBut.MouseButton1Down:connect(function() 
	loadstring(game:HttpGet("https://pastebin.com/raw/0CeMBTKy"))();
end)

MadPaintballBut.Name = "MadPaintballBut"
MadPaintballBut.Parent = FrixonHubScripts
MadPaintballBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MadPaintballBut.BorderSizePixel = 0
MadPaintballBut.Position = UDim2.new(0.768852472, 0, 0.728337228, 0)
MadPaintballBut.Size = UDim2.new(0, 122, 0, 49)
MadPaintballBut.Font = Enum.Font.SourceSans
MadPaintballBut.Text = "Mad Paintball GUI"
MadPaintballBut.TextColor3 = Color3.fromRGB(255, 255, 255)
MadPaintballBut.TextSize = 14.000
MadPaintballBut.MouseButton1Down:connect(function() 
	-- Made By Elite Wolfie#5889 (V3rm: https://v3rmillion.net/showthread.php?tid=785959)
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local FrameSide = Instance.new("Frame")
local FrameSide_2 = Instance.new("Frame")
local FrameUp = Instance.new("Frame")
local FrameDown = Instance.new("Frame")
local GetAllClothes = Instance.new("TextButton")
local GetAllWeapons = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local Get250kRubbies = Instance.new("TextButton")
local Aimbot = Instance.new("TextButton")
local Information = Instance.new("TextButton")
local FrameCloseOpen = Instance.new("Frame")
local OpenClose = Instance.new("TextButton")
local InfoFrame = Instance.new("Frame")
local FrameSide2 = Instance.new("Frame")
local FrameSide1 = Instance.new("Frame")
local FrameUp_2 = Instance.new("Frame")
local FrameDown_2 = Instance.new("Frame")
local Cube4 = Instance.new("Frame")
local Cube3 = Instance.new("Frame")
local Cube2 = Instance.new("Frame")
local Cube1 = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Informations = Instance.new("TextLabel")
--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
MainFrame.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
MainFrame.Position = UDim2.new(0.220795035, 0, 0.0643906593, 0)
MainFrame.Size = UDim2.new(0, 278, 0, 121)
MainFrame.Visible = false

FrameSide.Name = "FrameSide"
FrameSide.Parent = MainFrame
FrameSide.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameSide.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameSide.Position = UDim2.new(-0.0762155056, 0, -0.17950362, 0)
FrameSide.Size = UDim2.new(0, 12, 0, 164)

FrameSide_2.Name = "FrameSide"
FrameSide_2.Parent = MainFrame
FrameSide_2.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameSide_2.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameSide_2.Position = UDim2.new(1.02626586, 0, -0.179503635, 0)
FrameSide_2.Size = UDim2.new(0, 12, 0, 164)

FrameUp.Name = "FrameUp"
FrameUp.Parent = MainFrame
FrameUp.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameUp.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameUp.Position = UDim2.new(-0.0292488337, 0, -0.17950359, 0)
FrameUp.Size = UDim2.new(0, 292, 0, 14)

FrameDown.Name = "FrameDown"
FrameDown.Parent = MainFrame
FrameDown.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameDown.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameDown.Position = UDim2.new(-0.0292487741, 0, 1.06533587, 0)
FrameDown.Size = UDim2.new(0, 292, 0, 14)

GetAllClothes.Name = "Get All Clothes"
GetAllClothes.Parent = MainFrame
GetAllClothes.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
GetAllClothes.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
GetAllClothes.Position = UDim2.new(0.0652173907, 0, 0.05785124, 0)
GetAllClothes.Size = UDim2.new(0, 101, 0, 31)
GetAllClothes.Font = Enum.Font.SciFi
GetAllClothes.Text = "Get All Clothes"
GetAllClothes.TextColor3 = Color3.new(0.458824, 0.458824, 0.458824)
GetAllClothes.TextSize = 14

GetAllWeapons.Name = "Get All Weapons"
GetAllWeapons.Parent = MainFrame
GetAllWeapons.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
GetAllWeapons.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
GetAllWeapons.Position = UDim2.new(0.0652173907, 0, 0.46280992, 0)
GetAllWeapons.Size = UDim2.new(0, 101, 0, 31)
GetAllWeapons.Font = Enum.Font.SciFi
GetAllWeapons.Text = "Get All Weapons"
GetAllWeapons.TextColor3 = Color3.new(0.458824, 0.458824, 0.458824)
GetAllWeapons.TextSize = 14

Credits.Name = "Credits"
Credits.Parent = MainFrame
Credits.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Credits.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Credits.Position = UDim2.new(0.428526729, 0, 0.797855616, 0)
Credits.Size = UDim2.new(0, 157, 0, 24)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Made By Elite Wolfie#5889"
Credits.TextColor3 = Color3.new(0.45098, 0.45098, 0.45098)
Credits.TextSize = 14

Get250kRubbies.Name = "Get 250k Rubbies"
Get250kRubbies.Parent = MainFrame
Get250kRubbies.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Get250kRubbies.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Get250kRubbies.Position = UDim2.new(0.579710245, 0, 0.0578512251, 0)
Get250kRubbies.Size = UDim2.new(0, 106, 0, 31)
Get250kRubbies.Font = Enum.Font.SciFi
Get250kRubbies.Text = "Get 250k Rubies"
Get250kRubbies.TextColor3 = Color3.new(0.458824, 0.458824, 0.458824)
Get250kRubbies.TextSize = 14

Aimbot.Name = "Aimbot"
Aimbot.Parent = MainFrame
Aimbot.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Aimbot.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Aimbot.Position = UDim2.new(0.577097237, 0, 0.461196572, 0)
Aimbot.Size = UDim2.new(0, 106, 0, 31)
Aimbot.Font = Enum.Font.SciFi
Aimbot.Text = "Aimbot"
Aimbot.TextColor3 = Color3.new(0.462745, 0.462745, 0.462745)
Aimbot.TextSize = 14

Information.Name = "Information"
Information.Parent = MainFrame
Information.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Information.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Information.Position = UDim2.new(0.0647481978, 0, 0.785123944, 0)
Information.Size = UDim2.new(0, 51, 0, 25)
Information.Font = Enum.Font.SourceSans
Information.Text = "Info"
Information.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Information.TextSize = 14

FrameCloseOpen.Name = "FrameClose/Open"
FrameCloseOpen.Parent = ScreenGui
FrameCloseOpen.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameCloseOpen.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameCloseOpen.Position = UDim2.new(0, 0, 0.286240786, 0)
FrameCloseOpen.Size = UDim2.new(0, 43, 0, 31)

OpenClose.Name = "Open/Close"
OpenClose.Parent = FrameCloseOpen
OpenClose.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
OpenClose.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
OpenClose.Position = UDim2.new(0.037712574, 0, 0.0322580934, 0)
OpenClose.Size = UDim2.new(0, 39, 0, 28)
OpenClose.Font = Enum.Font.SciFi
OpenClose.Text = "Open"
OpenClose.TextColor3 = Color3.new(0.47451, 0.47451, 0.47451)
OpenClose.TextSize = 14

InfoFrame.Name = "InfoFrame"
InfoFrame.Parent = ScreenGui
InfoFrame.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
InfoFrame.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
InfoFrame.Position = UDim2.new(0.630421102, 0, 0.36291647, 0)
InfoFrame.Size = UDim2.new(0, 246, 0, 123)
InfoFrame.Visible = false

FrameSide2.Name = "FrameSide2"
FrameSide2.Parent = InfoFrame
FrameSide2.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameSide2.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameSide2.Position = UDim2.new(1.0268327, 0, 0, 0)
FrameSide2.Size = UDim2.new(0, 9, 0, 123)

FrameSide1.Name = "FrameSide1"
FrameSide1.Parent = InfoFrame
FrameSide1.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameSide1.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameSide1.Position = UDim2.new(-0.0637494847, 0, 0, 0)
FrameSide1.Size = UDim2.new(0, 9, 0, 123)

FrameUp_2.Name = "FrameUp"
FrameUp_2.Parent = InfoFrame
FrameUp_2.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameUp_2.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameUp_2.Position = UDim2.new(-0.00143457425, 0, -0.116666719, 0)
FrameUp_2.Size = UDim2.new(0, 246, 0, 8)

FrameDown_2.Name = "FrameDown"
FrameDown_2.Parent = InfoFrame
FrameDown_2.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameDown_2.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
FrameDown_2.Position = UDim2.new(-0.0014345739, 0, 1.05813003, 0)
FrameDown_2.Size = UDim2.new(0, 246, 0, 8)

Cube4.Name = "Cube4"
Cube4.Parent = InfoFrame
Cube4.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Cube4.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Cube4.Position = UDim2.new(1.02683282, 0, 1.05813003, 0)
Cube4.Size = UDim2.new(0, 9, 0, 8)

Cube3.Name = "Cube3"
Cube3.Parent = InfoFrame
Cube3.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Cube3.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Cube3.Position = UDim2.new(-0.0637494847, 0, 1.05813003, 0)
Cube3.Size = UDim2.new(0, 9, 0, 8)

Cube2.Name = "Cube2"
Cube2.Parent = InfoFrame
Cube2.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Cube2.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Cube2.Position = UDim2.new(1.0268327, 0, -0.116666734, 0)
Cube2.Size = UDim2.new(0, 9, 0, 8)

Cube1.Name = "Cube1"
Cube1.Parent = InfoFrame
Cube1.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Cube1.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Cube1.Position = UDim2.new(-0.0637494922, 0, -0.116666719, 0)
Cube1.Size = UDim2.new(0, 9, 0, 8)

Close.Name = "Close"
Close.Parent = InfoFrame
Close.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Close.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Close.Position = UDim2.new(0.389947653, 0, 1.05813003, 0)
Close.Size = UDim2.new(0, 53, 0, 18)
Close.Font = Enum.Font.SciFi
Close.Text = "Close"
Close.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Close.TextSize = 14

Informations.Name = "Informations"
Informations.Parent = InfoFrame
Informations.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Informations.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Informations.Position = UDim2.new(0.183724016, 0, 0.0820099711, 0)
Informations.Size = UDim2.new(0, 154, 0, 102)
Informations.Font = Enum.Font.SourceSans
Informations.Text = "When you use \"Get All Clothes/Weapons\"\nclick it at least 15 times, each of them.\n\nI hope you enjoy the inf Rubies :)\n\n               !Warning!\nClick once \"Aimbot\" or The Game Will Crash..."
Informations.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Informations.TextSize = 14
-- Scripts:
function SCRIPT_XVMI78_FAKESCRIPT() -- GetAllClothes.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = GetAllClothes
	script.Parent.MouseButton1Click:Connect(function()
	    game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 4})
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 4})
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 4})
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 4})
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 4})
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Clothes", 4})
	end)

end
coroutine.resume(coroutine.create(SCRIPT_XVMI78_FAKESCRIPT))
function SCRIPT_XVRF84_FAKESCRIPT() -- GetAllWeapons.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = GetAllWeapons
	script.Parent.MouseButton1Click:Connect(function()
	    game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 4})
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 4})
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 4})
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 4})
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 4})
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 1})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 2})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 3})
	
	game.ReplicatedStorage.GameMain.Select:FireServer("BuyCrate", {"Weapons", 4})
	end)
	

end
coroutine.resume(coroutine.create(SCRIPT_XVRF84_FAKESCRIPT))
function SCRIPT_SWER79_FAKESCRIPT() -- Get250kRubbies.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Get250kRubbies
	script.Parent.MouseButton1Click:Connect(function()
	    game.ReplicatedStorage.GameMain.Select:FireServer("BuySlot", {"4Slots30Days", -250000})
	end)
	

end
coroutine.resume(coroutine.create(SCRIPT_SWER79_FAKESCRIPT))
function SCRIPT_XHQY86_FAKESCRIPT() -- Aimbot.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Aimbot
	script.Parent.MouseButton1Click:Connect(function()
	    _G.HitBoxSize = Vector3.new(100, 100, 100)
	
	game:service('RunService').RenderStepped:connect(function()
	for i, v in pairs(game.Workspace.Camera.GameElementContainer.HITBOXES:GetDescendants()) do
	if v:IsA('Part') and v.Size ~= _G.HitBoxSize and v.Transparency ~= 0 and v.Name == 'Head' then v.Size = _G.HitBoxSize
	v.Transparency = 0
	end
	end
	end)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_XHQY86_FAKESCRIPT))
function SCRIPT_WFYV65_FAKESCRIPT() -- MainFrame.MActive 
	local script = Instance.new('LocalScript')
	script.Parent = MainFrame
	MainFrame.Active=true;MainFrame.Draggable=true

end
coroutine.resume(coroutine.create(SCRIPT_WFYV65_FAKESCRIPT))
function SCRIPT_CSPB79_FAKESCRIPT() -- Information.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Information
	script.Parent.MouseButton1Click:Connect(function()InfoFrame.Visible = true
	end)

end
coroutine.resume(coroutine.create(SCRIPT_CSPB79_FAKESCRIPT))
function SCRIPT_RKUT84_FAKESCRIPT() -- OpenClose.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = OpenClose
	script.Parent.MouseButton1Click:Connect(function()if OpenClose.Text == "Open" then
	OpenClose.Text = "Close"MainFrame.Visible = true
	elseif OpenClose.Text == "Close" then OpenClose.Text = "Open"
	MainFrame.Visible = false;end;end)

end
coroutine.resume(coroutine.create(SCRIPT_RKUT84_FAKESCRIPT))
function SCRIPT_PGGD70_FAKESCRIPT() -- Close.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Close
	script.Parent.MouseButton1Click:Connect(function()
	InfoFrame.Visible = false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_PGGD70_FAKESCRIPT))
function SCRIPT_SXGS85_FAKESCRIPT() -- InfoFrame.GActive 
	local script = Instance.new('LocalScript')
	script.Parent = InfoFrame
	FrameCredits.Active=true;FrameCredits.Draggable=true

end
coroutine.resume(coroutine.create(SCRIPT_SXGS85_FAKESCRIPT))
end)

UnnamedESPBut.Name = "UnnamedESPBut"
UnnamedESPBut.Parent = FrixonHubScripts
UnnamedESPBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
UnnamedESPBut.BorderSizePixel = 0
UnnamedESPBut.Position = UDim2.new(0.518032789, 0, 0.728337228, 0)
UnnamedESPBut.Size = UDim2.new(0, 122, 0, 49)
UnnamedESPBut.Font = Enum.Font.SourceSans
UnnamedESPBut.Text = "Unnamed ESP"
UnnamedESPBut.TextColor3 = Color3.fromRGB(255, 255, 255)
UnnamedESPBut.TextSize = 14.000
UnnamedESPBut.MouseButton1Down:connect(function() 
	loadstring(game:HttpGet("https://pastebin.com/raw/gYK459T8"))();
end)

GamesUniteBut.Name = "GamesUniteBut"
GamesUniteBut.Parent = FrixonHubScripts
GamesUniteBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
GamesUniteBut.BorderSizePixel = 0
GamesUniteBut.Position = UDim2.new(0.273770511, 0, 0.728337228, 0)
GamesUniteBut.Size = UDim2.new(0, 122, 0, 49)
GamesUniteBut.Font = Enum.Font.SourceSans
GamesUniteBut.Text = "Games Unite GUI"
GamesUniteBut.TextColor3 = Color3.fromRGB(255, 255, 255)
GamesUniteBut.TextSize = 14.000
GamesUniteBut.MouseButton1Down:connect(function() 
	loadstring(game:HttpGet("https://pastebin.com/raw/p9ujujxx"))()
end)

FlingGUIBut.Name = "FlingGUIBut"
FlingGUIBut.Parent = FrixonHubScripts
FlingGUIBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FlingGUIBut.BorderSizePixel = 0
FlingGUIBut.Position = UDim2.new(0.0295082182, 0, 0.728337228, 0)
FlingGUIBut.Size = UDim2.new(0, 122, 0, 49)
FlingGUIBut.Font = Enum.Font.SourceSans
FlingGUIBut.Text = "Fling People GUI"
FlingGUIBut.TextColor3 = Color3.fromRGB(255, 255, 255)
FlingGUIBut.TextSize = 14.000
FlingGUIBut.MouseButton1Down:connect(function() 
	loadstring(game:HttpGet("https://pastebin.com/raw/DXbjiMCS"))()
end)

ThanksForUsingFrixon.Name = "ThanksForUsingFrixon"
ThanksForUsingFrixon.Parent = FrixonHubScripts
ThanksForUsingFrixon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ThanksForUsingFrixon.BackgroundTransparency = 1.000
ThanksForUsingFrixon.BorderSizePixel = 0
ThanksForUsingFrixon.Position = UDim2.new(0.255737692, 0, 0.889929891, 0)
ThanksForUsingFrixon.Size = UDim2.new(0, 298, 0, 36)
ThanksForUsingFrixon.Font = Enum.Font.SourceSans
ThanksForUsingFrixon.Text = "Thanks for Using Frixon Hub!"
ThanksForUsingFrixon.TextColor3 = Color3.fromRGB(255, 255, 255)
ThanksForUsingFrixon.TextScaled = true
ThanksForUsingFrixon.TextSize = 14.000
ThanksForUsingFrixon.TextWrapped = true

Scriptsclosebut.Name = "Scriptsclosebut"
Scriptsclosebut.Parent = FrixonHubScripts
Scriptsclosebut.BackgroundColor3 = Color3.fromRGB(129, 5, 7)
Scriptsclosebut.BorderSizePixel = 0
Scriptsclosebut.Position = UDim2.new(0.919672132, 0, 0, 0)
Scriptsclosebut.Size = UDim2.new(0, 49, 0, 40)
Scriptsclosebut.Font = Enum.Font.SourceSans
Scriptsclosebut.Text = "X"
Scriptsclosebut.TextColor3 = Color3.fromRGB(0, 0, 0)
Scriptsclosebut.TextScaled = true
Scriptsclosebut.TextSize = 14.000
Scriptsclosebut.TextWrapped = true
Scriptsclosebut.MouseButton1Down:connect(function() 
	FrixonHubScripts.Visible = false
end)


FrixonOpenBut.Name = "FrixonOpenBut"
FrixonOpenBut.Parent = FrixonHub
FrixonOpenBut.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FrixonOpenBut.Position = UDim2.new(0.0109809656, 0, 0.830677271, 0)
FrixonOpenBut.Size = UDim2.new(0, 130, 0, 50)
FrixonOpenBut.Font = Enum.Font.SourceSans
FrixonOpenBut.Text = "Open Frixon"
FrixonOpenBut.TextColor3 = Color3.fromRGB(0, 0, 0)
FrixonOpenBut.TextSize = 25.000
FrixonOpenBut.TextWrapped = true
FrixonOpenBut.MouseButton1Down:connect(function() 
	FrixonHubScripts.Visible = true 
end)
