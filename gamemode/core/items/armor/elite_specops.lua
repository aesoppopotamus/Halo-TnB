ITEM = class.Create("base_armor")

ITEM.Name 				= "Sangheili Specops"
ITEM.Description 		= "Armor belonging to a special operations Sangheili."

ITEM.Species 			= SPECIES_ELITE

local model = Model("models/halo_reach/players/elite_specops.mdl")

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Model = model,
				Skin = 1
			}
		}
	end
end

return ITEM