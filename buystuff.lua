local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TITLE", "DarkTheme")


--! Character Tab
local CharTab = Window:NewTab("Characters")
local CharSection = CharTab:NewSection("Buy Characters")

local charTable = {}

for i,v in pairs(game:GetService("ReplicatedStorage").Products.Shop.ItemsAvailable.Skins:GetChildren()) do
    table.insert(charTable, v.Name)
end

local selected = ""

CharSection:NewDropdown("Select character to buy", "DropdownInf", charTable, function(value)
   selected = value
end)

CharSection:NewButton("Confirm Buy", "ButtonInfo", function()
    local args = {
        [1] = "DailyItem",
        [2] = selected
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy"):FireServer(unpack(args))    
end)

--! Marshmallow tab

local MarshTab = Window:NewTab("Marshmallow Tab")
local MarshSection = MarshTab:NewSection("Buy marshmallwowwwwww")

local marshTable = {}

for i2,v2 in pairs(game:GetService("ReplicatedStorage").Products.Shop.ItemsAvailable.Marshmallows:GetChildren()) do
    for i3,v3 in pairs(v2:GetChildren()) do 
        table.insert(marshTable, v3.Name)
    end
end

local marshSelected = ""

MarshSection:NewDropdown("Select Marshmallow to buy", "DropdownInf", marshTable, function(value)
   marshSelected = value
end)

MarshSection:NewButton("Confirm Buy", "ButtonInfo", function()
    local args = {
        [1] = "DailyItem",
        [2] = marshSelected
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy"):FireServer(unpack(args))    
end)


