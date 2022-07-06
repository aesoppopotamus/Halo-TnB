ITEM = class.Create("base_weapon")

ITEM.Name 				= "BR55"
ITEM.Description 		= "Also known as the Battle Rifle, the BR55 Individual Combat Weapon System is the UNSC's standard-issue service rifle. Chambered in 9.5×40mm."

ITEM.Model 				= Model("models/vuthakral/halo/weapons/w_br55.mdl")

ITEM.Width 				= 4
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "eternity_battlerifle"

ITEM.AmmoSlots 			= {
	["95x40mm"] = true
}

return ITEM