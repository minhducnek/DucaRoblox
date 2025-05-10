local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=96772127161592"

UICorner.CornerRadius = UDim.new(1, 10) 
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()
local Window = Fluent:CreateWindow({
    Title = "Duca Roblox Chest ",
    SubTitle = "| Blox Fruit",
    TabWidth = 157,
    Size = UDim2.fromOffset(500, 300),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
        Main0=Window:AddTab({ Title="Thông Tin" }),
        Main1=Window:AddTab({ Title="Script Blox Fruit" }),
}
Main0:AddSection("Bản Quyền Thuộc Về Duca Roblox");
Tabs.Main0:AddButton({
    Title = "Youtube",
    Description = "Vào Đăng Ký Để Ra Thêm Nhiều Script",
    Callback = function()
        setclipboard("https://youtube.com/@duca-roblox?si=4dWJaXR_sZ7qs_8s");
require(game.ReplicatedStorage:WaitForChild("Notification")).new( " <Color=Green>Đã Sao Chép<Color=/> " ):Display()
    end
});
Tabs.Main0:AddButton({
    Title = "TikTok",
    Description = "Vào Follow Để Ra Thêm Nhiều Script",
    Callback = function()
        setclipboard("https://tiktok.com/@duca.roblox");
require(game.ReplicatedStorage:WaitForChild("Notification")).new( " <Color=Green>Đã Sao Chép<Color=/> " ):Display()
    end
})
---Main1