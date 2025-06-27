local p = game.Players.LocalPlayer.Character

local function tp(pos)
    if p and p:FindFirstChild("HumanoidRootPart") then
        p:MoveTo(pos)
    end
end

tp(Vector3.new(265, 3, -85)) -- Wood R Us
