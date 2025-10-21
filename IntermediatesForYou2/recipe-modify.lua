local util = require("data-util")

-- Main vanilla changes
util.add_ingredient("flamethrower-turret", "turret-base", 1)

util.add_ingredient("gun-turret", "turret-base", 1)

util.remove_ingredient("flamethrower-turret", "iron-gear-wheel")

util.remove_ingredient("satellite", "low-density-structure")
util.add_ingredient("satellite", "satellite-body", 1)

util.remove_ingredient("artillery-turret", "steel-plate")
util.remove_ingredient("artillery-turret", "concrete")
util.add_ingredient("artillery-turret", "turret-large-base", 1)

util.add_ingredient("inserter", "spring", 2)
util.remove_ingredient("inserter", "iron-stick")

util.add_ingredient("fast-inserter", "shock-absorber", 1)
util.add_ingredient("car", "shock-absorber", 4)
util.add_ingredient("artillery-turret", "shock-absorber", 10)

-- Mod changes
if mods["bztin2"] then
    util.remove_ingredient("fast-inserter", "bronze-plate")
    if data.raw.item["motorized-articulator"] then
        util.remove_ingredient("motorized-articulator", "bronze-plate")
        util.add_ingredient("motorized-articulator", "spring", 2)
    end
end

if mods["bismuth"] then
    util.remove_ingredient("satellite", "bismuth-glass")
end

if mods["bzcarbon2"] then
    util.remove_ingredient("satellite", "graphene")
end

--Turrets
if mods["Krastorio2"] and mods["aai-industry"] then
    util.remove_ingredient("gun-turret", "kr-iron-beam")
    util.remove_ingredient("gun-turret", "motor")
    util.remove_ingredient("gun-turret", "iron-gear-wheel")
else
    util.remove_ingredient("gun-turret", "iron-gear-wheel")
end

if mods["bzlead2"] then
    util.remove_ingredient("flamethrower-turret", "lead-plate")

    util.remove_ingredient("pipe-to-ground", "lead-plate")
    util.remove_ingredient("pipe-to-ground", "tin-plate")
    util.add_ingredient("pipe-to-ground", "solder", 1)

    util.remove_ingredient("artillery-turret", "lead-plate")
end

if mods["Repair_Turret"] then
    util.remove_ingredient("repair-turret", "iron-gear-wheel")
    util.add_ingredient("repair-turret", "turret-base", 1)
end

if mods["RampantArsenal"]  then
    util.remove_ingredient("ridle-item-rampant-arsenal", "iron-plate")
    util.add_ingredient("ridle-item-rampant-arsenal", "turret-base", 1)

    util.remove_ingredient("shotgun-item-rampant-arsenal", "iron-gear-wheel")
    util.add_ingredient("shotgun-item-rampant-arsenal", "turret-base", 1)

    util.remove_ingredient("cannon-item-rampant-arsenal", "iron-gear-wheel")
    util.add_ingredient("cannon-item-rampant-arsenal", "turret-base", 1)

    util.remove_ingredient("rocket-item-rampant-arsenal", "iron-gear-wheel")
    util.add_ingredient("rocket-item-rampant-arsenal", "turret-base", 1)

    util.remove_ingredient("rapid-rocket-item-rampant-arsenal", "steel-plate")
    util.add_ingredient("rapid-rocket-item-rampant-arsenal", "rocket-item-rampant-arsenal", 1)

    util.remove_ingredient("lightning-item-rampant-arsenal", "iron-gear-wheel")
    util.add_ingredient("lightning-item-rampant-arsenal", "turret-base", 1)

    util.remove_ingredient("acid-cannon-rampant-arsenal", "iron-gear-wheel")
    util.add_ingredient("acid-cannon-rampant-arsenal", "turret-base", 1)

    util.remove_ingredient("capsule-item-rampant-arsenal", "steel-plate")
    util.add_ingredient("capsule-item-rampant-arsenal", "turret-base", 1)

    util.remove_ingredient("lite-artillery-turret-rampant-arsenal", "iron-gear-wheel")
    util.add_ingredient("lite-artillery-turret-rampant-arsenal", "turret-base", 1)

    util.remove_ingredient("rapid-cannon-item-rampant-arsenal", "steel-plate")
    util.remove_ingredient("rapid-cannon-item-rampant-arsenal", "concrete")
    util.add_ingredient("rapid-cannon-item-rampant-arsenal", "turret-large-base", 1)

    util.remove_ingredient("advanced-laser-item-rampant-arsenal", "steel-plate")
    util.add_ingredient("advanced-laser-item-rampant-arsenal", "turret-large-base", 1)

    util.remove_ingredient("suppression-cannon-item-rampant-arsenal", "steel-plate")
    util.remove_ingredient("suppression-cannon-item-rampant-arsenal", "concrete")
    util.add_ingredient("suppression-cannon-item-rampant-arsenal", "turret-large-base", 1)
    if mods["bzlead2"] then
        util.remove_ingredient("rapid-cannon-item-rampant-arsenal", "lead-plate")
        util.remove_ingredient("suppression-cannon-item-rampant-arsenal", "lead-plate")
    end
end

if mods["EndgameCombat"] then
    util.remove_ingredient("acid-turret", "iron-gear-wheel")
    util.add_ingredient("acid-turret", "turret-base", 1)

    util.remove_ingredient("sticky-turret", "iron-gear-wheel")
    util.add_ingredient("sticky-turret", "turret-base", 1)
end

