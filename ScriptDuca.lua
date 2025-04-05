loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "Duca Roblox",
         Animation = "Youtube : Duca Roblox"
         },
        Key = {
        KeySystem = false,
        Title = "Nhập Key",
        Description = "",
        KeyLink = "",
        Keys = {"Duca1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Key Đúng , Đang Load Menu",
       Incorrectkey = "Key Sai , Nhập Lại Hoặc Get Key",
       CopyKeyLink = "Đã Lấy Link"
      }
    }
  })

       MinimizeButton({
       Image = "https://www.roblox.com/asset/?id=83190276951914",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm"})
     
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Redz Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
  end
  })