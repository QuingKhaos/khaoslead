local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["eve-weaponry"] then
  khaoslib_recipe:load("small-carbonized-lead"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
end
