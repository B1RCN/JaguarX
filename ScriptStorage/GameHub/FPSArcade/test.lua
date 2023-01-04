local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Jaguar Hub", HidePremium = true, SaveConfig = false, ConfigFolder = "Jaguar", IntroText = "Jaguar Hub"})
local Player = game.Players.LocalPlayer
OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "",
	Time = 7
})

local Tab = Window:MakeTab({
	Name = "Home",
	Icon = "",
	PremiumOnly = false
})

Tab:AddParagraph("Announcement","JaguarX Exploit special script hub")
Tab:AddLabel("Credits: Arround")

local Tab2 = Window:MakeTab({
    Name = "Arsenal",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab2:AddSection({
	Name = "Aimbot"
})

Tab2:AddButton({
	Name = "Aimbot",
	Callback = function()
_G.AimbotInput = "T"
_G.AimbotEasing = 0.2  
_G.TeamCheck = true
if _G.AlreadyRanItBroDanger then
    return
end
		
		

_G.AlreadyRanItBroDanger = "It's the Nutshack"

local uis = game:GetService("UserInputService")
local players = game:GetService("Players")
local teams = game:GetService("Teams")
local plr = players.LocalPlayer
local ms = plr:GetMouse()
local cam = workspace.CurrentCamera

workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
    cam = workspace.CurrentCamera
end)


local aimbotOn = false

function canSee(part, des)
    local origin = cam.CFrame.Position
    local _, onscreen = cam:WorldToViewportPoint(part.Position)
    
    if onscreen then
        local ray = Ray.new(origin, part.Position - origin)
        local hit = workspace:FindPartOnRayWithIgnoreList(ray, plr.Character:GetDescendants())
        local vis = false
        
        if hit and hit:IsDescendantOf(des) then
            vis = true
        else
            vis = false
        end
        
        return vis
    else
        return false
    end
end

function getClosestPlrToMouse()
    local closest, distance = nil, math.huge

    for i, v in pairs(players:GetPlayers()) do
        if v ~= plr then
            pcall(function()
                local checkPassed = true
    
                if _G.TeamCheck then
                    if plr.TeamColor == v.TeamColor then
                        checkPassed = false
                    end
                end
    
                if (ms.Hit.Position - v.Character.PrimaryPart.Position).magnitude < distance and checkPassed then
                    if canSee(v.Character.Head, v.Character) and v.Character.Humanoid.Health > 0 then
                        closest = v
                        distance = (ms.Hit.Position - v.Character.PrimaryPart.Position).magnitude
                    end
                end
            end)
        end
    end

    return closest, distance
end

uis.InputBegan:Connect(function(input, processed)
    if not processed then
        if _G.AimbotInput == "LeftClick" and input.UserInputType == Enum.UserInputType.MouseButton1 then
            aimbotOn = true
        elseif _G.AimbotInput == "RightClick" and input.UserInputType == Enum.UserInputType.MouseButton2 then
            aimbotOn = true
        elseif input.KeyCode.Name == _G.AimbotInput then
            aimbotOn = true
        end
    end
end)

uis.InputEnded:Connect(function(input, processed)
    if not processed then
        if _G.AimbotInput == "LeftClick" and input.UserInputType == Enum.UserInputType.MouseButton1 then
            aimbotOn = false
        elseif _G.AimbotInput == "RightClick" and input.UserInputType == Enum.UserInputType.MouseButton2 then
            aimbotOn = false
        elseif input.KeyCode.Name == _G.AimbotInput then
            aimbotOn = false
        end
    end
end)

while task.wait() do
    if aimbotOn then
        local targ = getClosestPlrToMouse()
        if targ then
            local currentcf = workspace.CurrentCamera.CFrame
            workspace.CurrentCamera.CFrame = currentcf:Lerp(CFrame.new(currentcf.Position, targ.Character.Head.Position), _G.AimbotEasing)
        end
    end
end
  	end    
})

local Section = Tab2:AddSection({
	Name = "ESP"
})

Tab2:AddButton({
	Name = "Box ESP",
	Callback = function()
local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)

for i,v in pairs(game.Players:GetChildren()) do
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                    else
                        BoxOutline.Visible = true
                        Box.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                    else
                        BoxOutline.Visible = true
                        Box.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)
  	end    
})

