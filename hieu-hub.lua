-- Hieu Hub with Lethal Dash - Complete Version
print("Loading Hieu Hub with Lethal Dash...")

-- Services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Lethal Dash Settings
local dashSettings = {
    enabled = false,
    dashSpeed = 150,
    dashKey = Enum.KeyCode.M,
    cooldown = 0.5
}

local canDash = true
local isDashing = false

-- Lethal Dash Function
local function performDash()
    if not canDash or not dashSettings.enabled or isDashing then return end
    
    canDash = false
    isDashing = true
    
    local direction = rootPart.CFrame.LookVector
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = direction * dashSettings.dashSpeed
    bodyVelocity.MaxForce = Vector3.new(100000, 0, 100000)
    bodyVelocity.Parent = rootPart
    
    local trail = Instance.new("Trail")
    local att0 = Instance.new("Attachment", rootPart)
    local att1 = Instance.new("Attachment", rootPart)
    att1.Position = Vector3.new(0, 0, 0)
    trail.Attachment0 = att0
    trail.Attachment1 = att1
    trail.Color = ColorSequence.new(Color3.fromRGB(255, 215, 0))
    trail.Lifetime = 0.5
    trail.Parent = rootPart
    
    wait(0.15)
    bodyVelocity:Destroy()
    isDashing = false
    
    wait(dashSettings.cooldown)
    canDash = true
    
    game:GetService("Debris"):AddItem(trail, 0.5)
    game:GetService("Debris"):AddItem(att0, 0.5)
    game:GetService("Debris"):AddItem(att1, 0.5)
end

-- GUI Creation
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
local TechTab = Instance.new("TextButton")
local MiscTab = Instance.new("TextButton")
local ContentFrame = Instance.new("Frame")

local correctKey = "Hieuhub20"
local keyEntered = false

ScreenGui.Name = "HieuHub"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Key Frame Setup
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

local RainbowBorder = Instance.new("UIStroke")
RainbowBorder.Parent = KeyFrame
RainbowBorder.Thickness = 3
RainbowBorder.Color = Color3.fromRGB(255, 0, 0)
RainbowBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local KeyFrameCorner = Instance.new("UICorner")
KeyFrameCorner.CornerRadius = UDim.new(0, 12)
KeyFrameCorner.Parent = KeyFrame

KeyTitleBar.Name = "KeyTitleBar"
KeyTitleBar.Parent = KeyFrame
KeyTitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
KeyTitleBar.BorderSizePixel = 0
KeyTitleBar.Size = UDim2.new(1, 0, 0, 35)

local KeyTitleCorner = Instance.new("UICorner")
KeyTitleCorner.CornerRadius = UDim.new(0, 12)
KeyTitleCorner.Parent = KeyTitleBar

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

KeyContentFrame.Name = "KeyContentFrame"
KeyContentFrame.Parent = KeyFrame
KeyContentFrame.BackgroundTransparency = 1
KeyContentFrame.Position = UDim2.new(0, 10, 0, 45)
KeyContentFrame.Size = UDim2.new(1, -20, 1, -55)

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

-- Main Frame
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

TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 40)

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

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

ScriptsTab.Name = "ScriptsTab"
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

ExecutorTab.Name = "ExecutorTab"
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

TechTab.Name = "TechTab"
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

MiscTab.Name = "MiscTab"
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

ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundTransparency = 1
ContentFrame.Position = UDim2.new(0, 10, 0, 95)
ContentFrame.Size = UDim2.new(1, -20, 1, -105)

-- Scripts Content
local ScriptsContent = Instance.new("Frame")
ScriptsContent.Name = "ScriptsContent"
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

-- Tech Content with Lethal Dash
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
TechScroll.CanvasSize = UDim2.new(0, 0, 0, 565)
TechScroll.ScrollBarThickness = 6
TechScroll.ScrollBarImageColor3 = Color3.fromRGB(50, 150, 255)

-- LETHAL DASH (First button - Yellow Gold)
local LethalDashButton = Instance.new("TextButton")
LethalDashButton.Parent = TechScroll
LethalDashButton.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
LethalDashButton.BorderSizePixel = 0
LethalDashButton.Position = UDim2.new(0, 0, 0, 0)
LethalDashButton.Size = UDim2.new(1, 0, 0, 55)
LethalDashButton.Font = Enum.Font.GothamBold
LethalDashButton.Text = "⚡ Lethal Dash [OFF]"
LethalDashButton.TextColor3 = Color3.fromRGB(0, 0, 0)
LethalDashButton.TextSize = 16
local LethalDashCorner = Instance.new("UICorner")
LethalDashCorner.CornerRadius = UDim.new(0, 8)
LethalDashCorner.Parent = LethalDashButton

