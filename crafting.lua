
-- recipes when caverealms is present
if minetest.get_modpath("caverealms") then

	local recipe_list = {
		{"black", "spike",}, {"blue", "glow_crystal",},
		{"cyan", "glow_gem",}, {"green", "glow_emerald",}, 
		{"magenta", "salt_gem",}, {"orange", "fire_vine",}, 
		{"purple", "glow_amethyst",}, {"red", "glow_ruby",}, 
		{"yellow", "glow_mese",}, {"white", "glow_ore",},
	}

	for _, item in pairs(recipe_list) do

		local colour = item[1]
		local ingredient = item[2]

		minetest.register_craft({
			output = "abritorch:torch_"..colour.." 4", 
			recipe = {
				{"default:torch", "", "default:torch" },
				{"", "caverealms:"..ingredient, "" },
				{"default:torch", "", "default:torch" },
			}
		})
	end

else
	-- recipes when caverealms not present

	local recipe_list = {
		{"black", "black",}, {"blue", "blue",},
		{"cyan", "cyan",}, {"green", "green",}, 
		{"magenta", "magenta",}, {"orange", "orange",}, 
		{"purple", "violet",}, {"red", "red",}, 
		{"yellow", "yellow",}, {"white", "white",},
	}

	for _, item in pairs(recipe_list) do

		local colour = item[1]
		local ingredient = item[2]

		minetest.register_craft({
			output = "abritorch:torch_"..colour.." 4", 
			recipe = {
				{"default:torch", "", "default:torch" },
				{"", "dye:"..ingredient, "" },
				{"default:torch", "", "default:torch" },
			}
		})
	end


end
