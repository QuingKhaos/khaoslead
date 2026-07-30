local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["fixLargeElectricPole"] then
  khaoslib_recipe:load("large-electric-pole"):add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 2} :commit()
end
