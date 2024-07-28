local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")
local runService = game:GetService("RunService")
local coreGui = game:GetService("CoreGui")
local viewport = workspace.CurrentCamera.ViewportSize

local function GenerateRandomString(length)
	local chars = {}
	for i = 1, length do
		local char = string.char(math.random(65, 90))
		if math.random() > 0.5 then
			char = string.char(math.random(97, 122))
		end
		table.insert(chars, char)
	end
	return table.concat(chars)
end

local Element = {}

local ImGui = Instance.new("ScreenGui", runService:IsStudio() and players.LocalPlayer:WaitForChild("PlayerGui") or coreGui);
ImGui.IgnoreGuiInset = true
ImGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
ImGui.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
ImGui.ResetOnSpawn = false
ImGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local Main = Instance.new("Frame", ImGui)
Main.Active = true
Main.BorderSizePixel = 0
Main.BackgroundColor3 = Color3.fromRGB(23, 20, 19)
Main.Selectable = true
Main.Size = UDim2.new(0, 530, 0, 330)
Main.Position = UDim2.fromOffset((viewport.X/2) - (Main.Size.X.Offset / 2), (viewport.Y/2) - (Main.Size.Y.Offset / 2));
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
Main.Draggable = true

local Header = Instance.new("Frame", Main)
Header.Active = true
Header.BorderSizePixel = 0
Header.BackgroundColor3 = Color3.fromRGB(42, 75, 123)
Header.Size = UDim2.new(1, 0, 0, 23)
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))

local Title = Instance.new("TextLabel", Header)
Title.Active = true
Title.TextTruncate = Enum.TextTruncate.AtEnd
Title.BorderSizePixel = 0
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14
Title.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Title.TextColor3 = Color3.fromRGB(231, 231, 231)
Title.BackgroundTransparency = 1
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.Size = UDim2.new(0, 0, 0, 15)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.Text = "Internal Executor"
Title.AutomaticSize = Enum.AutomaticSize.X
Title.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
Title.Position = UDim2.new(0.5, 0, 0.5, 0)

local UIPadding = Instance.new("UIPadding", Title)
UIPadding.PaddingTop = UDim.new(0, 1)

local UISizeConstraint = Instance.new("UISizeConstraint", Title)
UISizeConstraint.MinSize = Vector2.new(0, 15)
UISizeConstraint.MaxSize = Vector2.new(250, 15)

local MiniBtn = Instance.new("Frame", Header)
MiniBtn.Active = true
MiniBtn.BorderSizePixel = 0
MiniBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiniBtn.AnchorPoint = Vector2.new(0, 0.5)
MiniBtn.ClipsDescendants = true
MiniBtn.Size = UDim2.new(0, 18, 0, 18)
MiniBtn.Position = UDim2.new(0, 5, 0.5, 0)
MiniBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiniBtn.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
MiniBtn.BackgroundTransparency = 1

local Icon = Instance.new("ImageButton", MiniBtn)
Icon.Active = true
Icon.BorderSizePixel = 0
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.Image = "rbxassetid://18690610035"
Icon.Size = UDim2.new(0, 11, 0, 11)
Icon.ClipsDescendants = true
Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon.BackgroundTransparency = 1
Icon.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
Icon.Position = UDim2.new(0.5, 0, 0.5, 0)

local ExitBtn = Instance.new("Frame", Header)
ExitBtn.Active = true
ExitBtn.BorderSizePixel = 0
ExitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExitBtn.AnchorPoint = Vector2.new(1, 0.5)
ExitBtn.ClipsDescendants = true
ExitBtn.Size = UDim2.new(0, 18, 0, 18)
ExitBtn.Position = UDim2.new(1, -5, 0.5, 0)
ExitBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExitBtn.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
ExitBtn.BackgroundTransparency = 1

local ExitIcon = Instance.new("ImageButton", ExitBtn)
ExitIcon.Active = true
ExitIcon.BorderSizePixel = 0
ExitIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExitIcon.AnchorPoint = Vector2.new(0.5, 0.5)
ExitIcon.Image = "rbxassetid://10747384394"
ExitIcon.Size = UDim2.new(1, 0, 1, 0)
ExitIcon.ClipsDescendants = true
ExitIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExitIcon.BackgroundTransparency = 1
ExitIcon.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
ExitIcon.Position = UDim2.new(0.5, 0, 0.5, 0)

