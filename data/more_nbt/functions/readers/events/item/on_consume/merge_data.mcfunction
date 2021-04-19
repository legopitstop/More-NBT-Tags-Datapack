# Desc: Runs "merge_data" NBT.
#
# Called By: more_nbt:main_tick

tellraw @p {"text":"Not added yet"}

# create merge_data storage
data merge storage more_nbt:global_storage {merge_data:{}}

# save data from on_use.merge_data
execute if data storage more_nbt:util {food:{on_consume:{merge_data:{CustomModelData:{}}}}} store result storage more_nbt:global_storage merge_data.CustomModelData int 1 run data get entity @p SelectedItem.tag.on_use.merge_data.CustomModelData.value
execute if data storage more_nbt:util {food:{on_consume:{merge_data:{Damage:{}}}}} store result storage more_nbt:global_storage merge_data.Damage int 1 run data get entity @p SelectedItem.tag.on_use.merge_data.Damage.value
execute if data storage more_nbt:util {food:{on_consume:{merge_data:{HideFlags:{}}}}} store result storage more_nbt:global_storage merge_data.HideFlags int 1 run data get entity @p SelectedItem.tag.on_use.merge_data.HideFlags.value
execute if data storage more_nbt:util {food:{on_consume:{merge_data:{Unbreakable:{}}}}} store result storage more_nbt:global_storage merge_data.Unbreakable int 1 run data get entity @p SelectedItem.tag.on_use.merge_data.Unbreakable.value
execute if data storage more_nbt:util {food:{on_consume:{merge_data:{RepairCost:{}}}}} store result storage more_nbt:global_storage merge_data.RepairCost int 1 run data get entity @p SelectedItem.tag.on_use.merge_data.RepairCost.value
# apply saved data to the item
execute if data storage more_nbt:util {food:{on_consume:{merge_data:{}}}} run item entity @p weapon.mainhand modify more_nbt:merge_data

# remove merge_data storage
data remove storage more_nbt:global_storage merge_data