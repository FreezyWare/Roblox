local Keyboard = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
Keyboard.IgnoreGuiInset = true
Keyboard.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
Keyboard.Name = "Keyboard"
Keyboard.ResetOnSpawn = false

local Main = Instance.new("Frame", Keyboard)
Main.Active = true
Main.BorderSizePixel = 0
Main.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Main.Selectable = true
Main.AnchorPoint = Vector2.new(0, 0.5)
Main.Size = UDim2.new(0, 300, 0, 300)
Main.Position = UDim2.new(0, 20, 0.5, 0)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Name = "Main"
Main.Draggable = true

local UIStroke = Instance.new("UIStroke", Main)
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(38, 40, 44)

local SearchContainer = Instance.new("Frame", Main)
SearchContainer.Active = true
SearchContainer.BorderSizePixel = 0
SearchContainer.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
SearchContainer.AnchorPoint = Vector2.new(0.5, 0)
SearchContainer.Size = UDim2.new(1, -10, 0, 25)
SearchContainer.Position = UDim2.new(0.5, 0, 0, 5)
SearchContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
SearchContainer.Name = "Search-Container"

local TextBox = Instance.new("TextBox", SearchContainer)
TextBox.CursorPosition = -1
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderColor3 = Color3.fromRGB(201, 201, 201)
TextBox.BorderSizePixel = 0
TextBox.TextTruncate = Enum.TextTruncate.AtEnd
TextBox.TextSize = 14
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.PlaceholderText = "Search Keybinds"
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Text = ""
TextBox.BackgroundTransparency = 1

local KeybindContainer = Instance.new("Frame", Main)
KeybindContainer.Active = true
KeybindContainer.BorderSizePixel = 0
KeybindContainer.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
KeybindContainer.AnchorPoint = Vector2.new(0.5, 0)
KeybindContainer.ClipsDescendants = true
KeybindContainer.Size = UDim2.new(1, -10, 1, -40)
KeybindContainer.Position = UDim2.new(0.5, 0, 0, 35)
KeybindContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeybindContainer.Name = "Keybind-Container"

local KeybindHolder = Instance.new("ScrollingFrame", KeybindContainer)
KeybindHolder.Active = true
KeybindHolder.BorderSizePixel = 0
KeybindHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
KeybindHolder.TopImage = ""
KeybindHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeybindHolder.Name = "Keybind-Holder"
KeybindHolder.BottomImage = ""
KeybindHolder.AnchorPoint = Vector2.new(0.5, 0.5)
KeybindHolder.AutomaticCanvasSize = Enum.AutomaticSize.XY
KeybindHolder.Size = UDim2.new(1, -10, 1, -10)
KeybindHolder.ScrollBarImageColor3 = Color3.fromRGB(201, 201, 201)
KeybindHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
KeybindHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeybindHolder.ScrollBarThickness = 3
KeybindHolder.BackgroundTransparency = 1

local UIListLayout = Instance.new("UIListLayout", KeybindHolder)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.Padding = UDim.new(0, 3)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local Toggle = Instance.new("TextButton", Keyboard)
Toggle.BorderSizePixel = 0
Toggle.TextSize = 14
Toggle.TextColor3 = Color3.fromRGB(231, 231, 231)
Toggle.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Toggle.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Toggle.RichText = true
Toggle.AnchorPoint = Vector2.new(0.5, 0)
Toggle.AutomaticSize = Enum.AutomaticSize.XY
Toggle.Size = UDim2.new(0, 38, 0, 24)
Toggle.Name = "Toggle"
Toggle.ClipsDescendants = true
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Text = "Open"
Toggle.Position = UDim2.new(0.5, 0, 0, 20)

local function toggleVisibility()
	local Main = Keyboard:FindFirstChild("Main")
	if Main then
		Main.Visible = not Main.Visible
	end
end

Toggle.MouseButton1Click:Connect(toggleVisibility)
Toggle.TouchTap:Connect(toggleVisibility)


local keybindButtons = {}

local function CreateKeybindButton(keyName)
	local Keybind = Instance.new("TextButton", KeybindHolder)
	Keybind.BorderSizePixel = 0
	Keybind.TextSize = 14
	Keybind.TextColor3 = Color3.fromRGB(231, 231, 231)
	Keybind.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
	Keybind.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Keybind.Size = UDim2.new(1, -10, 0, 30)
	Keybind.Name = "Keybind_" .. keyName
	Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Keybind.Text = keyName
	keybindButtons[keyName] = Keybind

	local vim = game:GetService('VirtualInputManager')

	Keybind.MouseButton1Down:Connect(function()
		local input = {
			hold = function(key)
				vim:SendKeyEvent(true, key, false, nil)
			end,
			press = function(key)
				vim:SendKeyEvent(true, key, false, nil)
				task.wait(0.005)
				vim:SendKeyEvent(false, key, false, nil)
			end
		}
		input.hold(Enum.KeyCode[keyName])
		Keybind.MouseButton1Up:Connect(function()
			vim:SendKeyEvent(false, Enum.KeyCode[keyName], false, nil)
		end)
	end)

	Keybind.TouchTap:Connect(function()
		local input = {
			hold = function(key)
				vim:SendKeyEvent(true, key, false, nil)
			end,
			press = function(key)
				vim:SendKeyEvent(true, key, false, nil)
				task.wait(0.005)
				vim:SendKeyEvent(false, key, false, nil)
			end
		}
		input.press(Enum.KeyCode[keyName])
	end)
end

for _, keyCode in pairs(Enum.KeyCode:GetEnumItems()) do
	CreateKeybindButton(keyCode.Name)
end

local function UpdateKeybindButtons(searchText)
	searchText = searchText:lower()

	for keyName, button in pairs(keybindButtons) do
		button:Destroy()
		keybindButtons[keyName] = nil
	end

	for _, keyCode in pairs(Enum.KeyCode:GetEnumItems()) do
		local keyName = keyCode.Name
		if keyName:lower():find(searchText, 1, true) then
			CreateKeybindButton(keyName)
		end
	end
end

TextBox:GetPropertyChangedSignal("Text"):Connect(function()
	UpdateKeybindButtons(TextBox.Text)
end)
