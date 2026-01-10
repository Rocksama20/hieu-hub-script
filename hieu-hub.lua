-- Hieu Hub V2 - Complete Fixed Version
-- By Mr_Rock20
print("Loading Hieu Hub V2 by Mr_Rock20...")

-- Services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

-- GUI Creation
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "HieuHubV2"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Key Frame
local KeyFrame = Instance.new("Frame")
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

local KeyRainbowBorder = Instance.new("UIStroke")
KeyRainbowBorder.Parent = KeyFrame
KeyRainbowBorder.Thickness = 3
KeyRainbowBorder.Color = Color3.fromRGB(255, 0, 0)
KeyRainbowBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local KeyFrameCorner = Instance.new("UICorner")
KeyFrameCorner.CornerRadius = UDim.new(0, 12)
KeyFrameCorner.Parent = KeyFrame

local KeyTitleBar = Instance.new("Frame")
KeyTitleBar.Parent = KeyFrame
KeyTitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
KeyTitleBar.BorderSizePixel = 0
KeyTitleBar.Size = UDim2.new(1, 0, 0, 35)

local KeyTitleCorner = Instance.new("UICorner")
KeyTitleCorner.CornerRadius = UDim.new(0, 12)
KeyTitleCorner.Parent = KeyTitleBar

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Parent = KeyTitleBar
KeyTitle.BackgroundTransparency = 1
KeyTitle.Size = UDim2.new(1, 0, 1, 0)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.Text = "Hieu Hub V2 - Enter Key"
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTitle.TextSize = 16

local KeyContentFrame = Instance.new("Frame")
KeyContentFrame.Parent = KeyFrame
KeyContentFrame.BackgroundTransparency = 1
KeyContentFrame.Position = UDim2.new(0, 10, 0, 45)
KeyContentFrame.Size = UDim2.new(1, -20, 1, -55)

local KeyTextBox = Instance.new("TextBox")
KeyTextBox.Parent = KeyContentFrame
KeyTextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
KeyTextBox.BorderSizePixel = 0
KeyTextBox.Size = UDim2.new(1, 0, 0, 40)
KeyTextBox.Font = Enum.Font.Gotham
KeyTextBox.PlaceholderText = "Enter key here..."
KeyTextBox.Text = ""
KeyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTextBox.TextSize = 14

local KeyTextBoxCorner = Instance.new("UICorner")
KeyTextBoxCorner.CornerRadius = UDim.new(0, 6)
KeyTextBoxCorner.Parent = KeyTextBox

local SubmitKeyButton = Instance.new("TextButton")
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

-- Main Frame
local MainFrame = Instance.new("Frame")
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

local MainRainbowBorder = Instance.new("UIStroke")
MainRainbowBorder.Parent = MainFrame
MainRainbowBorder.Thickness = 3
MainRainbowBorder.Color = Color3.fromRGB(255, 0, 0)
MainRainbowBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

local TitleBar = Instance.new("Frame")
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 40)

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

