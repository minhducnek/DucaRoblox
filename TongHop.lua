require(game.ReplicatedStorage:WaitForChild("Notification")).new( " <Color=Yellow>Việt Nam 30/4<Color=/> " ):Display()

require(game.ReplicatedStorage:WaitForChild("Notification")).new( " <Color=Yellow>Độc Lập Tự Do Hạnh Phúc<Color=/> " ):Display()

require(game.ReplicatedStorage:WaitForChild("Notification")).new( " <Color=Yellow>30/4/1975 Húc Đổ Dinh Độc Lập<Color=/> " ):Display()

require(game.ReplicatedStorage:WaitForChild("Notification")).new( " <Color=Yellow>Kết Luận Cali Không Có Tuổi<Color=/> " ):Display()

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
    Title = "Duca Roblox Tổng Hợp",
    SubTitle = "| Blox Fruit",
    TabWidth = 157,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
        Main0=Window:AddTab({ Title="Thông Tin" }),
        Main1=Window:AddTab({ Title="Script Blox Fruit" }),
        Main2=Window:AddTab({ Title="Script Hop" }),
       Main3=Window:AddTab({ Title="Khác" }),
}
Tabs.Main0:AddLabel({
    Title = "Thông Tin Chính Chủ",
    Description = "",
    end
})
    Tabs.Main0:AddButton({
    Title = "Youtube",
    Description = "Duca Roblox",
    Callback = function()
        setclipboard("https://youtube.com/@duca-roblox?si=0ITr1HM2sYMZmw6a")
    end
})
    Tabs.Main0:AddButton({
    Title = "TikTok",
    Description = "Duca Roblox",
    Callback = function()
        setclipboard("https://www.tiktok.com/@duca.roblox")
    end
})
    
    Tabs.Main1:AddButton({
    Title="Redz Hub",
    Description="No Key",
    Callback=function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
  end
})

Tabs.Main2:AddButton({
    Title="GreenZ Hub",
    Description="No Key",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaAnarchist/GreenZ-Hub/refs/heads/main/KaitunDoughKing.lua"))()
  end
})
    
    Tabs.Main3:AddLabel({
    Title="Fix Lag ",
    Description="No Key",
    Callback=function()


  end
})
    Tabs.Main3:AddButton({
    Title="Fix Lag Duca Roblox",
    Description="No Key",
    Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/minhducnek/DucaRoblox/refs/heads/main/Fix-Lag.lua"))()
  end
})