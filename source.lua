local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Raise a Peter GUI by Cynacol", HidePremium = true, SaveConfig = false, ConfigFolder = "delete this if you want", IntroEnabled = false})
local Tab = Window:MakeTab({
	Name = "Main",
	PremiumOnly = false
})
local AutoFarm = Tab:AddSection({
	Name = "Auto Farm"
})
local Teleports = Tab:AddSection({
	Name = "Teleports"
})
getgenv().e = false
getgenv().e2 = false
getgenv().e3 = false
getgenv().e4 = false
getgenv().e5 = false
getgenv().e6 = false
getgenv().e7 = false
getgenv().e8 = false

AutoFarm:AddToggle({
	Name = "Auto money collect",
	Default = false,
	Callback = function(Value)
	    getgenv().e = Value
        while task.wait() do
            local playerHead = game.Players.LocalPlayer.Character.Head
            if not getgenv().e then break end
            for i, v in pairs(game:GetService("Workspace").Interactables.MoneyBills:GetChildren()) do
                firetouchinterest(playerHead, v, 0)
                task.wait()
                firetouchinterest(playerHead, v, 1)
            end
            for i, v in pairs(game:GetService("Workspace").Interactables.BagFolder:GetChildren()) do
                if v:IsA("Part") then
                    firetouchinterest(playerHead, v, 0)
                    task.wait()
                    firetouchinterest(playerHead, v, 1)
                end
            end
        end
	end    
})

AutoFarm:AddToggle({
	Name = "Auto Click",
	Default = false,
	Callback = function(Value)
	    getgenv().e2 = Value
        while task.wait() do
            if not getgenv().e2 then break end
            fireclickdetector(game:GetService("Workspace").Interactables.Peter.Peter.Clickable.DropMoney)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Interactables.Peter.Peter.Clickable.CFrame
        end
	end    
})

AutoFarm:AddToggle({
	Name = "Auto poo collect",
	Default = false,
	Callback = function(Value)
	    getgenv().e3 = Value
        while task.wait() do
            local playerHead = game.Players.LocalPlayer.Character.Head
            if not getgenv().e3 then break end
            for i, v in pairs(game:GetService("Workspace").Interactables.Poopies:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v)
                end
            end
        end
	end    
})

AutoFarm:AddToggle({
	Name = "Auto open package",
	Default = false,
	Callback = function(Value)
	    getgenv().e4 = Value
        while task.wait() do
            local playerHead = game.Players.LocalPlayer.Character.Head
            if not getgenv().e4 then break end
            for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if (v:IsA("ProximityPrompt") and v.Parent.Parent.Parent.Parent.Name == "DeliveryBox") then
                    local currentpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                    fireproximityprompt(v)
                    task.wait(0.2)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentpos
                end
            end
        end
	end    
})

AutoFarm:AddToggle({
	Name = "Auto Collect Joe's paycheck (and raise it)",
	Default = false,
	Callback = function(Value)
	    getgenv().e5 = Value
        while task.wait() do
            local playerHead = game.Players.LocalPlayer.Character.Head
            if not getgenv().e5 then break end
            local args = {[1] = "DoubleRent"}
            local args2 = {[1] = "PayRent"}
            game:GetService("ReplicatedStorage").RemoteEvents.Joe:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").RemoteEvents.Joe:FireServer(unpack(args2))
        end
	end    
})

AutoFarm:AddToggle({
	Name = "Auto sell fish (every 10 seconds)",
	Default = false,
	Callback = function(Value)
	    getgenv().e8 = Value
        while task.wait() do
            local playerHead = game.Players.LocalPlayer.Character.Head
            if not getgenv().e8 then break end
            local args = {[1] = "Sell"}
            game:GetService("ReplicatedStorage").RemoteEvents.Seamus:FireServer(unpack(args))
            task.wait(10)
        end
	end    
})

Teleports:AddButton({
    Name = "Home: Living Room",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132, 4, 35)
    end
})

Teleports:AddButton({
    Name = "Home: Kitchen",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(102, 4, 32)
    end
})

Teleports:AddButton({
    Name = "Home: Garage",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(76, 4, 17)
    end
})

Teleports:AddButton({
    Name = "Gas Station",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(107, 4, 119)
    end
})

Teleports:AddButton({
    Name = "Cave Entrance",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-144, 3, -56)
    end
})

Teleports:AddButton({
    Name = "Lake",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(214, 3, 179)
    end
})

Teleports:AddButton({
    Name = "Military Base",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(134, 3, -71)
    end
})

Teleports:AddButton({
    Name = "Garden",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(237, 3, 41)
    end
})

Teleports:AddButton({
    Name = "Chicken Coop",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42, 3, 57)
    end
})

Teleports:AddButton({
    Name = "Basement",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(173, -164, 10)
    end
})

Teleports:AddButton({
    Name = "Cave: Magic Well",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(32, -112, -2480)
    end
})
