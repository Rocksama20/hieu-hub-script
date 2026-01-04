-- Hieu Hub Script - Fixed Version
print("Loading Hieu Hub...")

-- Tạo ScreenGui
local ScreenGui = Instance.new("ScreenGui")
local KeyFrame = Instance.new("Frame")
local KeyTitleBar = Instance.new("Frame")
local KeyTitle = Instance.new("TextLabel")
local KeyContentFrame = Instance.new("Frame")
local KeyTextBox = Instance.new("TextBox")
local SubmitKeyButton = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local TitleBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local TabBar = Instance.new("Frame")
local ScriptsTab = Instance.new("TextButton")
local ExecutorTab = Instance.new("TextButton")
local MiscTab = Instance.new("TextButton")
local ContentFrame = Instance.new("Frame")

local correctKey = "Hieuhub20"
local keyEntered = false

-- Thuộc tính ScreenGui
ScreenGui.Name = "HieuHub"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Key Frame
KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = ScreenGui
KeyFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
KeyFrame.BackgroundTransparency = 0.1
KeyFrame.BorderSizePixel = 0
KeyFrame.Position = UDim2.new(0.4, 0, 0.4, 0)
KeyFrame.Size = UDim2.new(0, 320, 0, 170)
KeyFrame.Active = true
KeyFrame.Draggable = true
KeyFrame.ZIndex = 2

-- Rainbow Border cho KeyFrame
local RainbowBorder = Instance.new("UIStroke")
RainbowBorder.Parent = KeyFrame
RainbowBorder.Thickness = 3
RainbowBorder.Color = Color3.fromRGB(255, 0, 0)
RainbowBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local KeyFrameCorner = Instance.new("UICorner")
KeyFrameCorner.CornerRadius = UDim.new(0, 12)
KeyFrameCorner.Parent = KeyFrame

-- Key Title Bar
KeyTitleBar.Name = "KeyTitleBar"
KeyTitleBar.Parent = KeyFrame
KeyTitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
KeyTitleBar.BorderSizePixel = 0
KeyTitleBar.Size = UDim2.new(1, 0, 0, 35)

local KeyTitleCorner = Instance.new("UICorner")
KeyTitleCorner.CornerRadius = UDim.new(0, 12)
KeyTitleCorner.Parent = KeyTitleBar

-- Key Title Text
KeyTitle.Name = "KeyTitle"
KeyTitle.Parent = KeyTitleBar
KeyTitle.BackgroundTransparency = 1
KeyTitle.Position = UDim2.new(0, 10, 0, 0)
KeyTitle.Size = UDim2.new(1, -20, 1, 0)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.Text = "Hieu Hub - Enter Key"
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTitle.TextSize = 16
KeyTitle.TextXAlignment = Enum.TextXAlignment.Center

-- Key Content Frame
KeyContentFrame.Name = "KeyContentFrame"
KeyContentFrame.Parent = KeyFrame
KeyContentFrame.BackgroundTransparency = 1
KeyContentFrame.Position = UDim2.new(0, 10, 0, 45)
KeyContentFrame.Size = UDim2.new(1, -20, 1, -55)

-- Key TextBox
KeyTextBox.Name = "KeyTextBox"
KeyTextBox.Parent = KeyContentFrame
KeyTextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
KeyTextBox.BorderSizePixel = 0
KeyTextBox.Position = UDim2.new(0, 0, 0, 0)
KeyTextBox.Size = UDim2.new(1, 0, 0, 40)
KeyTextBox.Font = Enum.Font.Gotham
KeyTextBox.PlaceholderText = "Enter key here..."
KeyTextBox.Text = ""
KeyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTextBox.TextSize = 14

local KeyTextBoxCorner = Instance.new("UICorner")
KeyTextBoxCorner.CornerRadius = UDim.new(0, 6)
KeyTextBoxCorner.Parent = KeyTextBox

-- Submit Key Button
SubmitKeyButton.Name = "SubmitKeyButton"
SubmitKeyButton.Parent = KeyContentFrame
SubmitKeyButton.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
SubmitKeyButton.BorderSizePixel = 0
SubmitKeyButton.Position = UDim2.new(0, 0, 0, 50)
SubmitKeyButton.Size = UDim2.new(1, 0, 0, 40)
SubmitKeyButton.Font = Enum.Font.GothamBold
SubmitKeyButton.Text = "Submit"
SubmitKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitKeyButton.TextSize = 16