local Title = Instance.new("TextLabel")
Title.Parent = TitleBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 10, 0, 0)
Title.Size = UDim2.new(0.8, 0, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "Hieu Hub V2"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.TextXAlignment = Enum.TextXAlignment.Left

local CloseButton = Instance.new("TextButton")
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
local TabBar = Instance.new("Frame")
TabBar.Parent = MainFrame
TabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TabBar.BorderSizePixel = 0
TabBar.Position = UDim2.new(0, 0, 0, 40)
TabBar.Size = UDim2.new(1, 0, 0, 45)

local ScriptsTab = Instance.new("TextButton")
ScriptsTab.Parent = TabBar
ScriptsTab.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
ScriptsTab.BorderSizePixel = 0
ScriptsTab.Position = UDim2.new(0, 3, 0, 7)
ScriptsTab.Size = UDim2.new(0.23, 0, 0, 31)
ScriptsTab.Font = Enum.Font.GothamBold
ScriptsTab.Text = "📜 Scripts"
ScriptsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptsTab.TextSize = 13

local ScriptsTabCorner = Instance.new("UICorner")
ScriptsTabCorner.CornerRadius = UDim.new(0, 6)
ScriptsTabCorner.Parent = ScriptsTab

local ExecutorTab = Instance.new("TextButton")
ExecutorTab.Parent = TabBar
ExecutorTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
ExecutorTab.BorderSizePixel = 0
ExecutorTab.Position = UDim2.new(0.25, 0, 0, 7)
ExecutorTab.Size = UDim2.new(0.23, 0, 0, 31)
ExecutorTab.Font = Enum.Font.GothamBold
ExecutorTab.Text = "⚙️ Executor"
ExecutorTab.TextColor3 = Color3.fromRGB(200, 200, 200)
ExecutorTab.TextSize = 13

local ExecutorTabCorner = Instance.new("UICorner")
ExecutorTabCorner.CornerRadius = UDim.new(0, 6)
ExecutorTabCorner.Parent = ExecutorTab

local TechTab = Instance.new("TextButton")
TechTab.Parent = TabBar
TechTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
TechTab.BorderSizePixel = 0
TechTab.Position = UDim2.new(0.5, 0, 0, 7)
TechTab.Size = UDim2.new(0.23, 0, 0, 31)
TechTab.Font = Enum.Font.GothamBold
TechTab.Text = "💻 Tech"
TechTab.TextColor3 = Color3.fromRGB(200, 200, 200)
TechTab.TextSize = 13

local TechTabCorner = Instance.new("UICorner")
TechTabCorner.CornerRadius = UDim.new(0, 6)
TechTabCorner.Parent = TechTab

local MiscTab = Instance.new("TextButton")
MiscTab.Parent = TabBar
MiscTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
MiscTab.BorderSizePixel = 0
MiscTab.Position = UDim2.new(0.75, 0, 0, 7)
MiscTab.Size = UDim2.new(0.23, 0, 0, 31)
MiscTab.Font = Enum.Font.GothamBold
MiscTab.Text = "🔧 Misc"
MiscTab.TextColor3 = Color3.fromRGB(200, 200, 200)
MiscTab.TextSize = 13

local MiscTabCorner = Instance.new("UICorner")
MiscTabCorner.CornerRadius = UDim.new(0, 6)
MiscTabCorner.Parent = MiscTab

local ContentFrame = Instance.new("Frame")
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundTransparency = 1
ContentFrame.Position = UDim2.new(0, 10, 0, 95)
ContentFrame.Size = UDim2.new(1, -20, 1, -105)

-- Scripts Content
local ScriptsContent = Instance.new("Frame")
ScriptsContent.Parent = ContentFrame
ScriptsContent.BackgroundTransparency = 1
ScriptsContent.Size = UDim2.new(1, 0, 1, 0)
ScriptsContent.Visible = true

local InvisibleButton = Instance.new("TextButton")
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

local EdgeIYButton = Instance.new("TextButton")
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

local FlyButton = Instance.new("TextButton")
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

local MinhNhatButton = Instance.new("TextButton")
MinhNhatButton.Parent = ScriptsContent
MinhNhatButton.BackgroundColor3 = Color3.fromRGB(255, 50, 150)
MinhNhatButton.BorderSizePixel = 0
MinhNhatButton.Position = UDim2.new(0.52, 0, 0, 60)
MinhNhatButton.Size = UDim2.new(0.48, 0, 0, 50)
MinhNhatButton.Font = Enum.Font.GothamBold
MinhNhatButton.Text = "💻 MinhNhat V9"
MinhNhatButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinhNhatButton.TextSize = 16
local MinhNhatCorner = Instance.new("UICorner")
MinhNhatCorner.CornerRadius = UDim.new(0, 8)
MinhNhatCorner.Parent = MinhNhatButton

-- Executor Content
local ExecutorContent = Instance.new("Frame")
ExecutorContent.Parent = ContentFrame
ExecutorContent.BackgroundTransparency = 1
ExecutorContent.Size = UDim2.new(1, 0, 1, 0)
ExecutorContent.Visible = false

local TextBox = Instance.new("TextBox")
TextBox.Parent = ExecutorContent
TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
TextBox.BorderSizePixel = 0
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

local ExecuteButton = Instance.new("TextButton")
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

-- Tech Content
local TechContent = Instance.new("Frame")
TechContent.Parent = ContentFrame
TechContent.BackgroundTransparency = 1
TechContent.Size = UDim2.new(1, 0, 1, 0)
TechContent.Visible = false

local TechScroll = Instance.new("ScrollingFrame")
TechScroll.Parent = TechContent
TechScroll.BackgroundTransparency = 1
TechScroll.BorderSizePixel = 0
TechScroll.Size = UDim2.new(1, 0, 1, 0)
TechScroll.CanvasSize = UDim2.new(0, 0, 0, 500)
TechScroll.ScrollBarThickness = 6
TechScroll.ScrollBarImageColor3 = Color3.fromRGB(50, 150, 255)

local techButtons = {
    {name = "GLACIER", y = 0, color = Color3.fromRGB(100, 200, 255), text = "❄️ GLACIER", url = "https://raw.githubusercontent.com/xVicity/GLACIER/main/LATEST.lua"},
    {name = "AutoBlock", y = 65, color = Color3.fromRGB(255, 100, 100), text = "🛡️ Auto Block & Aimbot", url = "https://rawscripts.net/raw/The-Strongest-Battlegrounds-Auto-block-and-aimbot-17492"},
    {name = "ATrain", y = 130, color = Color3.fromRGB(255, 165, 0), text = "⚡ A-Train", url = "https://rawscripts.net/raw/The-Strongest-Battlegrounds-A-Train-22155"},
    {name = "Limitless", y = 195, color = Color3.fromRGB(138, 43, 226), text = "♾️ Limitless Legacy", url = "https://raw.githubusercontent.com/Wi-sp/Limitless-legacy/refs/heads/main/GUI"},
    {name = "Phantasm", y = 260, color = Color3.fromRGB(50, 50, 50), text = "👻 Phantasm", url = "https://raw.githubusercontent.com/ATrainz/Phantasm/refs/heads/main/Games/TSB.lua"},
    {name = "Chainsaw", y = 325, color = Color3.fromRGB(220, 20, 60), text = "🪚 Chainsaw Man", url = "https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/CHAINSAW%20MAN/Chainsaw%20Man%20(Obfuscated).txt"},
    {name = "Trashcan", y = 390, color = Color3.fromRGB(128, 128, 128), text = "🗑️ Trashcan Man", url = "https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/Trashcan%20Man"}
}

for _, btnData in ipairs(techButtons) do
    local btn = Instance.new("TextButton")
    btn.Parent = TechScroll
    btn.BackgroundColor3 = btnData.color
    btn.BorderSizePixel = 0
    btn.Position = UDim2.new(0, 0, 0, btnData.y)
    btn.Size = UDim2.new(1, 0, 0, 55)
    btn.Font = Enum.Font.GothamBold
    btn.Text = btnData.text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 16
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = btn
    
    btn.MouseButton1Click:Connect(function()
        pcall(function()
            loadstring(game:HttpGet(btnData.url))()
        end)
    end)
end

-- Misc Content
local MiscContent = Instance.new("Frame")
MiscContent.Parent = ContentFrame
MiscContent.BackgroundTransparency = 1
MiscContent.Size = UDim2.new(1, 0, 1, 0)
MiscContent.Visible = false

local MiscScroll = Instance.new("ScrollingFrame")
MiscScroll.Parent = MiscContent
MiscScroll.BackgroundTransparency = 1
MiscScroll.BorderSizePixel = 0
MiscScroll.Size = UDim2.new(1, 0, 1, 0)
MiscScroll.CanvasSize = UDim2.new(0, 0, 0, 550)
MiscScroll.ScrollBarThickness = 6
MiscScroll.ScrollBarImageColor3 = Color3.fromRGB(50, 150, 255)

-- Creator Info
local CreatorFrame = Instance.new("Frame")
CreatorFrame.Parent = MiscScroll
CreatorFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
CreatorFrame.BorderSizePixel = 0
CreatorFrame.Size = UDim2.new(1, 0, 0, 75)
local CreatorFrameCorner = Instance.new("UICorner")
CreatorFrameCorner.CornerRadius = UDim.new(0, 10)
CreatorFrameCorner.Parent = CreatorFrame

local CreatorIcon = Instance.new("TextLabel")
CreatorIcon.Parent = CreatorFrame
CreatorIcon.BackgroundTransparency = 1
CreatorIcon.Position = UDim2.new(0, 15, 0, 10)
CreatorIcon.Size = UDim2.new(0, 50, 0, 50)
CreatorIcon.Font = Enum.Font.GothamBold
CreatorIcon.Text = "👨‍💻"
CreatorIcon.TextColor3 = Color3.fromRGB(255, 255, 255)
CreatorIcon.TextSize = 35

local CreatorTitle = Instance.new("TextLabel")
CreatorTitle.Parent = CreatorFrame
CreatorTitle.BackgroundTransparency = 1
CreatorTitle.Position = UDim2.new(0, 75, 0, 15)
CreatorTitle.Size = UDim2.new(1, -90, 0, 20)
CreatorTitle.Font = Enum.Font.GothamBold
CreatorTitle.Text = "Created by Mr_Rock20"
CreatorTitle.TextColor3 = Color3.fromRGB(255, 215, 0)
CreatorTitle.TextSize = 18
CreatorTitle.TextXAlignment = Enum.TextXAlignment.Left

local CreatorSubtitle = Instance.new("TextLabel")
CreatorSubtitle.Parent = CreatorFrame
CreatorSubtitle.BackgroundTransparency = 1
CreatorSubtitle.Position = UDim2.new(0, 75, 0, 38)
CreatorSubtitle.Size = UDim2.new(1, -90, 0, 18)
CreatorSubtitle.Font = Enum.Font.Gotham
CreatorSubtitle.Text = "Hieu Hub V2 - Premium Script Hub"
CreatorSubtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
CreatorSubtitle.TextSize = 13
CreatorSubtitle.TextXAlignment = Enum.TextXAlignment.Left

-- Discord Frame
local DiscordFrame = Instance.new("Frame")
DiscordFrame.Parent = MiscScroll
DiscordFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
DiscordFrame.BorderSizePixel = 0
DiscordFrame.Position = UDim2.new(0, 0, 0, 85)
DiscordFrame.Size = UDim2.new(1, 0, 0, 90)
local DiscordFrameCorner = Instance.new("UICorner")
DiscordFrameCorner.CornerRadius = UDim.new(0, 10)
DiscordFrameCorner.Parent = DiscordFrame

local DiscordTitle = Instance.new("TextLabel")
DiscordTitle.Parent = DiscordFrame
DiscordTitle.BackgroundTransparency = 1
DiscordTitle.Position = UDim2.new(0, 15, 0, 10)
DiscordTitle.Size = UDim2.new(1, -30, 0, 25)
DiscordTitle.Font = Enum.Font.GothamBold
DiscordTitle.Text = "💬 Join Discord Community"
DiscordTitle.TextColor3 = Color3.fromRGB(88, 101, 242)
DiscordTitle.TextSize = 16
DiscordTitle.TextXAlignment = Enum.TextXAlignment.Left

local DiscordButton = Instance.new("TextButton")
DiscordButton.Parent = DiscordFrame
DiscordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
DiscordButton.BorderSizePixel = 0
DiscordButton.Position = UDim2.new(0, 15, 0, 45)
DiscordButton.Size = UDim2.new(1, -30, 0, 35)
DiscordButton.Font = Enum.Font.GothamBold
DiscordButton.Text = "📱 Copy Discord Link"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 15
local DiscordBtnCorner = Instance.new("UICorner")
DiscordBtnCorner.CornerRadius = UDim.new(0, 8)
DiscordBtnCorner.Parent = DiscordButton

-- Theme Frame
local ThemeFrame = Instance.new("Frame")
ThemeFrame.Parent = MiscScroll
ThemeFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
ThemeFrame.BorderSizePixel = 0
ThemeFrame.Position = UDim2.new(0, 0, 0, 185)
ThemeFrame.Size = UDim2.new(1, 0, 0, 170)
local ThemeFrameCorner = Instance.new("UICorner")
ThemeFrameCorner.CornerRadius = UDim.new(0, 10)
ThemeFrameCorner.Parent = ThemeFrame

local ThemeTitle = Instance.new("TextLabel")
ThemeTitle.Parent = ThemeFrame
ThemeTitle.BackgroundTransparency = 1
ThemeTitle.Position = UDim2.new(0, 15, 0, 10)
ThemeTitle.Size = UDim2.new(1, -30, 0, 25)
ThemeTitle.Font = Enum.Font.GothamBold
ThemeTitle.Text = "🎨 Border Theme"
ThemeTitle.TextColor3 = Color3.fromRGB(255, 100, 255)
ThemeTitle.TextSize = 16
ThemeTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Border Color Buttons
local borderColors = {
    {name = "Rainbow", color = nil, y = 45},
    {name = "Red", color = Color3.fromRGB(255, 50, 50), y = 45},
    {name = "Blue", color = Color3.fromRGB(50, 150, 255), y = 45},
    {name = "Green", color = Color3.fromRGB(50, 255, 100), y = 75},
    {name = "Purple", color = Color3.fromRGB(180, 50, 255), y = 75},
    {name = "Orange", color = Color3.fromRGB(255, 140, 0), y = 75},
    {name = "Pink", color = Color3.fromRGB(255, 105, 180), y = 105},
    {name = "Cyan", color = Color3.fromRGB(0, 255, 255), y = 105},
    {name = "Gold", color = Color3.fromRGB(255, 215, 0), y = 105}
}

local rainbowEnabled = true
local xPos = {0, 0.34, 0.67, 0, 0.34, 0.67, 0, 0.34, 0.67}

for i, colorData in ipairs(borderColors) do
    local colorBtn = Instance.new("TextButton")
    colorBtn.Parent = ThemeFrame
    colorBtn.BackgroundColor3 = colorData.color or Color3.fromRGB(255, 255, 255)
    colorBtn.BorderSizePixel = 0
    colorBtn.Position = UDim2.new(xPos[i], 0, 0, colorData.y)
    colorBtn.Size = UDim2.new(0.3, 0, 0, 25)
    colorBtn.Font = Enum.Font.GothamBold
    colorBtn.Text = colorData.name
    colorBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    colorBtn.TextSize = 12
    local colorBtnCorner = Instance.new("UICorner")
    colorBtnCorner.CornerRadius = UDim.new(0, 6)
    colorBtnCorner.Parent = colorBtn
    
    if colorData.name == "Rainbow" then
        colorBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    end
    
    colorBtn.MouseButton1Click:Connect(function()
        if colorData.name == "Rainbow" then
            rainbowEnabled = true
        else
            rainbowEnabled = false
            KeyRainbowBorder.Color = colorData.color
            MainRainbowBorder.Color = colorData.color
        end
    end)
end

-- Background Color Title
local BgTitle = Instance.new("TextLabel")
BgTitle.Parent = ThemeFrame
BgTitle.BackgroundTransparency = 1
BgTitle.Position = UDim2.new(0, 15, 0, 135)
BgTitle.Size = UDim2.new(1, -30, 0, 20)
BgTitle.Font = Enum.Font.GothamBold
BgTitle.Text = "🖼️ Background Color"
BgTitle.TextColor3 = Color3.fromRGB(150, 200, 255)
BgTitle.TextSize = 14
BgTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Background Color Picker
local bgColors = {
    {name = "Dark", color = Color3.fromRGB(20, 20, 30)},
    {name = "Black", color = Color3.fromRGB(10, 10, 10)},
    {name = "Navy", color = Color3.fromRGB(25, 25, 50)}
}

for i, bgData in ipairs(bgColors) do
    local bgBtn = Instance.new("TextButton")
    bgBtn.Parent = ThemeFrame
    bgBtn.BackgroundColor3 = bgData.color
    bgBtn.BorderSizePixel = 0
    bgBtn.Position = UDim2.new((i-1) * 0.34, 0, 0, 160)
    bgBtn.Size = UDim2.new(0.3, 0, 0, 25)
    bgBtn.Font = Enum.Font.GothamBold
    bgBtn.Text = bgData.name
    bgBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    bgBtn.TextSize = 12
    local bgBtnCorner = Instance.new("UICorner")
    bgBtnCorner.CornerRadius = UDim.new(0, 6)
    bgBtnCorner.Parent = bgBtn
    
    bgBtn.MouseButton1Click:Connect(function()
        MainFrame.BackgroundColor3 = bgData.color
    end)
end

-- Controls Info
local ControlsFrame = Instance.new("Frame")
ControlsFrame.Parent = MiscScroll
ControlsFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
ControlsFrame.BorderSizePixel = 0
ControlsFrame.Position = UDim2.new(0, 0, 0, 365)
ControlsFrame.Size = UDim2.new(1, 0, 0, 60)
local ControlsFrameCorner = Instance.new("UICorner")
ControlsFrameCorner.CornerRadius = UDim.new(0, 10)
ControlsFrameCorner.Parent = ControlsFrame

local ControlsTitle = Instance.new("TextLabel")
ControlsTitle.Parent = ControlsFrame
ControlsTitle.BackgroundTransparency = 1
ControlsTitle.Position = UDim2.new(0, 15, 0, 10)
ControlsTitle.Size = UDim2.new(1, -30, 0, 20)
ControlsTitle.Font = Enum.Font.GothamBold
ControlsTitle.Text = "⌨️ Keybinds"
ControlsTitle.TextColor3 = Color3.fromRGB(255, 215, 0)
ControlsTitle.TextSize = 16
ControlsTitle.TextXAlignment = Enum.TextXAlignment.Left

local ControlsInfo = Instance.new("TextLabel")
ControlsInfo.Parent = ControlsFrame
ControlsInfo.BackgroundTransparency = 1
ControlsInfo.Position = UDim2.new(0, 15, 0, 32)
ControlsInfo.Size = UDim2.new(1, -30, 0, 25)
ControlsInfo.Font = Enum.Font.Gotham
ControlsInfo.Text = "K = Toggle Menu"
ControlsInfo.TextColor3 = Color3.fromRGB(200, 200, 200)
ControlsInfo.TextSize = 14
ControlsInfo.TextXAlignment = Enum.TextXAlignment.Left

-- Rainbow Animation
RunService.RenderStepped:Connect(function()
    if rainbowEnabled then
        local hue = tick() % 5 / 5
        local color = Color3.fromHSV(hue, 1, 1)
        KeyRainbowBorder.Color = color
        MainRainbowBorder.Color = color
    end
end)

-- Tab Switching
local function switchTab(tab)
    ScriptsContent.Visible = false
    ExecutorContent.Visible = false
    TechContent.Visible = false
    MiscContent.Visible = false
    
    ScriptsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    ScriptsTab.TextColor3 = Color3.fromRGB(200, 200, 200)
    ExecutorTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    ExecutorTab.TextColor3 = Color3.fromRGB(200, 200, 200)
    TechTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    TechTab.TextColor3 = Color3.fromRGB(200, 200, 200)
    MiscTab.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    MiscTab.TextColor3 = Color3.fromRGB(200, 200, 200)
    
    if tab == "Scripts" then
        ScriptsContent.Visible = true
        ScriptsTab.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
        ScriptsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    elseif tab == "Executor" then
        ExecutorContent.Visible = true
        ExecutorTab.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
        ExecutorTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    elseif tab == "Tech" then
        TechContent.Visible = true
        TechTab.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
        TechTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    elseif tab == "Misc" then
        MiscContent.Visible = true
        MiscTab.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
        MiscTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end

-- Key System
local correctKey = "Hieuhub20"
local keyEntered = false

SubmitKeyButton.MouseButton1Click:Connect(function()
    if KeyTextBox.Text == correctKey then
        keyEntered = true
        KeyFrame.Visible = false
        MainFrame.Visible = true
        print("✅ Key accepted! Hieu Hub V2 loaded!")
        print("👨‍💻 Created by Mr_Rock20")
    else
        KeyTextBox.Text = ""
        KeyTextBox.PlaceholderText = "❌ Wrong key!"
        task.wait(2)
        KeyTextBox.PlaceholderText = "Enter key here..."
    end
end)

-- Toggle Menu with K
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.K and keyEntered then
        MainFrame.Visible = not MainFrame.Visible
    end
end)

