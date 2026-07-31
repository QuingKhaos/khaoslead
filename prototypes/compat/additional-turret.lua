local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["Additional-Turret-revived"] then
  khaoslib_recipe:load("at-acidthrower-turret"):add_ingredient {type = "item", name = "lead-plate", amount = 4} :commit()
  khaoslib_recipe:load("at-cannon-turret-mk1"):add_ingredient {type = "item", name = "lead-plate", amount = 4} :commit()
  khaoslib_recipe:load("at-rocket-turret-mk1"):add_ingredient {type = "item", name = "lead-plate", amount = 4} :commit()

  khaoslib_recipe:load("small-coal-cannon-shell"):replace_ingredient("copper-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()

  khaoslib_recipe:load("at_A1_b"):add_ingredient {type = "item", name = "lead-plate", amount = 20} :commit()
end