local SubmitKeyCorner = Instance.new("UICorner")
SubmitKeyCorner.CornerRadius = UDim.new(0, 6)
SubmitKeyCorner.Parent = SubmitKeyButton

-- Main Frame (Window)
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
MainFrame.BackgroundTransparency = 0.1
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.3, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 450, 0, 380)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false
MainFrame.ZIndex = 2

-- Rainbow Border cho MainFrame
local MainRainbowBorder = Instance.new("UIStroke")
MainRainbowBorder.Parent = MainFrame
MainRainbowBorder.Thickness = 3
MainRainbowBorder.Color = Color3.fromRGB(255, 0, 0)
MainRainbowBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- UICorner cho MainFrame
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

-- Title Bar
TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 40)

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

-- Title Text
Title.Name = "Title"
Title.Parent = TitleBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 10, 0, 0)
Title.Size = UDim2.new(0.8, 0, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "Hieu Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Close Button
CloseButton.Name = "CloseButton"
CloseButton.Parent = TitleBar
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(1, -35, 0, 7)
CloseButton.Size = UDim2.new(0, 26, 0, 26)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 4)
CloseCorner.Parent = CloseButton

-- Tab Bar
TabBar.Name = "TabBar"
TabBar.Parent = MainFrame
TabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TabBar.BorderSizePixel = 0
TabBar.Position = UDim2.new(0, 0, 0, 40)
TabBar.Size = UDim2.new(1, 0, 0, 45)

-- Scripts Tab
ScriptsTab.Name = "ScriptsTab"
ScriptsTab.Parent = TabBar
ScriptsTab.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
ScriptsTab.BorderSizePixel = 0
ScriptsTab.Position = UDim2.new(0, 5, 0, 7)
ScriptsTab.Size = UDim2.new(0.31, 0, 0, 31)
ScriptsTab.Font = Enum.Font.GothamBold
ScriptsTab.Text = "📜 Scripts"
ScriptsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptsTab.TextSize = 14

local ScriptsTabCorner = Instance.new("UICorner")
ScriptsTabCorner.CornerRadius = UDim.new(0, 6)
ScriptsTabCorner.Parent = ScriptsTab

-- Executor Tab
ExecutorTab.Name = "ExecutorTab"
ExecutorTab.Parent = TabBar
ExecutorTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
ExecutorTab.BorderSizePixel = 0
ExecutorTab.Position = UDim2.new(0.34, 0, 0, 7)
ExecutorTab.Size = UDim2.new(0.31, 0, 0, 31)
ExecutorTab.Font = Enum.Font.GothamBold
ExecutorTab.Text = "⚙️ Executor"
ExecutorTab.TextColor3 = Color3.fromRGB(200, 200, 200)
ExecutorTab.TextSize = 14

local ExecutorTabCorner = Instance.new("UICorner")
ExecutorTabCorner.CornerRadius = UDim.new(0, 6)
ExecutorTabCorner.Parent = ExecutorTab

-- Misc Tab
MiscTab.Name = "MiscTab"
MiscTab.Parent = TabBar
MiscTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
MiscTab.BorderSizePixel = 0
MiscTab.Position = UDim2.new(0.68, 0, 0, 7)
MiscTab.Size = UDim2.new(0.29, 0, 0, 31)
MiscTab.Font = Enum.Font.GothamBold
MiscTab.Text = "🔧 Misc"
MiscTab.TextColor3 = Color3.fromRGB(200, 200, 200)
MiscTab.TextSize = 14

local MiscTabCorner = Instance.new("UICorner")
MiscTabCorner.CornerRadius = UDim.new(0, 6)
MiscTabCorner.Parent = MiscTab

-- Content Frame
ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundTransparency = 1
ContentFrame.Position = UDim2.new(0, 10, 0, 95)
ContentFrame.Size = UDim2.new(1, -20, 1, -105)

-- Scripts Content (Tab 1)
local ScriptsContent = Instance.new("Frame")
ScriptsContent.Name = "ScriptsContent"
ScriptsContent.Parent = ContentFrame
ScriptsContent.BackgroundTransparency = 1
ScriptsContent.Size = UDim2.new(1, 0, 1, 0)
ScriptsContent.Visible = true

