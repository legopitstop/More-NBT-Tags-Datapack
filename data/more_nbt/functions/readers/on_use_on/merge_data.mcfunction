# Desc: Runs "merge_data" NBT.
#
# Called By: more_nbt:main_tick

# create merge_data storage
data merge storage more_nbt:global_storage {merge_data:{}}

# save data from on_use_on.merge_data
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{merge_data:{CustomModelData:{}}}}}}] store result storage more_nbt:global_storage merge_data.CustomModelData int 1 run data get entity @p SelectedItem.tag.on_use_on.merge_data.CustomModelData.value
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{merge_data:{Damage:{}}}}}}] store result storage more_nbt:global_storage merge_data.Damage int 1 run data get entity @p SelectedItem.tag.on_use_on.merge_data.Damage.value
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{merge_data:{HideFlags:{}}}}}}] store result storage more_nbt:global_storage merge_data.HideFlags int 1 run data get entity @p SelectedItem.tag.on_use_on.merge_data.HideFlags.value
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{merge_data:{Unbreakable:{}}}}}}] store result storage more_nbt:global_storage merge_data.Unbreakable int 1 run data get entity @p SelectedItem.tag.on_use_on.merge_data.Unbreakable.value
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{merge_data:{RepairCost:{}}}}}}] store result storage more_nbt:global_storage merge_data.RepairCost int 1 run data get entity @p SelectedItem.tag.on_use_on.merge_data.RepairCost.value
# apply saved data to the item
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{merge_data:{}}}}}] run item entity @p weapon.mainhand modify more_nbt:merge_data

# remove merge_data storage
data remove storage more_nbt:global_storage merge_data