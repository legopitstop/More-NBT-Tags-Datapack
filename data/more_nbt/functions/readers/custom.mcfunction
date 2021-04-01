# Desc: Runs "template_tile" NBT.
#
# Called By: more_nbt:main_tick
execute at @p[nbt={SelectedItem:{tag:{moreNBT:{},debugLog:1b}}}] run function #more_nbt:readers/debug_log
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},damage_tool:{}}}}] run function more_nbt:readers/custom/damage_tool
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},throwable:{}}}}] run function more_nbt:readers/custom/throwable
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},shooter:{}}}}] run function more_nbt:readers/custom/shooter
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},wearable:{}}}}] run function more_nbt:readers/custom/wearable
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},create_block:{}}}}] run function more_nbt:readers/custom/create_block