-- Invisible Script Button
local InvisibleButton = Instance.new("TextButton")
InvisibleButton.Name = "InvisibleButton"
InvisibleButton.Parent = ScriptsContent
InvisibleButton.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
InvisibleButton.BorderSizePixel = 0
InvisibleButton.Position = UDim2.new(0, 0, 0, 0)
InvisibleButton.Size = UDim2.new(0.48, 0, 0, 50)
InvisibleButton.Font = Enum.Font.GothamBold
InvisibleButton.Text = "👻 Invisible"
InvisibleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
InvisibleButton.TextSize = 16

local InvisibleCorner = Instance.new("UICorner")
InvisibleCorner.CornerRadius = UDim.new(0, 8)
InvisibleCorner.Parent = InvisibleButton

-- EdgeIY Button
local EdgeIYButton = Instance.new("TextButton")
EdgeIYButton.Name = "EdgeIYButton"
EdgeIYButton.Parent = ScriptsContent
EdgeIYButton.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
EdgeIYButton.BorderSizePixel = 0
EdgeIYButton.Position = UDim2.new(0.52, 0, 0, 0)
EdgeIYButton.Size = UDim2.new(0.48, 0, 0, 50)
EdgeIYButton.Font = Enum.Font.GothamBold
EdgeIYButton.Text = "⚡ EdgeIY"
EdgeIYButton.TextColor3 = Color3.fromRGB(0, 0, 0)
EdgeIYButton.TextSize = 16

local EdgeIYCorner = Instance.new("UICorner")
EdgeIYCorner.CornerRadius = UDim.new(0, 8)
EdgeIYCorner.Parent = EdgeIYButton

-- Fly Button
local FlyButton = Instance.new("TextButton")
FlyButton.Name = "FlyButton"
FlyButton.Parent = ScriptsContent
FlyButton.BackgroundColor3 = Color3.fromRGB(135, 206, 250)
FlyButton.BorderSizePixel = 0
FlyButton.Position = UDim2.new(0, 0, 0, 60)
FlyButton.Size = UDim2.new(0.48, 0, 0, 50)
FlyButton.Font = Enum.Font.GothamBold
FlyButton.Text = "✈️ Fly"
FlyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyButton.TextSize = 16

local FlyCorner = Instance.new("UICorner")
FlyCorner.CornerRadius = UDim.new(0, 8)
FlyCorner.Parent = FlyButton

-- Executor Content (Tab 2)
local ExecutorContent = Instance.new("Frame")
ExecutorContent.Name = "ExecutorContent"
ExecutorContent.Parent = ContentFrame
ExecutorContent.BackgroundTransparency = 1
ExecutorContent.Size = UDim2.new(1, 0, 1, 0)
ExecutorContent.Visible = false

-- TextBox
local TextBox = Instance.new("TextBox")
TextBox.Name = "TextBox"
TextBox.Parent = ExecutorContent
TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 0, 0, 0)
TextBox.Size = UDim2.new(1, 0, 0.8, 0)
TextBox.Font = Enum.Font.Code
TextBox.PlaceholderText = "-- Nhập script ở đây..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.MultiLine = true
TextBox.ClearTextOnFocus = false

local TextBoxCorner = Instance.new("UICorner")
TextBoxCorner.CornerRadius = UDim.new(0, 8)
TextBoxCorner.Parent = TextBox

-- Execute Button
local ExecuteButton = Instance.new("TextButton")
ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Parent = ExecutorContent
ExecuteButton.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
ExecuteButton.BorderSizePixel = 0
ExecuteButton.Position = UDim2.new(0, 0, 0.85, 0)
ExecuteButton.Size = UDim2.new(1, 0, 0.13, 0)
ExecuteButton.Font = Enum.Font.GothamBold
ExecuteButton.Text = "▶️ Execute"
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.TextSize = 16

local ExecuteCorner = Instance.new("UICorner")
ExecuteCorner.CornerRadius = UDim.new(0, 8)
ExecuteCorner.Parent = ExecuteButton

-- Misc Content (Tab 3)
local MiscContent = Instance.new("Frame")
MiscContent.Name = "MiscContent"
MiscContent.Parent = ContentFrame
MiscContent.BackgroundTransparency = 1
MiscContent.Size = UDim2.new(1, 0, 1, 0)
MiscContent.Visible = false

