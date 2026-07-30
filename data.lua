require("__khaoslead__.prototypes.particles.lead-ore-particle")
require("__khaoslead__.prototypes.entity.resources.lead-ore")
require("__khaoslead__.prototypes.entity.remnants.lead-chest")
require("__khaoslead__.prototypes.entity.lead-chest")

require("__khaoslead__.prototypes.item.lead-ore")
require("__khaoslead__.prototypes.item.lead-plate")
require("__khaoslead__.prototypes.item.lead-expansion-bolt")
require("__khaoslead__.prototypes.item.lead-chest")

require("__khaoslead__.prototypes.recipe.lead-plate")
require("__khaoslead__.prototypes.recipe.lead-expansion-bolt")
require("__khaoslead__.prototypes.recipe.lead-chest")

--- Either lead expansion bolts if enabled, otherwise lead plates.
--- @type data.ItemID
lead_expansion_bolt_or_lead_plate = settings.startup["khaoslead-more"].value and "lead-expansion-bolt" or "lead-plate"

require("__khaoslead__.prototypes.compat.base")
require("__khaoslead__.prototypes.compat.large-electric-pole")
require("__khaoslead__.prototypes.compat.more-ammo")
