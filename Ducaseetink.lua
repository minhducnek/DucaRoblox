repeat task.wait() until game:IsLoaded()
local TablePlace = {7449423635,2753915549,4442272183}
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Duca Roblox", -- Required
	Text = "Script Fix Lag", -- Required
	Description = "Đang Load...",
	Icon = "rbxassetid://96772127161592", -- Optional
	Duration = 15
})
if table.find(TablePlace,game.PlaceId) then
loadstring(game:HttpGet("https://raw.githubusercontent.com/minhducnek/DucaRoblox/refs/heads/main/Fix-Lag.lua"))()
else
    game.Players.LocalPlayer:Kick("Không Hỗ Trợ")
end