local TabContainer = Instance.new("Frame", Main)
TabContainer.Active = true
TabContainer.BorderSizePixel = 0
TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabContainer.Size = UDim2.new(1, 0, 0, 35)
TabContainer.Position = UDim2.new(0, 0, 0, 25)
TabContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabContainer.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
TabContainer.BackgroundTransparency = 1

local TabHolder = Instance.new("ScrollingFrame", TabContainer)
TabHolder.Active = true
TabHolder.BorderSizePixel = 0
TabHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
TabHolder.TopImage = ""
TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabHolder.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
TabHolder.BottomImage = ""
TabHolder.AutomaticCanvasSize = Enum.AutomaticSize.X
TabHolder.Size = UDim2.new(1, -10, 1, 0)
TabHolder.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
TabHolder.Position = UDim2.new(0, 5, 0, 0)
TabHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabHolder.ScrollBarThickness = 0
TabHolder.BackgroundTransparency = 1

local UIListLayout = Instance.new("UIListLayout", TabHolder)
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.FillDirection = Enum.FillDirection.Horizontal

local activeTab = nil

function Element:Tab(title)
	local Tab = Instance.new("TextButton", TabHolder)
	Tab.BorderSizePixel = 0
	Tab.TextSize = 14
	Tab.TextColor3 = Color3.fromRGB(231, 231, 231)
	Tab.BackgroundColor3 = Color3.fromRGB(35, 61, 92)
	Tab.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Tab.AutomaticSize = Enum.AutomaticSize.X
	Tab.Size = UDim2.new(0, 0, 0, 25)
	Tab.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
	Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Tab.Text = title or "Tab"

	local UICorner = Instance.new("UICorner", Tab)
	UICorner.CornerRadius = UDim.new(0, 3)

	local CoverUp = Instance.new("Frame", Tab)
	CoverUp.Active = true
	CoverUp.BorderSizePixel = 0
	CoverUp.BackgroundColor3 = Color3.fromRGB(35, 61, 92)
	CoverUp.AnchorPoint = Vector2.new(0, 1)
	CoverUp.ClipsDescendants = true
	CoverUp.Size = UDim2.new(1, 0, 0, 5)
	CoverUp.Position = UDim2.new(0, 0, 1, 0)
	CoverUp.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CoverUp.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))

	runService.RenderStepped:Wait()
	local newSize = Tab.TextBounds.X + 10
	Tab.Size = UDim2.new(0, newSize, 0, 25)

	local function updateTabColor(tab, cover, isActive)
		if isActive then
			tab.BackgroundColor3 = Color3.fromRGB(56, 123, 201)
			cover.BackgroundColor3 = Color3.fromRGB(56, 123, 201)
		else
			tab.BackgroundColor3 = Color3.fromRGB(35, 61, 92)
			cover.BackgroundColor3 = Color3.fromRGB(35, 61, 92)
		end
	end

	if not activeTab then
		activeTab = Tab
		updateTabColor(Tab, CoverUp, true)
	end

	Tab.MouseEnter:Connect(function()
		if activeTab ~= Tab then
			Tab.BackgroundColor3 = Color3.fromRGB(60, 105, 157)
			CoverUp.BackgroundColor3 = Color3.fromRGB(60, 105, 157)
		end
	end)

	Tab.MouseLeave:Connect(function()
		if activeTab ~= Tab then
			updateTabColor(Tab, CoverUp, false)
		end
	end)

	Tab.MouseButton1Click:Connect(function()
		if activeTab ~= Tab then
			updateTabColor(activeTab, activeTab:FindFirstChildWhichIsA("Frame"), false)
			activeTab = Tab
			updateTabColor(Tab, CoverUp, true)
		end
	end)
end

local Divider = Instance.new("Frame", TabContainer)
Divider.Active = true
Divider.BorderSizePixel = 0
Divider.BackgroundColor3 = Color3.fromRGB(56, 119, 194)
Divider.AnchorPoint = Vector2.new(0.5, 1)
Divider.ClipsDescendants = true
Divider.Size = UDim2.new(1, -10, 0, 1)
Divider.Position = UDim2.new(0.5, 0, 1, 0)
Divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
Divider.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))

local MainContainer = Instance.new("Frame", Main)
MainContainer.Active = true
MainContainer.BorderSizePixel = 0
MainContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainContainer.Size = UDim2.new(1, -10, 1.01515, -70)
MainContainer.Position = UDim2.new(0, 5, 0, 65)
MainContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainContainer.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
MainContainer.BackgroundTransparency = 1

