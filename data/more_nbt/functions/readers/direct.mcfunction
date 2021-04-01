# Desc: Runs "template_tile" NBT.
#
# Called By: more_nbt:main_tick
execute at @p[nbt={SelectedItem:{tag:{display_preset:{}}}}] run function more_nbt:readers/direct/display_preset
execute at @p[nbt={SelectedItem:{tag:{animation:{}}}}] run function more_nbt:readers/direct/animation
execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{}}}]}] run function more_nbt:readers/direct/animation
execute at @p[nbt={SelectedItem:{tag:{Inventory:{}}}}] run function more_nbt:readers/direct/inventory
execute at @p[nbt={SelectedItem:{tag:{durability:{}}}}] run function more_nbt:readers/direct/durability
execute at @p[nbt={SelectedItem:{tag:{new_ui:{}}}}] run function more_nbt:readers/direct/new_ui