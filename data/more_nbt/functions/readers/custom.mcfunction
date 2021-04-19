# Desc: Runs "template_tile" NBT.
#
# Called By: more_nbt:reader_tick

#execute at @p[nbt={SelectedItem:{tag:{moreNBT:{},debugLog:1b}}}] run function #more_nbt:readers/debug_log
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},damage_tool:{}}}}] run function more_nbt:readers/item/damage_tool
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},throwable:{}}}}] run function more_nbt:readers/item/throwable
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},shooter:{}}}}] run function more_nbt:readers/item/shooter
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},wearable:{}}}}] run function more_nbt:readers/item/wearable

# BlockTag
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},BlockTag:{}}}}] at @p[nbt=!{SelectedItem:{tag:{EntityTag:{Tags:["CustomBlock"]}}}}] run item entity @p weapon.mainhand modify more_nbt:item/block_tag