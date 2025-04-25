for _, v in pairs(game:GetDescendants()) do
    if v:IsA("Trail") or v:IsA("Beam") or v:IsA("Explosion") then
        v:Destroy()
    elseif v:IsA("ParticleEmitter") then
        v.Enabled = false
        v.LightEmission = 0
        v.Rate = v.Rate * 0.3
        v.Lifetime = NumberRange.new(0.1)
    elseif v:IsA("Decal") or v:IsA("Texture") then
        v.Transparency = 0.6
    elseif v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("Part") then
        if v.Name ~= "Head" and v.Name ~= "HumanoidRootPart" then
            v.Material = Enum.Material.SmoothPlastic
            v.CastShadow = false
            v.Reflectance = 0
        end
    end
end

local Lighting = game:GetService("Lighting")
Lighting.GlobalShadows = false
Lighting.FogEnd = 1e12
Lighting.Brightness = 1
Lighting.ClockTime = 14
Lighting.EnvironmentDiffuseScale = 0.1
Lighting.EnvironmentSpecularScale = 0.1
Lighting.OutdoorAmbient = Color3.fromRGB(110, 110, 110)

for _, v in pairs(Lighting:GetChildren()) do
	if v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
		v.Enabled = false
	end
end

local terrain = workspace:FindFirstChildOfClass("Terrain")
if terrain then
	terrain.WaterWaveSize = 0.1
	terrain.WaterWaveSpeed = 0.3
	terrain.WaterReflectance = 0
	terrain.WaterTransparency = 0.6
end

settings().Rendering.QualityLevel = Enum.QualityLevel.Level02

local RunService = game:GetService("RunService")
local fpsGui = Instance.new("ScreenGui", game.CoreGui)
fpsGui.Name = "FPS_Display_80"

local fpsLabel = Instance.new("TextLabel", fpsGui)
fpsLabel.Position = UDim2.new(0, 10, 0, 10)
fpsLabel.Size = UDim2.new(0, 155, 0, 30)
fpsLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
fpsLabel.BackgroundTransparency = 0.4
fpsLabel.TextColor3 = Color3.new(1, 1, 1)
fpsLabel.Font = Enum.Font.Code
fpsLabel.TextSize = 18
fpsLabel.Text = " FPS Hiện Tại : ..."
fpsLabel.TextXAlignment = Enum.TextXAlignment.Left

local lastTime = tick()
local frames = 0

RunService.RenderStepped:Connect(function()
    frames += 1
    if tick() - lastTime >= 1 then
        fpsLabel.Text = " FPS Hiện Tại :" .. frames
        frames = 0
        lastTime = tick()
    end
end)