Tab2:AddButton({
	Name = "Name ESP",
	Callback = function()
local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

local function esp(p,cr)
    local h = cr:WaitForChild("Humanoid")
    local hrp = cr:WaitForChild("HumanoidRootPart")

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = true 
    text.Font = 2
    text.Color = Color3.fromRGB(255,255,255)
    text.Size = 13

    local c1
    local c2
    local c3

    local function dc()
        text.Visible = false
        text:Remove()
        if c1 then
            c1:Disconnect()
            c1 = nil 
        end
        if c2 then
            c2:Disconnect()
            c2 = nil 
        end
        if c3 then
            c3:Disconnect()
            c3 = nil 
        end
    end

    c2 = cr.AncestryChanged:Connect(function(_,parent)
        if not parent then
            dc()
        end
    end)

    c3 = h.HealthChanged:Connect(function(v)
        if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
            dc()
        end
    end)

    c1 = rs.RenderStepped:Connect(function()
        local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
        if hrp_onscreen then
            text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y)
            text.Text = p.Name
            text.Visible = true
        else
            text.Visible = false
        end
    end)
end

local function p_added(p)
    if p.Character then
        esp(p,p.Character)
    end
    p.CharacterAdded:Connect(function(cr)
        esp(p,cr)
    end)
end

for i,p in next, ps:GetPlayers() do 
    if p ~= lp then
        p_added(p)
    end
end

ps.PlayerAdded:Connect(p_added)
  	end    
})