-- Button Events
CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

ScriptsTab.MouseButton1Click:Connect(function()
    switchTab("Scripts")
end)

ExecutorTab.MouseButton1Click:Connect(function()
    switchTab("Executor")
end)

TechTab.MouseButton1Click:Connect(function()
    switchTab("Tech")
end)

MiscTab.MouseButton1Click:Connect(function()
    switchTab("Misc")
end)

ExecuteButton.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        loadstring(TextBox.Text)()
    end)
    if not success then
        warn("Execution error:", err)
    end
end)

InvisibleButton.MouseButton1Click:Connect(function()
    pcall(function()
        local char = player.Character
        if char then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") or part:IsA("Decal") then
                    part.Transparency = 1
                end
            end
        end
    end)
end)

EdgeIYButton.MouseButton1Click:Connect(function()
    pcall(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)
end)

FlyButton.MouseButton1Click:Connect(function()
    pcall(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/XNEOFF/FlyGuiScript/main/FlyGuiScript.txt'))()
    end)
end)

MinhNhatButton.MouseButton1Click:Connect(function()
    pcall(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MinhNhatHUB/MinhNhat/refs/heads/main/MinhNhatHUB%20V9.lua'))()
    end)
end)

DiscordButton.MouseButton1Click:Connect(function()
    setclipboard("discord.gg/yourinvite")
    DiscordButton.Text = "✅ Link Copied!"
    task.wait(2)
    DiscordButton.Text = "📱 Copy Discord Link"
end)

print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
print("✅ Hieu Hub V2 Loaded!")
print("👨‍💻 Created by: Mr_Rock20")
print("🔑 Key: Hieuhub20")
print("⌨️ Press K to Toggle Menu")
print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
