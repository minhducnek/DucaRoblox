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

Tabs.Main1:AddButton({
    Title="HoHo Hub",
    Description="Key",
    Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
  end
})

Tabs.Main2:AddButton({
    Title="GreenZ Hub ( Dough King )",
    Description="No Key",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaAnarchist/GreenZ-Hub/refs/heads/main/KaitunDoughKing.lua"))()
  end
})
    Tabs.Main3:AddButton({
    Title="Fix Lag Duca Roblox",
    Description="No Key",
    Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/minhducnek/DucaRoblox/refs/heads/main/Fix-Lag.lua"))()
  end
})
Tabs.Main3:AddButton({
    Title="Bay",
    Description="No Key",
    Callback=function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
  end
})