local Tab3 = Window:MakeTab({
    Name = "Phantom Forces",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab3:AddSection({
	Name = "Aimbot"
})

Tab3:AddButton({
	Name = "Silent Aimbot",
	Callback = function()
assert(getgc, "missing dependency: getgc");

local players = game:GetService("Players");
local workspace = game:GetService("Workspace");
local input_service = game:GetService("UserInputService");
local replicated_first = game:GetService("ReplicatedFirst");

local camera = workspace.CurrentCamera;
local wtvp = camera.WorldToViewportPoint;
local mouse_pos = input_service.GetMouseLocation;
local localplayer = players.LocalPlayer;
local ticket = 0;

local new_vector2 = Vector2.new;

local modules = {};
modules.network = require(replicated_first.ClientModules.Old.framework.network);
modules.values = require(replicated_first.SharedModules.SharedConfigs.PublicSettings);
modules.physics = require(replicated_first.SharedModules.Old.Utilities.Math.physics:Clone());

for _, v in next, getgc(true) do
    if type(v) == "table" then
        if rawget(v, "getbodyparts") then
            modules.replication = v;
        elseif rawget(v, "gammo") then
            modules.gamelogic = v;
        end
    end
end

local function get_closest()
    local closest, player = math.huge, nil;
    for _, p in next, players:GetPlayers() do
        local character = modules.replication.getbodyparts(p);
        if character and p.Team ~= localplayer.Team then
            local pos, visible = wtvp(camera, character.head.Position);
            pos = new_vector2(pos.X, pos.Y);

            local magnitude = (pos - mouse_pos(input_service)).Magnitude;
            if magnitude < closest and visible then
                closest = magnitude;
                player = p;
            end
        end
    end
    return player;
end

local old = modules.network.send;
function modules.network.send(self, name, ...)
    local args = table.pack(...);
    if name == "newbullets" then
        local gun = modules.gamelogic.currentgun;
        local data = gun and gun.data;
        if gun and data then
            local player = get_closest();
            local character = modules.replication.getbodyparts(player);
            if player and character then
                local hitpart = character.head;

                for _, bullet in next, args[1].bullets do
                    bullet[1] = modules.physics.trajectory(args[1].firepos, modules.values.bulletAcceleration, hitpart.Position, data.bulletspeed);
                    bullet[2] = ticket;

                    ticket += 1;
                end

                old(self, name, table.unpack(args));

                for _, bullet in next, args[1].bullets do
                    old(self, "bullethit", player, hitpart.Position, hitpart.Name, bullet[2]);
                end

                return;
            end
        end
    end
    return old(self, name, table.unpack(args));
end
  	end    
})

local Section = Tab3:AddSection({
	Name = "ESP"
})

Tab3:AddButton({
	Name = "Dropped Weapons",
	Callback = function()
if not game:IsLoaded() then
    game.Loaded:Wait()
end


local d_guns = game:GetService("Workspace"):WaitForChild("Ignore").GunDrop -- Path to guns that are dropped
local players = game:GetService("Players") -- Players
local cleint = players.LocalPlayer -- Local player
local cam = game:GetService("Workspace").CurrentCamera -- camera
if not getgenv() then
    cleint:Kick("Your exploit wont support this!")
end

local function doESP(gun)
    -- draw text
    local Text = Drawing.new("Text")
    Text.Visible = false
    Text.Size = 15
    Text.Font = 3
    Text.Outline = true

    local function Update()
        local c
        c = game:GetService("RunService").RenderStepped:Connect(function()
            if cleint.Character ~= nil and gun:FindFirstChild("Gun") and gun:FindFirstChild("UnderbarrelNode") then

                local Distance = (cam.CFrame.Position-gun.UnderbarrelNode.Position).Magnitude
                local Pos,OnScreen = cam:WorldToScreenPoint(gun.UnderbarrelNode.Position)
               
                if OnScreen then
                    Text.Position = Vector2.new(Pos.x,Pos.y)
                    Text.Visible = true
                    Text.Size = math.clamp(30 - Distance / 10, 15, 30)
                    Text.Color = Color3.fromHSV(math.clamp(Distance / 5, 0, 125) / 255, 0.75, 1)
                else
                    Text.Visible = false
                end
               
                Text.Text = tostring(gun.Gun.Value)
            else
                Text.Visible = false
                if not game then
                    c:Disconnect()
                end
            end
        end)
    end

    coroutine.wrap(Update)()
end


for _, gun in pairs(d_guns:GetChildren()) do
    doESP(gun)
end


d_guns.ChildAdded:Connect(function(gun)
    doESP(gun)
end)
  	end    
})

Tab3:AddButton({
	Name = "Player Chams",
	Callback = function()
local settings = {
   
   fillcolor = Color3.fromRGB(255, 255, 255);
   filltransparency = .75;
   
   outlinecolor = Color3.fromRGB(255, 235, 67);
   outlinetransparency = 0;
   
}

local plr = game:service'Players'.LocalPlayer
local highlights = Instance.new('Folder', game:service'CoreGui')

local function addhighlight(object)
   local highlight = Instance.new('Highlight', highlights)
   highlight.Adornee = object
   
   highlight.FillColor = settings.fillcolor
   highlight.FillTransparency = settings.filltransparency
   
   highlight.OutlineColor = settings.outlinecolor
   highlight.OutlineTransparency = settings.outlinetransparency
   
   highlight.Adornee.Changed:Connect(function()
       if not highlight.Adornee or not highlight.Adornee.Parent then
           highlight:Destroy()    
       end
   end)
   
   return highlight
end

local function addtoplayer(object)
   if object:IsA'Model' and object.Name == 'Player' and object.Parent.Name ~= tostring(plr.TeamColor) then
       addhighlight(object)
   end
end

for i,v in pairs(workspace.Players:GetDescendants()) do
   addtoplayer(v)
end

workspace.Players.DescendantAdded:Connect(function(v)
   addtoplayer(v)
end)
  	end    
})

local Tab4 = Window:MakeTab({
	Name = "Strucid",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab4:AddSection({
	Name = "ESP"
})

Tab4:AddButton({
	Name = "Box ESP",
	Callback = function()
local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)

for i,v in pairs(game.Players:GetChildren()) do
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                    else
                        BoxOutline.Visible = true
                        Box.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                    else
                        BoxOutline.Visible = true
                        Box.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)
  	end    
})

Tab4:AddButton({
	Name = "Name ESP",
	Callback = function()
local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

local function esp(p,cr)
    local h = cr:WaitForChild("Humanoid")
    local hrp = cr:WaitForChild("HumanoidRootPart")

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = true 
    text.Font = 2
    text.Color = Color3.fromRGB(255,255,255)
    text.Size = 13

    local c1
    local c2
    local c3

    local function dc()
        text.Visible = false
        text:Remove()
        if c1 then
            c1:Disconnect()
            c1 = nil 
        end
        if c2 then
            c2:Disconnect()
            c2 = nil 
        end
        if c3 then
            c3:Disconnect()
            c3 = nil 
        end
    end

    c2 = cr.AncestryChanged:Connect(function(_,parent)
        if not parent then
            dc()
        end
    end)

    c3 = h.HealthChanged:Connect(function(v)
        if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
            dc()
        end
    end)

    c1 = rs.RenderStepped:Connect(function()
        local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
        if hrp_onscreen then
            text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y)
            text.Text = p.Name
            text.Visible = true
        else
            text.Visible = false
        end
    end)
end

local function p_added(p)
    if p.Character then
        esp(p,p.Character)
    end
    p.CharacterAdded:Connect(function(cr)
        esp(p,cr)
    end)
end

for i,p in next, ps:GetPlayers() do 
    if p ~= lp then
        p_added(p)
    end
end

ps.PlayerAdded:Connect(p_added)
  	end    
})

local Section = Tab4:AddSection({
	Name = "Other"
})

Tab4:AddButton({
	Name = "Hitbox Extender",
	Callback = function()
      	-- loop
game:GetService("RunService").Stepped:Connect(function()   
    for _, player in next, game:GetService("Players"):GetPlayers() do       
        if player ~= game:GetService("Players").LocalPlayer then        
            if player.Character:FindFirstChild("HumanoidRootPart") then
                player.Character["HumanoidRootPart"].CanCollide = false
                player.Character["HumanoidRootPart"].Transparency = 0.5
            end
            
            if player.Character["HumanoidRootPart"].Size ~= Vector3.new(20, 20, 20) then
                player.Character["HumanoidRootPart"].Size = Vector3.new(20, 20, 20)
            end
        end
    end
end)
  	end    
})

local TabMisc = Window:MakeTab({
    Name = "Misc",
	Icon = "",
	PremiumOnly = false
})

TabMisc:AddButton({
	Name = "Show Ping",
	Callback = function()
local FXdbXCT6OLt75edXIpv7 = Instance.new("ScreenGui")
local ECHVOobLFifwdKiIQxSQ = Instance.new("Frame")
local gFYMIIjGNajoDppJf4WA = Instance.new("TextLabel")

FXdbXCT6OLt75edXIpv7.Name = "FXdbXCT6OLt75edXIpv7"
FXdbXCT6OLt75edXIpv7.Parent = game:WaitForChild("CoreGui")
FXdbXCT6OLt75edXIpv7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ECHVOobLFifwdKiIQxSQ.Name = "ECHVOobLFifwdKiIQxSQ"
ECHVOobLFifwdKiIQxSQ.Parent = FXdbXCT6OLt75edXIpv7
ECHVOobLFifwdKiIQxSQ.AnchorPoint = Vector2.new(0.5, 0.5)
ECHVOobLFifwdKiIQxSQ.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ECHVOobLFifwdKiIQxSQ.BorderColor3 = Color3.fromRGB(255, 255, 255)
ECHVOobLFifwdKiIQxSQ.Position = UDim2.new(0.899999976, 0, 0.100000001, 0)
ECHVOobLFifwdKiIQxSQ.Size = UDim2.new(0.0900000036, 0, 0.0399999991, 0)

gFYMIIjGNajoDppJf4WA.Name = "gFYMIIjGNajoDppJf4WA"
gFYMIIjGNajoDppJf4WA.Parent = ECHVOobLFifwdKiIQxSQ
gFYMIIjGNajoDppJf4WA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gFYMIIjGNajoDppJf4WA.BackgroundTransparency = 1.000
gFYMIIjGNajoDppJf4WA.BorderSizePixel = 0
gFYMIIjGNajoDppJf4WA.Size = UDim2.new(1, 0, 1, 0)
gFYMIIjGNajoDppJf4WA.Font = Enum.Font.RobotoMono
gFYMIIjGNajoDppJf4WA.Text = "Ping : Calculating"
gFYMIIjGNajoDppJf4WA.TextColor3 = Color3.fromRGB(255, 255, 255)
gFYMIIjGNajoDppJf4WA.TextSize = 14.000
gFYMIIjGNajoDppJf4WA.TextWrapped = true

local function BTQHWCD_fake_script() -- FXdbXCT6OLt75edXIpv7.34TRSWKGcLtlaHHhhgpW 
	local script = Instance.new('LocalScript', FXdbXCT6OLt75edXIpv7)

	local Script = script
	local Gui = Script.Parent
	local Frame = Gui:FindFirstChildOfClass("Frame")
	local Ping = Frame:FindFirstChildOfClass("TextLabel")
	
	local Drag = Frame
	gsCoreGui = game:GetService("CoreGui")
	gsTween = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		local dragTime = 0.04
		local SmoothDrag = {}
		SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
		dragSmoothFunction:Play()
	end
	Drag.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Drag.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	Drag.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging and Drag.Size then
			update(input)
		end
	end)
	
	while Script and task.wait() do
		local PingString = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
		local Split = string.split(PingString, " ")
		local PingValue = Split[1]
		
		Ping.Text = "Ping : "..PingValue
	end
end
coroutine.wrap(BTQHWCD_fake_script)()
  	end    
})