--chemical plant
if mods["bzgas2"] then
    util.remove_ingredient("chemical-plant", "stone-brick")
    util.remove_ingredient("chemical-plant", "pipe")
    util.add_ingredient("chemical-plant", "basic-chemical-plant", 1)

    if (mods["bzlead2"] and mods["bztin2"]) or false then
        util.remove_ingredient("basic-chemical-plant", "tin-plate")
        util.remove_ingredient("basic-chemical-plant", "lead-plate")
        util.add_ingredient("basic-chemical-plant", "solder", 8)
    end
end

if mods["bobassembly"] then
    --chemical plant 2
    util.remove_ingredient("chemical-plant-2", "solder")
    util.remove_ingredient("chemical-plant-2", "pipe")
    --oil refinery 2
    util.replace_ingredient("oil-refinery-2", "stone-brick", "concrete")
    util.remove_ingredient("oil-refinery-2", "pipe")
    --should be done by BrimStuff-Updated but I will just do it here ¯\_(ツ)_/¯
    if mods["BrimStuff-Updated"] then
        util.add_crafting_category("assembling-machine", "chemical-plant-2", "basic-chemistry")
        util.add_crafting_category("assembling-machine", "chemical-plant-3", "basic-chemistry")
        util.add_crafting_category("assembling-machine", "chemical-plant-4", "basic-chemistry")
    end
end

--electronics
if (mods["MDbobelectronics2"] and mods["Krastorio2"]) or false then
    util.replace_ingredient("kr-electronic-components", "plastic-bar", "basic-electronic-components")
    util.replace_ingredient("kr-electronic-components", mods["Krastorio2"] and "kr-glass" or "glass", "BOBMD-electronic-components")
    util.remove_ingredient("kr-electronic-components", "silicon-wafer")

    util.remove_ingredient("processing-unit", "cpu")
    util.remove_ingredient("processing-unit", "BOBMD-electronic-components")
    util.remove_ingredient("processing-unit", "intergrated-electronics")
    util.replace_ingredient("processing-unit", "basic-electronic-components", "advanced-electronic-components")

    util.remove_ingredient("advanced-circuit", "basic-electronic-components")
    util.remove_ingredient("advanced-circuit", "BOBMD-electronic-components")

    util.replace_ingredient("advanced-processing-unit", "basic-electronic-components", "kr-electronic-components")
    util.add_ingredient("advanced-processing-unit", "advanced-electronic-components", 3)
    util.remove_ingredient("advanced-processing-unit", "BOBMD-electronic-components")
    util.remove_ingredient("advanced-processing-unit", "intergrated-electronics")

    if mods["space-exploration"] then
        util.remove_ingredient("se-space-assembling-machine", "advanced-circuit")
    end
end

if mods["Krastorio2"] then
    if mods["ThemTharHills-Updated"] then
        util.remove_ingredient("processing-unit", "integrated-circuit")
        util.remove_ingredient("processing-unit", "cpu")
        util.remove_ingredient("mainboard", "integrated-circuit")
        if not mods["MDbobelectronics2"]  then
            util.add_ingredient("processing-unit", "advanced-electronic-components", 2)
        end
    end
    --make the greenhouse upgradeable to bio lab
    util.remove_ingredient("kr-bio-lab", "kr-glass")
    util.remove_ingredient("kr-bio-lab", "kr-iron-beam")
    util.add_ingredient("kr-bio-lab", "kr-greenhouse", 1)

    util.remove_ingredient("kr-steel-pipe-to-ground", "lead-plate")
    util.remove_ingredient("kr-steel-pipe-to-ground", "tin-plate")
    util.add_ingredient("kr-steel-pipe-to-ground", "solder", 1)
    --turret
    util.add_ingredient("kr-laser-artillery-turret", "turret-large-base", 1)
    util.add_ingredient("kr-rocket-turret", "turret-large-base", 1)
    util.add_ingredient("kr-railgun-turret", "turret-large-base", 1)
    util.remove_ingredient("kr-railgun-turret", "steel-beam")
    if mods["bzlead2"] then
        util.remove_ingredient("kr-laser-artillery-turret", "lead-plate")
        util.remove_ingredient("kr-rocket-turret", "lead-plate")
        util.remove_ingredient("kr-railgun-turret", "lead-plate")
    end
end

if mods["space-exploration"] then
    util.add_ingredient("se-delivery-cannon-chest", "shock-absorber", 10)

    util.add_ingredient("speed-module-2", "electric-engine-unit", 10)

    util.remove_ingredient("speed-module-3", "mlcc")
    util.remove_ingredient("speed-module-3", "cooling-fan")

    util.remove_ingredient("productivity-module-3", "mlcc")
    util.remove_ingredient("productivity-module-3", "cooling-fan")

    util.remove_ingredient("effectivity-module-3", "mlcc")
    util.remove_ingredient("effectivity-module-3", "cooling-fan")

    util.set_ingredient("speed-module-4", "se-iridium-plate", 90)
    util.add_ingredient("speed-module-4", "elementium-plate", 30)

    if mods["bztin2"] then
        util.remove_ingredient("se-space-biochemical-laboratory", "solder")
    end

    if mods["Nylon2"] then
        util.add_ingredient("productivity-module-2", "nylon-machine-parts", 10)
    end

    if mods["248k-Redux"] then
        util.replace_ingredient("se-canister", "plastic-bar", "fi_materials_GFK", 5)
        util.remove_ingredient("se-canister", mods["Krastorio2"] and "kr-glass" or "glass")

        util.add_ingredient("effectivity-module-2", "el_lithium_battery", 10)
    end
end

if mods["BrassTacks-Updated"] then
    util.set_main_product("zinc-plate", "zinc-plate")
    util.add_product("zinc-plate", {type = "item", name="silver-ore", amount=1, probability=0.06})
end