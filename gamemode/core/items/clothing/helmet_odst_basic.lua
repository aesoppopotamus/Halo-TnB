ITEM = class.Create("helmet_marine_basic")

ITEM.Name 			= "ODST Helmet"
ITEM.Description 	= "A standard ODST helmet meant to fulfill a variety of combat roles."

ITEM.Model 			= Model("models/ishi/halo_rebirth/odst/male/props/odst_helmet_default.mdl")

ITEM.Color 			= Color(145, 145, 145)
ITEM.OutlineColor 	= Color(109, 109, 109)

ITEM.EquipmentSlots = {EQUIPMENT_HEAD}

ITEM.License 		= false

ITEM.ModelGroups 	= {"ODST"}

ITEM.HelmetGroup 	= 1

ITEM.Filtered 		= true

function ITEM:OnUnequip(ply, slot, unloading)
	ply:SetVISR(false)

	self:ParentCall("OnUnequip", ply, slot, unloading)
end

function ITEM:GetContextOptions(ply)
	local tab = {}

	table.insert(tab, {
		Name = "Toggle VISR",
		Callback = function()
			ply:SetVISR(not ply:VISR())
		end
	})

	return tab
end

if SERVER then
	function ITEM:GetModelData(ply)
		local tab = {
			_base = {
				Bodygroups = {
					["Helmet"] = self.HelmetGroup,
					Helmet = self.Balaclava and 3 or 1
				}
			}
		}

		return tab
	end
end

return ITEM