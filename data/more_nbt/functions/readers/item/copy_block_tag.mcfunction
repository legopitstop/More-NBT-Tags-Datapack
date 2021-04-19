# Desc: Copy data from item to storage
#
# Called By: more_nbt:main_tick

execute at @p[nbt={SelectedItem: {tag: {moreNBT:{},BlockTag: {}}}}] run data modify storage more_nbt:util BlockTag set from entity @p SelectedItem
execute at @p[nbt={SelectedItem: {tag: {moreNBT:{},BlockTag: {}}}}] run scoreboard players set @p is_holding_item 1