local techButtons = {
    {name = "GLACIER", y = 65, color = Color3.fromRGB(100, 200, 255), text = "❄️ GLACIER", url = "https://raw.githubusercontent.com/xVicity/GLACIER/main/LATEST.lua"},
    {name = "AutoBlock", y = 130, color = Color3.fromRGB(255, 100, 100), text = "🛡️ Auto Block & Aimbot", url = "https://rawscripts.net/raw/The-Strongest-Battlegrounds-Auto-block-and-aimbot-17492"},
    {name = "ATrain", y = 195, color = Color3.fromRGB(255, 165, 0), text = "⚡ A-Train", url = "https://rawscripts.net/raw/The-Strongest-Battlegrounds-A-Train-22155"},
    {name = "Limitless", y = 260, color = Color3.fromRGB(138, 43, 226), text = "♾️ Limitless Legacy", url = "https://raw.githubusercontent.com/Wi-sp/Limitless-legacy/refs/heads/main/GUI"},
    {name = "Phantasm", y = 325, color = Color3.fromRGB(50, 50, 50), text = "👻 Phantasm", url = "https://raw.githubusercontent.com/ATrainz/Phantasm/refs/heads/main/Games/TSB.lua"},
    {name = "Chainsaw", y = 390, color = Color3.fromRGB(220, 20, 60), text = "🪚 Chainsaw Man", url = "https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/CHAINSAW%20MAN/Chainsaw%20Man%20(Obfuscated).txt"},
    {name = "Trashcan", y = 455, color = Color3.fromRGB(128, 128, 128), text = "🗑️ Trashcan Man", url = "https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/Trashcan%20Man"},
    {name = "MinhNhat", y = 520, color = Color3.fromRGB(255, 50, 150), text = "💻 MinhNhat HUB V9", url = "https://raw.githubusercontent.com/MinhNhatHUB/MinhNhat/refs/heads/main/MinhNhatHUB%20V9.lua"}
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

local DiscordFrame = Instance.new("Frame")
DiscordFrame.Parent = MiscContent
DiscordFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
DiscordFrame.BorderSizePixel = 0
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
DiscordTitle.Text = "💬 Join Discord Server"
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

local ThemeFrame = Instance.new("Frame")
ThemeFrame.Parent = MiscContent
ThemeFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
ThemeFrame.BorderSizePixel = 0
ThemeFrame.Position = UDim2.new(0, 0, 0, 100)
ThemeFrame.Size = UDim2.new(1, 0, 0, 85)
local ThemeFrameCorner = Instance.new("UICorner")
ThemeFrameCorner.CornerRadius = UDim.new(0, 10)
ThemeFrameCorner.Parent = ThemeFrame

local ThemeTitle = Instance.new("TextLabel")
ThemeTitle.Parent = ThemeFrame
ThemeTitle.BackgroundTransparency = 1
ThemeTitle.Position = UDim2.new(0, 15, 0, 10)
ThemeTitle.Size = UDim2.new(1, -30, 0, 25)
ThemeTitle.Font = Enum.Font.GothamBold
ThemeTitle.Text = "🎨 Border Color Theme"
ThemeTitle.TextColor3 = Color3.fromRGB(255, 100, 255)
ThemeTitle.TextSize = 16
ThemeTitle.TextXAlignment = Enum.TextXAlignment.Left

local ColorContainer = Instance.new("Frame")
ColorContainer.Parent = ThemeFrame
ColorContainer.BackgroundTransparency = 1
ColorContainer.Position = UDim2.new(0, 15, 0, 40)
ColorContainer.Size = UDim2.new(1, -30, 0, 35)

local colors = {
    {name = "Rainbow", color = nil, isRainbow = true},
    {name = "Red", color = Color3.fromRGB(255, 50, 50)},
    {name = "Blue", color = Color3.fromRGB(50, 150, 255)},
    {name = "Green", color = Color3.fromRGB(50, 255, 100)},
    {name = "Purple", color = Color3.fromRGB(180, 50, 255)},
    {name = "Orange", color = Color3.fromRGB(255, 140, 0)},
    {name = "Pink", color = Color3.fromRGB(255, 105, 180)},
    {name = "Cyan", color = Color3.fromRGB(0, 255, 255)},
}

local colorButtons =
