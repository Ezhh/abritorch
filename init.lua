local modpath = minetest.get_modpath("abritorch").. DIR_DELIM

abritorch = {}

dofile(modpath.."torches.lua")
dofile(modpath.."crafting.lua")

abritorch.init = {}