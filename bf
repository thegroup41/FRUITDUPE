local ScreenGui = Instance.new("ScreenGui")
local PurchaseFrame = Instance.new("Frame")
local PurchaseTitle = Instance.new("TextLabel")
local ContinueButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local AmountLabel = Instance.new("TextLabel")
local AmountBox = Instance.new("TextBox")
local StartButton = Instance.new("TextButton")
​
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
​
PurchaseFrame.Parent = ScreenGui
PurchaseFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
PurchaseFrame.Size = UDim2.new(0, 300, 0, 150)
PurchaseFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
PurchaseFrame.AnchorPoint = Vector2.new(0.5, 0.5)
​
PurchaseTitle.Parent = PurchaseFrame
PurchaseTitle.Text = "Would you like to continue?"
PurchaseTitle.Size = UDim2.new(1, 0, 0.5, 0)
PurchaseTitle.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
PurchaseTitle.TextColor3 = Color3.new(1, 1, 1)
PurchaseTitle.Font = Enum.Font.SourceSansBold
PurchaseTitle.TextScaled = true
​
ContinueButton.Parent = PurchaseFrame
ContinueButton.Text = "Continue"
ContinueButton.Size = UDim2.new(0.5, 0, 0.3, 0)
ContinueButton.Position = UDim2.new(0.25, 0, 0.6, 0)
ContinueButton.BackgroundColor3 = Color3.new(0.3, 0.6, 0.3)
ContinueButton.TextColor3 = Color3.new(1, 1, 1)
ContinueButton.Font = Enum.Font.SourceSansBold
ContinueButton.TextScaled = true
​
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Visible = false
Frame.Active = true
Frame.Draggable = true
​
Title.Parent = Frame
Title.Text = "Blox Fruits Dupe Fruits & Items"
Title.Size = UDim2.new(1, 0, 0.2, 0)
Title.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.SourceSansBold
Title.TextScaled = true
​
AmountLabel.Parent = Frame
AmountLabel.Text = "Amount:"
AmountLabel.Size = UDim2.new(0.3, 0, 0.2, 0)
AmountLabel.Position = UDim2.new(0.05, 0, 0.3, 0)
AmountLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AmountLabel.TextColor3 = Color3.new(1, 1, 1)
AmountLabel.Font = Enum.Font.SourceSansBold
AmountLabel.TextScaled = true
​
AmountBox.Parent = Frame
AmountBox.Text = "999"
AmountBox.Size = UDim2.new(0.6, 0, 0.2, 0)
AmountBox.Position = UDim2.new(0.35, 0, 0.3, 0)
AmountBox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
AmountBox.TextColor3 = Color3.new(1, 1, 1)
AmountBox.Font = Enum.Font.SourceSans
AmountBox.TextScaled = true
​
StartButton.Parent = Frame
StartButton.Text = "Start"
StartButton.Size = UDim2.new(0.9, 0, 0.2, 0)
StartButton.Position = UDim2.new(0.05, 0, 0.7, 0)
StartButton.BackgroundColor3 = Color3.new(0.2, 0.4, 0.2)
StartButton.TextColor3 = Color3.new(1, 1, 1)
StartButton.Font = Enum.Font.SourceSansBold
StartButton.TextScaled = true
​
local UIS = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos
​
local function update(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
​
Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
​
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
​
Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)
​
UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
​
ContinueButton.MouseButton1Click:Connect(function()
    PurchaseFrame.Visible = false
    Frame.Visible = true
end)
​
StartButton.MouseButton1Click:Connect(function()
    StartButton.Text = "Loading..."
    wait(3)
    StartButton.Text = "Start"
    local amount = tonumber(AmountBox.Text) or 999
    for i = 1, 5000 do
        local itemFrame = game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame[tostring(i)]
        if itemFrame then
            local itemCounterText = itemFrame.Filled.ItemInformation.Counter.Shadow.TextLabel
            itemCounterText.Text = tostring(amount)
            itemCounterText:GetPropertyChangedSignal("Text"):Connect(function()
                if itemCounterText.Text ~= tostring(amount) then
                    itemCounterText.Text = tostring(amount)
                end
            end)
        end
    end
end)
