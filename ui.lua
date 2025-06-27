local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()
local Window = Rayfield:CreateWindow({
   Name = "LT2 Legal UI by LScriptZ",
   LoadingTitle = "Lumber Tycoon 2",
   LoadingSubtitle = "Legal Script",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "LT2LegalUI"
   },
   Discord = {Enabled = false},
   KeySystem = false,
})

local Tab = Window:CreateTab("Main", 4483362458)
Tab:CreateButton({
    Name = "TP: Wood R Us",
    Callback = function()
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(265, 3, -85))
    end,
})
