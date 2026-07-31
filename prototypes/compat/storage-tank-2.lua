local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["StorageTank2_2_0"] then
  khaoslib_recipe:load("storage-tank2"):add_ingredient {type = "item", name = "lead-plate", amount = 32} :commit()
end
