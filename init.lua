local S = minetest.get_translator("minetest-test-mod")

minetest.register_node("minetest-test-mod:test_node", {
	description = S("Testing Node"),
	tiles = {"test_block.png"},
	groups = {cracky = 3},
})
