local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["khaossilicon"] then
  if khaoslib_recipe.exists("solar-cell") then
    khaoslib_recipe:load("solar-cell"):add_ingredient {type = "item", name = "lead-plate", amount = 1} :commit()

    if khaoslib_recipe.has_ingredient("solar-panel", "solar-cell") then
      khaoslib_recipe:load("solar-panel"):add_ingredient {type = "item", name = "lead-plate", amount = 5} :commit()
    end
  end
end