-- Discord Info Frame
local DiscordFrame = Instance.new("Frame")
DiscordFrame.Name = "DiscordFrame"
DiscordFrame.Parent = MiscContent
DiscordFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
DiscordFrame.BorderSizePixel = 0
DiscordFrame.Position = UDim2.new(0, 0, 0, 0)
DiscordFrame.Size = UDim2.new(1, 0, 0, 120)

local DiscordFrameCorner = Instance.new("UICorner")
DiscordFrameCorner.CornerRadius = UDim.new(0, 10)
DiscordFrameCorner.Parent = DiscordFrame

-- Discord Icon/Title
local DiscordTitle = Instance.new("TextLabel")
DiscordTitle.Name = "DiscordTitle"
DiscordTitle.Parent = DiscordFrame
DiscordTitle.BackgroundTransparency = 1
DiscordTitle.Position = UDim2.new(0, 15, 0, 10)
DiscordTitle.Size = UDim2.new(1, -30, 0, 30)
DiscordTitle.Font = Enum.Font.GothamBold
DiscordTitle.Text = "💬 Join Our Discord Server"
DiscordTitle.TextColor3 = Color3.fromRGB(88, 101, 242)
DiscordTitle.TextSize = 18
DiscordTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Discord Info
local DiscordInfo = Instance.new("TextLabel")
DiscordInfo.Name = "DiscordInfo"
DiscordInfo.Parent = DiscordFrame
DiscordInfo.BackgroundTransparency = 1
DiscordInfo.Position = UDim2.new(0, 15, 0, 45)
DiscordInfo.Size = UDim2.new(1, -30, 0, 20)
DiscordInfo.Font = Enum.Font.Gotham
DiscordInfo.Text = "Get updates, support, and scripts!"
DiscordInfo.TextColor3 = Color3.fromRGB(200, 200, 200)
DiscordInfo.TextSize = 14
DiscordInfo.TextXAlignment = Enum.TextXAlignment.Left

-- Discord Button
local DiscordButton = Instance.new("TextButton")
DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = DiscordFrame
DiscordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
DiscordButton.BorderSizePixel = 0
DiscordButton.Position = UDim2.new(0, 15, 0, 75)
DiscordButton.Size = UDim2.new(1, -30, 0, 35)
DiscordButton.Font = Enum.Font.GothamBold
DiscordButton.Text = "📱 Copy Discord Link"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 15

local DiscordBtnCorner = Instance.new("UICorner")
DiscordBtnCorner.CornerRadius = UDim.new(0, 8)
DiscordBtnCorner.Parent = DiscordButton

-- Credits Frame
local CreditsFrame = Instance.new("Frame")
CreditsFrame.Name = "CreditsFrame"
CreditsFrame.Parent = MiscContent
CreditsFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
CreditsFrame.BorderSizePixel = 0
CreditsFrame.Position = UDim2.new(0, 0, 0, 135)
CreditsFrame.Size = UDim2.new(1, 0, 0, 100)

local CreditsFrameCorner = Instance.new("UICorner")
CreditsFrameCorner.CornerRadius = UDim.new(0, 10)
CreditsFrameCorner.Parent = CreditsFrame

-- Credits Title
local CreditsTitle = Instance.new("TextLabel")
CreditsTitle.Name = "CreditsTitle"
CreditsTitle.Parent = CreditsFrame
CreditsTitle.BackgroundTransparency = 1
CreditsTitle.Position = UDim2.new(0, 15, 0, 10)
CreditsTitle.Size = UDim2.new(1, -30, 0, 25)
CreditsTitle.Font = Enum.Font.GothamBold
CreditsTitle.Text = "⭐ Credits"
CreditsTitle.TextColor3 = Color3.fromRGB(255, 215, 0)
CreditsTitle.TextSize = 16
CreditsTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Credits Info
local CreditsInfo = Instance.new("TextLabel")
CreditsInfo.Name = "CreditsInfo"
CreditsInfo.Parent = CreditsFrame
CreditsInfo.BackgroundTransparency = 1
CreditsInfo.Position = UDim2.new(0, 15, 0, 40)
CreditsInfo.Size = UDim2.new(1, -30, 0, 50)
CreditsInfo.Font = Enum.Font.Gotham
CreditsInfo.Text = "Created by: Hieu\nVersion: 1.0\nThanks for using Hieu Hub! 💖"
CreditsInfo.TextColor3 = Color3.fromRGB(200, 200, 200)
CreditsInfo.TextSize = 13
CreditsInfo.TextXAlignment = Enum.TextXAlignment.Left
CreditsInfo.TextYAlignment = Enum.TextYAlignment.Top

