minetest.register_craftitem("minetest-test-mod:steel_artefact_batte", {
	description = S("Ancient Steel Batte Artefact"),
	tiles = {"batte_artifact_steel.png"},
})

minetest.register_craftitem("minetest-test-mod:gold_artefact_batte", {
	description = S("Ancient Gold Batte Artefact"),
	tiles = {"batte_artifact_gold.png"},
})

minetest.register_craftitem("minetest-test-mod:steel_artefact_battewing", {
	description = S("Ancient Steel Batte Wing"),
	tiles = {"batte_artifact_steel_wing.png"},
})

minetest.register_craftitem("minetest-test-mod:gold_artefact_battewing", {
	description = S("Ancient Gold Batte Wing"),
	tiles = {"batte_artifact_gold_wing.png"},
})

minetest.register_craft({
    type = "shaped",
    output = "minetest-test-mod:gold_artefact_batte",
    recipe = {
        {"minetest-test-mod:gold_artefact_battewing", "default:goldblock",  "minetest-test-mod:gold_artefact_battewing"},
        {"", "default:gold_ingot",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "minetest-test-mod:steel_artefact_batte",
    recipe = {
        {"minetest-test-mod:steel_artefact_battewing", "default:steelblock",  "minetest-test-mod:steel_artefact_battewing"},
        {"", "default:steel_ingot",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "minetest-test-mod:gold_artefact_battewing",
    recipe = {
        {"default:gold_ingot", "default:gold_ingot"}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "minetest-test-mod:steel_artefact_battewing",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot"}
    }
})
