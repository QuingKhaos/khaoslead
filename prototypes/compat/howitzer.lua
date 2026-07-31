local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["Howitzer"] then
  khaoslib_recipe:load("howitzer-turret-recipe"):add_ingredient {type = "item", name = "lead-plate", amount = 8} :commit()
end
