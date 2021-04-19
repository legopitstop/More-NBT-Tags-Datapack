# Desc: merge data
#
# Called By: more_nbt:readers/event_triggers/block/on_placed

tellraw @p {"text":"This event is still indev"}

# create merge_data storage
data merge storage more_nbt:global_storage {merge_data:{}}

# save data from on_use.merge_data
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{merge_data:{CustomModelData:{}}}}}}] store result storage more_nbt:global_storage merge_data.CustomModelData int 1 run data get entity @p SelectedItem.tag.on_use.merge_data.CustomModelData.value
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{merge_data:{Damage:{}}}}}}] store result storage more_nbt:global_storage merge_data.Damage int 1 run data get entity @p SelectedItem.tag.on_use.merge_data.Damage.value
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{merge_data:{HideFlags:{}}}}}}] store result storage more_nbt:global_storage merge_data.HideFlags int 1 run data get entity @p SelectedItem.tag.on_use.merge_data.HideFlags.value
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{merge_data:{Unbreakable:{}}}}}}] store result storage more_nbt:global_storage merge_data.Unbreakable int 1 run data get entity @p SelectedItem.tag.on_use.merge_data.Unbreakable.value
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{merge_data:{RepairCost:{}}}}}}] store result storage more_nbt:global_storage merge_data.RepairCost int 1 run data get entity @p SelectedItem.tag.on_use.merge_data.RepairCost.value
# apply saved data to the item
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{merge_data:{}}}}}] run item entity @p weapon.mainhand modify more_nbt:merge_data

# remove merge_data storage
data remove storage more_nbt:global_storage merge_data