dofile(minetest.get_modpath("mt_test_mod").."/artefacts.lua")

-- Nodes for general testing. A kind of blank slate node.
minetest.register_node("mt_test_mod:test_node", {
	description = "Testing Node",
	tiles = {"default_steel_block.png", "test_block_side.png"},
	groups = {dig_immediate = 3},
})

minetest.register_craftitem("mt_test_mod:test_craftitem", {
	description = "Testing Craftitem",
	tiles = {"test_craftitem.png"},
	wield_image = "test_craftitem.png",
	inventory_image = "test_craftitem.png"
})



-- This is a node that I am using to test out node inventories.
minetest.register_node("mt_test_mod:inventory_testing_node", {
	description = "Meta Inventory Testing Node",
	-- recycled code from KSurvive pitch source.
	tiles = {
		{
			name = "test_machine_animation.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1,
			},
		}
	}, -- https://rubenwardy.com/minetest_modding_book/en/players/formspecs.html
	after_place_node = function(pos, placer)
		-- This function is run when the chest node is placed.
		-- The following code sets the formspec for chest.
		-- Meta is a way of storing data onto a node.

		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", "label[1,1;Testing...]")
	end,
	groups = {dig_immediate = 3},
	on_receive_fields = function(pos, formname, fields, player)
		if fields.quit then
			return
		end
		print(fields.x)
	end,
})

minetest.register_node("mt_test_mod:supercomputer", {
	description = "Supercomputer",
	tiles = {
		"t.computer_top.png",
		"t.computer_top.png",
		"t.computer_front.png",
		"t.computer_front.png",
		"t.computer_side.png",
		"t.computer_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.375, 0.4375, 0.125, 0.375}, -- NodeBox1
			{-0.4375, 0.1875, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox2
			{-0.375, 0.125, -0.3125, 0.375, 0.1875, 0.3125}, -- NodeBox3
		}
	},
	groups = {oddly_breakable_by_hand=3, falling_node=1}
})

minetest.register_node("mt_test_mod:test_node", {
	description = "Test Node",
	tiles = {"test_block_side.png"},
	paramtype = "light",
	groups = {oddly_breakable_by_hand=3, falling_node=1}
})

minetest.register_node("mt_test_mod:test_vines_firelike", {
	description = "Testing Firelike Vines",
	drawtype = "firelike",
	tiles = {"testing_vines.png"},
	groups = {dig_immediate = 3},
	paramtype = "light",
	walkable = false
})

minetest.register_node("mt_test_mod:test_vines_signlike", {
	description = "Testing Signlike Vines",
	drawtype = "signlike",
	tiles = {"testing_vines.png"},
	paramtype2 = "wallmounted",
	selection_box = {
		type = "wallmounted",
	},
	groups = {dig_immediate = 3},
	paramtype = "light",
	walkable = false
})