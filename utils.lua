local Lighting = game:GetService("Lighting")
Lighting.Brightness = 2
Lighting.ClockTime = 14
Lighting.FogEnd = 100000
Lighting.GlobalShadows = false
Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)

local function CreateStatsDisplay()
    local RunService = game:GetService("RunService")
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Size = UDim2.new(0, 250, 0, 40)
    TextLabel.Position = UDim2.new(0, 10, 0, 10)
    TextLabel.BackgroundTransparency = 1
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.TextStrokeTransparency = 0
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.Font = Enum.Font.Code
    TextLabel.TextSize = 18
    TextLabel.Name = "FPSPing"
    TextLabel.Parent = game:GetService("CoreGui")

    local fps = 0
    local counter = 0
    local ping = 0

    RunService.RenderStepped:Connect(function(dt)
        counter = counter + 1
        fps = math.floor(1 / dt)
        if counter >= 10 then
            pcall(function()
                ping = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            TextLabel.Text = "FPS: " .. fps .. " | Ping: " .. ping .. "ms"
            counter = 0
        end
    end)
end

CreateStatsDisplay()
