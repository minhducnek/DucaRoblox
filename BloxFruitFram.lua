loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
       local Window = MakeWindow({
repeat wait() until game:IsLoaded()
local ImageButton = ("ImageButton")
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true 
ImageButton.Image = "http://www.roblox.com/asset/?id=96772127161592"
ImageButton.MouseButton1Down:Connect(function()
 game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)
    Title = "Duca Roblox Blox Fruit",
    SubTitle = "| Freemium",
    TabWidth = 157,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.End
})