local TextEditorHolder = Instance.new("Frame", MainContainer)
TextEditorHolder.Active = true
TextEditorHolder.BorderSizePixel = 0
TextEditorHolder.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TextEditorHolder.ClipsDescendants = true
TextEditorHolder.Size = UDim2.new(1, 0, 1, -30)
TextEditorHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextEditorHolder.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))

local LineContainer = Instance.new("Frame", TextEditorHolder)
LineContainer.Active = true
LineContainer.BorderSizePixel = 0
LineContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LineContainer.ClipsDescendants = true
LineContainer.Size = UDim2.new(0, 30, 1, 0)
LineContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
LineContainer.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
LineContainer.BackgroundTransparency = 1

local Divider = Instance.new("Frame", LineContainer)
Divider.Active = true
Divider.BorderSizePixel = 0
Divider.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Divider.AnchorPoint = Vector2.new(1, 0.5)
Divider.ClipsDescendants = true
Divider.Size = UDim2.new(0, 1, 1, -10)
Divider.Position = UDim2.new(1, 0, 0.5, 0)
Divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
Divider.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))

local LineHolder = Instance.new("ScrollingFrame", LineContainer)
LineHolder.Active = true
LineHolder.ScrollingDirection = Enum.ScrollingDirection.Y
LineHolder.BorderSizePixel = 0
LineHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
LineHolder.TopImage = ""
LineHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LineHolder.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
LineHolder.BottomImage = ""
LineHolder.AnchorPoint = Vector2.new(0, 0.5)
LineHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
LineHolder.Size = UDim2.new(1, 0, 1, -10)
LineHolder.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
LineHolder.Position = UDim2.new(0, 0, 0.5, 0)
LineHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
LineHolder.ScrollBarThickness = 0
LineHolder.BackgroundTransparency = 1

local Line = Instance.new("TextLabel", LineHolder)
Line.Active = true
Line.TextTruncate = Enum.TextTruncate.AtEnd
Line.BorderSizePixel = 0
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.TextSize = 14
Line.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Line.TextColor3 = Color3.fromRGB(201, 201, 201)
Line.BackgroundTransparency = 1
Line.RichText = true
Line.Size = UDim2.new(0, 20, 0, 20)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.Text = "1"
Line.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))

local UIListLayout = Instance.new("UIListLayout", LineHolder)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local EditorContainer = Instance.new("Frame", TextEditorHolder)
EditorContainer.Active = true
EditorContainer.BorderSizePixel = 0
EditorContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EditorContainer.ClipsDescendants = true
EditorContainer.Size = UDim2.new(1, -40, 1, -10)
EditorContainer.Position = UDim2.new(0, 35, 0, 5)
EditorContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
EditorContainer.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
EditorContainer.BackgroundTransparency = 1

local EditorHolder = Instance.new("ScrollingFrame", EditorContainer)
EditorHolder.Active = true
EditorHolder.BorderSizePixel = 0
EditorHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
EditorHolder.TopImage = ""
EditorHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EditorHolder.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
EditorHolder.BottomImage = ""
EditorHolder.AutomaticCanvasSize = Enum.AutomaticSize.XY
EditorHolder.Size = UDim2.new(1, 0, 1, 0)
EditorHolder.ScrollBarImageColor3 = Color3.fromRGB(201, 201, 201)
EditorHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
EditorHolder.ScrollBarThickness = 3
EditorHolder.BackgroundTransparency = 1

local TextBox = Instance.new("TextBox", EditorHolder)
TextBox.CursorPosition = -1
TextBox.TextColor3 = Color3.fromRGB(201, 201, 201)
TextBox.BorderSizePixel = 0
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextSize = 14
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextBox.RichText = true
TextBox.AutomaticSize = Enum.AutomaticSize.XY
TextBox.MultiLine = true
TextBox.ClearTextOnFocus = false
TextBox.PlaceholderText = 'print("Hello World"!)'
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Text = ""
TextBox.BackgroundTransparency = 1
TextBox.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))

local UIPadding = Instance.new("UIPadding", TextBox)
UIPadding.PaddingTop = UDim.new(0, 2)
UIPadding.PaddingLeft = UDim.new(0, 5)

local ButtonContainer = Instance.new("Frame", MainContainer)
ButtonContainer.Active = true
ButtonContainer.BorderSizePixel = 0
ButtonContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonContainer.AnchorPoint = Vector2.new(0, 1)
ButtonContainer.ClipsDescendants = true
ButtonContainer.Size = UDim2.new(1, 0, 0, 30)
ButtonContainer.Position = UDim2.new(0, 0, 1, 0)
ButtonContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonContainer.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
ButtonContainer.BackgroundTransparency = 1

