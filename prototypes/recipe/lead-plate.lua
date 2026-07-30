local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "lead-plate",
  subgroup = "raw-material",
  order = "a[smelting]-a1[lead-plate]",
  enabled = true,
  allow_productivity = true,
  energy_required = 6.4,
  main_product = "lead-plate",
} :set_categories {"smelting"}
  :set_icons{{icon = "__khaoslead__/graphics/icons/lead-plate.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "lead-ore", amount = 2},
  }
  :set_results {
    {type = "item", name = "lead-plate", amount = 2},
  }

if settings.startup["khaoslead-byproduct"].value then
  recipe
    :replace_result("lead-plate", function(ingredient)
      ingredient.independent_probability = 5/6
      return ingredient
    end)
    :add_result {type = "item", name = "copper-ore", amount = 1, independent_probability = 1/3}
end

recipe:commit()
