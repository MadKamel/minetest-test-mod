minetest.register_craftitem("mt_test_mod:steel_artefact_batte", {
	description = "Ancient Steel Batte Artefact",
	tiles = {"batte_artefact_steel.png"},
	wield_image = "batte_artefact_steel.png",
	inventory_image = "batte_artefact_steel.png"
})

minetest.register_craftitem("mt_test_mod:gold_artefact_batte", {
	description = "Ancient Gold Batte Artefact",
	tiles = {"batte_artefact_gold.png"},
	wield_image = "batte_artefact_gold.png",
	inventory_image = "batte_artefact_gold.png"
})

minetest.register_craftitem("mt_test_mod:steel_artefact_battewing", {
	description = "Ancient Steel Batte Wing",
	tiles = {"batte_artefact_steel_wing.png"},
	wield_image = "batte_artefact_steel_wing.png",
	inventory_image = "batte_artefact_steel_wing.png"
})

minetest.register_craftitem("mt_test_mod:gold_artefact_battewing", {
	description = "Ancient Gold Batte Wing",
	tiles = {"batte_artefact_gold_wing.png"},
	wield_image = "batte_artefact_gold_wing.png",
	inventory_image = "batte_artefact_gold_wing.png"
})

minetest.register_craft({
    type = "shaped",
    output = "mt_test_mod:gold_artefact_batte",
    recipe = {
        {"mt_test_mod:gold_artefact_battewing", "default:goldblock",  "mt_test_mod:gold_artefact_battewing"},
        {"", "default:gold_ingot",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "mt_test_mod:steel_artefact_batte",
    recipe = {
        {"mt_test_mod:steel_artefact_battewing", "default:steelblock",  "mt_test_mod:steel_artefact_battewing"},
        {"", "default:steel_ingot",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "mt_test_mod:gold_artefact_battewing",
    recipe = {
        {"default:gold_ingot", "default:gold_ingot"}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "mt_test_mod:steel_artefact_battewing",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot"}
    }
})
