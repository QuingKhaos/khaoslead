local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local lead_expansion_bolt_or_lead_plate = settings.startup["khaoslead-more"].value and "lead-expansion-bolt" or "lead-plate"

khaoslib_recipe:load("storage-tank")
  :replace_ingredient("iron-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
  :add_ingredient {type = "item", name = "lead-plate", amount = 10}
  :commit()

khaoslib_recipe:load("pipe"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
khaoslib_recipe:load("pipe-to-ground"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
khaoslib_recipe:load("big-electric-pole"):add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 4} :commit()
khaoslib_recipe:load("substation"):add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 4} :commit()

khaoslib_recipe:load("electric-furnace")
  :replace_ingredient("steel-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 2) return ingredient end)
  :add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 4}
  :commit()

khaoslib_recipe:load("assembling-machine-1")
  :replace_ingredient("iron-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 4) return ingredient end)
  :add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 4}
  :commit()

khaoslib_recipe:load("chemical-plant")
  :replace_ingredient("iron-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
  :add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 4}
  :commit()

khaoslib_recipe:load("centrifuge"):add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 100} :commit()
khaoslib_recipe:load("lab"):add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 4} :commit()

khaoslib_recipe:load("battery"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
khaoslib_recipe:load("sulfuric-acid"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
khaoslib_recipe:load("uranium-fuel-cell"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()

khaoslib_recipe:load("gun-turret")
  :replace_ingredient("iron-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 8) return ingredient end)
  :add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 8}
  :commit()

khaoslib_recipe:load("flamethrower-turret"):add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 4} :commit()
khaoslib_recipe:load("artillery-turret"):add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 40} :commit()
khaoslib_recipe:load("laser-turret"):add_ingredient {type = "item", name = lead_expansion_bolt_or_lead_plate, amount = 2} :commit()
khaoslib_recipe:load("firearm-magazine"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
khaoslib_recipe:load("shotgun-shell"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "lead-plate" return ingredient end):commit()