-- Functions
DiscordButton.MouseButton1Click:Connect(function()
    local success = pcall(function()
        setclipboard("https://discord.gg/6z3kYDyu")
    end)
    if success then
        DiscordButton.Text = "✅ Link Copied!"
        wait(2)
        DiscordButton.Text = "📱 Copy Discord Link"
    else
        DiscordButton.Text = "❌ Clipboard not supported"
        wait(2)
        DiscordButton.Text = "📱 Copy Discord Link"
    end
end)

InvisibleButton.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invisible-Script-70877"))()
    end)
    if success then
        print("Invisible Script loaded!")
    else
        warn("Error loading Invisible: " .. tostring(err))
    end
end)

EdgeIYButton.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)
    if success then
        print("EdgeIY loaded!")
    else
        warn("Error loading EdgeIY: " .. tostring(err))
    end
end)

FlyButton.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end)
    if success then
        print("Fly Script loaded!")
    else
        warn("Error loading Fly: " .. tostring(err))
    end
end)

SubmitKeyButton.MouseButton1Click:Connect(function()
    if KeyTextBox.Text == correctKey then
        keyEntered = true
        KeyFrame.Visible = false
        MainFrame.Visible = true
        print("Key accepted! Welcome to Hieu Hub!")
    else
        KeyTextBox.Text = ""
        KeyTextBox.PlaceholderText = "Wrong key! Try again..."
        wait(1)
        KeyTextBox.PlaceholderText = "Enter key here..."
    end
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

ExecuteButton.MouseButton1Click:Connect(function()
    local code = TextBox.Text
    if code ~= "" then
        local success, err = pcall(function()
            loadstring(code)()
        end)
        if success then
            print("Script executed successfully!")
        else
            warn("Error: " .. tostring(err))
        end
    end
end)

-- Tab Switching
ScriptsTab.MouseButton1Click:Connect(function()
    ScriptsContent.Visible = true
    ExecutorContent.Visible = false
    MiscContent.Visible = false
    ScriptsTab.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
    ScriptsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    ExecutorTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    ExecutorTab.TextColor3 = Color3.fromRGB(200, 200, 200)
    MiscTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    MiscTab.TextColor3 = Color3.fromRGB(200, 200, 200)
end)

ExecutorTab.MouseButton1Click:Connect(function()
    ScriptsContent.Visible = false
    ExecutorContent.Visible = true
    MiscContent.Visible = false
    ExecutorTab.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
    ExecutorTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    ScriptsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    ScriptsTab.TextColor3 = Color3.fromRGB(200, 200, 200)
    MiscTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    MiscTab.TextColor3 = Color3.fromRGB(200, 200, 200)
end)

MiscTab.MouseButton1Click:Connect(function()
    ScriptsContent.Visible = false
    ExecutorContent.Visible = false
    MiscContent.Visible = true
    MiscTab.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
    MiscTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    ScriptsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    ScriptsTab.TextColor3 = Color3.fromRGB(200, 200, 200)
    ExecutorTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    ExecutorTab.TextColor3 = Color3.fromRGB(200, 200, 200)
end)

-- Toggle với phím K
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.K then
            if keyEntered then
                MainFrame.Visible = not MainFrame.Visible
            else
                KeyFrame.Visible = not KeyFrame.Visible
            end
        end
    end
end)

-- Rainbow Border Animation
task.spawn(function()
    local hue = 0
    while task.wait(0.03) do
        hue = hue + 0.01
        if hue > 1 then hue = 0 end
        local color = Color3.fromHSV(hue, 1, 1)
        pcall(function()
            RainbowBorder.Color = color
            MainRainbowBorder.Color = color
        end)
    end
end)

print("Hieu Hub loaded successfully!")
print("Key: Hieuhub20")
print("Press K to toggle GUI")
