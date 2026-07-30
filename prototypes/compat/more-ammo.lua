local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["More_Ammo"] then
  khaoslib_recipe:load("sp-ammo-recipe"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
  khaoslib_recipe:load("high-capacity-sp-ammo-recipe"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
elseif mods["more-ammo-redux"] then
  khaoslib_recipe:load("sp-rounds-magazine"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
  khaoslib_recipe:load("high-capacity-sp-rounds-magazine"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
end
