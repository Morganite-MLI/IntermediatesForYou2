local util = require("data-util")

if mods["MDbobelectronics2"] then
    util.remove_ingredient("advanced-processing-unit", "processing-electronics")
end

if (mods["Krastorio2"] and mods["bzgas2"]) or false then
    if mods["bzgold2"] then
        util.remove_ingredient("chemical-plant", "silver-plate")
    end
    if mods["bzaluminum2"] then
        util.remove_ingredient("kr-filtration-plant", "aluminum-plate")
    end
    if mods["bztin2"] then
        util.remove_ingredient("kr-filtration-plant", "solder")
    end
    util.remove_ingredient("kr-filtration-plant", "pipe")
    util.add_ingredient("kr-filtration-plant", "basic-chemical-plant", 1)
end

if mods["space-exploration"] then
    util.add_ingredient("se-delivery-cannon-chest", "shock-absorber", 10)

    util.remove_ingredient("speed-module-2", "electronic-circuit")
    util.remove_ingredient("speed-module-2", "electric-motor")

    util.remove_ingredient("speed-module-3", "integrated-circuit")

    util.remove_ingredient("productivity-module-3", "integrated-circuit")

    util.remove_ingredient("effectivity-module-3", "integrated-circuit")

    util.remove_ingredient("productivity-module-2", "electronic-circuit")

    util.remove_ingredient("effectivity-module-2", "electronic-circuit")
    if mods["BrassTacks-Updated"] then
        util.add_product("se-core-fragment-omni",{ type = "item", name = "zinc-ore", amount = 8 })
    end

    if mods["248k-Redux"] then
        util.replace_ingredient("se-canister", "plastic-bar", "fi_GFK", 5)
        util.remove_ingredient("se-canister", mods["Krastorio2"] and "kr-glass" or "glass")
    end
end