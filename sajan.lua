local TeleportService = game:GetService("TeleportService")
---@diagnostic disable-next-line: deprecated
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
      Title = "H4xScript",
      TabWidth = "130",
      Size = UDim2.fromOffset(580,380),
      Acrylic = false,
      Theme = "Dark",
      MinimizeKey = Enum.KeyCode.LeftControl
})  

local Tabs = {
    MainTab = Window:AddTab({ Title = "Main", Icon = "key-round" })}





SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
InterfaceManager:SetFolder("H4xScript")
SaveManager:SetFolder("H4xScript/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
Fluent:Notify({
    Title = "H4xScript",
    Content = "ThankYou for choosing us<3.",
    Duration = 8
})
SaveManager:LoadAutoloadConfig()
