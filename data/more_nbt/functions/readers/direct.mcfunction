# Desc: Tags that are directly on the item ex; `give @p paper{<--HERE-->}`
#
# Called By: more_nbt:reader_tick

execute at @p[nbt={SelectedItem:{tag:{display_preset:{}}}}] run function more_nbt:readers/item/display_preset
execute at @p[nbt={SelectedItem:{tag:{animation:{}}}}] run function more_nbt:readers/item/animation
execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{}}}]}] run function more_nbt:readers/item/animation
execute at @p[nbt={SelectedItem:{tag:{Inventory:{}}}}] run function more_nbt:readers/item/inventory
execute at @p[nbt={SelectedItem:{tag:{durability:{}}}}] run function more_nbt:readers/item/durability
execute at @p[nbt={SelectedItem:{tag:{new_ui:{}}}}] run function more_nbt:readers/item/new_ui

execute at @p[nbt={SelectedItem:{tag:{foil:1b}}}] run item entity @p weapon.mainhand modify more_nbt:item/foil