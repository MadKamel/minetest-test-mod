local S = minetest.get_translator("minetest-test-mod")



-- Nodes for general testing. A kind of blank slate node.
minetest.register_node("minetest-test-mod:test_node", {
	description = S("Testing Node"),
	tiles = {"default_steel_block.png", "test_block_side.png"},
	groups = {dig_immediate = 3},
})

minetest.register_craftitem("minetest-test-mod:test_craftitem", {
	description = S("Testing Craftitem"),
	tiles = {"test_craftitem.png"},
})



-- This is a node that I am using to test out node inventories.
minetest.register_node("minetest-test-mod:inventory_testing_node", {
	description = S("Meta Inventory Testing Node"),
	-- recycled code from KSurvive pitch source.
	tiles = {
		{
			name = "test_machine_animation.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 8,
			},
		},
		{
			name = "test_machine_animation.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 8,
			},
		},
	},
	groups = {cracky = 3},
	-- https://rubenwardy.com/minetest_modding_book/en/players/formspecs.html
	after_place_node = function(pos, placer)
		-- This function is run when the chest node is placed.
		-- The following code sets the formspec for chest.
		-- Meta is a way of storing data onto a node.

		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
			"formspec_version[4]" ..
			"size[5,5]" ..
			"label[1,1;This is shown on right click]" ..
			"field[1,2;2,1;x;x;]")
	end,
	on_receive_fields = function(pos, formname, fields, player)
		if fields.quit then
			return
		end
		print(fields.x)
	end,
})