local ButtonHolder = Instance.new("ScrollingFrame", ButtonContainer)
ButtonHolder.Active = true
ButtonHolder.BorderSizePixel = 0
ButtonHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
ButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonHolder.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
ButtonHolder.AutomaticCanvasSize = Enum.AutomaticSize.X
ButtonHolder.Size = UDim2.new(1, -100, 1, 0)
ButtonHolder.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ButtonHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonHolder.ScrollBarThickness = 0
ButtonHolder.BackgroundTransparency = 1

local ButtonHolderLayout = Instance.new("UIListLayout", ButtonHolder)
ButtonHolderLayout.Padding = UDim.new(0, 5)
ButtonHolderLayout.VerticalAlignment = Enum.VerticalAlignment.Center
ButtonHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
ButtonHolderLayout.FillDirection = Enum.FillDirection.Horizontal

-- Element:Button("name")
function Element:Button(title, callback)
	local Button = Instance.new("TextButton", ButtonHolder)
	Button.BorderSizePixel = 0
	Button.AutoButtonColor = false
	Button.TextSize = 14
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundColor3 = Color3.fromRGB(67, 151, 251)
	Button.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Button.AutomaticSize = Enum.AutomaticSize.XY
	Button.Size = UDim2.new(0, 10, 0, 0)
	Button.BackgroundTransparency = 0.5
	Button.Name = string.format("[%s] [%s] [%s]", GenerateRandomString(5), GenerateRandomString(5), GenerateRandomString(5))
	Button.Text = title or "Button"
	Button.Position = UDim2.new(0.18519, 0, 0, 0)

	local UIPaddingExecBtn = Instance.new("UIPadding", Button)
	UIPaddingExecBtn.PaddingTop = UDim.new(0, 4)
	UIPaddingExecBtn.PaddingRight = UDim.new(0, 10)
	UIPaddingExecBtn.PaddingLeft = UDim.new(0, 10)
	UIPaddingExecBtn.PaddingBottom = UDim.new(0, 4)

	local function animateButtonColor(button, color)
		button.BackgroundColor3 = color
	end

	Button.MouseEnter:Connect(function()
		animateButtonColor(Button, Color3.fromRGB(60, 105, 157))
	end)

	Button.MouseLeave:Connect(function()
		animateButtonColor(Button, Color3.fromRGB(67, 151, 251))
	end)

	Button.MouseButton1Click:Connect(function()
		if runService:IsStudio() then
			warn("Execution disabled due to loadstring()")
		elseif callback then
			callback()
		end
	end)
end

ExitIcon.MouseButton1Click:Connect(function()
	ImGui:Destroy()
end)
Icon.MouseButton1Click:Connect(function()
	if Main.Transparency == 0 then
		Icon.Rotation = 180
		Main.Transparency = 1
		MainContainer.Visible = false
		TabContainer.Visible = false
		Header.Transparency = 0.3
	else
		Icon.Rotation = 0
		Main.Transparency = 0
		MainContainer.Visible = true
		TabContainer.Visible = true
		Header.Transparency = 0
	end
end)

local injected = false

Element:Tab("Execution")
Element:Tab("Scripts")
Element:Tab("Settings")
Element:Tab("Theme")

Element:Button("Execute", function()
	if injected == true then
		loadstring(TextBox.Text)()
		Title.Text = "Internal Executor - Injected"
	else
		Title.Text = "Internal Executor - Not Injected"
		wait(2)
		Title.Text = "Internal Executor"
	end
end)
Element:Button("Clear", function()
	TextBox.Text = ""
end)
Element:Button("Open", function()
	
end)
Element:Button("File", function()
	
end)
Element:Button("Inject", function()
	if injected == true then
		Title.Text = "Internal Executor - Already Injected"
		wait(2)
		Title.Text = "Internal Executor - Injected"
	else
		Title.Text = "Internal Executor - Getting login token."
		wait(1)
		Title.Text = "Internal Executor - Version: 6b63ea89d2e54fd7 | LIVE"
		wait(1)
		Title.Text = "Internal Executor - Setting Up."
		wait(0.5)
		Title.Text = "Internal Executor - Authenticating."
		wait(0.5)
		Title.Text = "External Executor - Done!"
		wait(0.5)
		Title.Text = "External Executor - Injected"
		injected = true
	end
end)
