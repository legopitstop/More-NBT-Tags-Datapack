# Desc: runs all reader files (looping)
#
# Called by: #minecraft:tick

# more_nbt_format
execute at @p[nbt={SelectedItem:{tag:{moreNBT:{}}}}] run function more_nbt:readers/more_nbt_format

# Run Readers when the selectedItem has proper data
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},on_use:{}}}}] run function #more_nbt:readers/on_use
execute at @p[nbt={SelectedItem:{tag:{moreNBT:{},on_hold:{}}}}] run function #more_nbt:readers/on_hold
execute at @p[nbt={SelectedItem:{tag:{moreNBT:{}}}}] run function #more_nbt:readers/direct
execute at @p[nbt={SelectedItem:{tag:{}}}] run function #more_nbt:readers/custom
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},on_use_on:{}}}}] anchored eyes unless block ^ ^ ^5 #more_nbt:on_use_on_whitelist run function #more_nbt:readers/on_use_on

# Apply used:{} tags to item when the player has clicked the item, also makes it look like the item has been used when merging data.
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},on_use:{}}}}] run function more_nbt:readers/used_tags
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},on_use_on:{}}}}] anchored eyes unless block ^ ^ ^5 #more_nbt:on_use_on_whitelist run function more_nbt:readers/used_on_tags
execute at @p[nbt={SelectedItem:{tag:{moreNBT:{},on_hold:{}}}}] run function #more_nbt:readers/held_tags
