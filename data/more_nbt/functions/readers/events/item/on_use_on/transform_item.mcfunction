# Desc: Runs "transform_item" NBT.
#
# Called By: more_nbt:readers/event_triggers/item/on_use_on

# rename transform_item to replaceItem
#
execute as @p[nbt={SelectedItem:{tag:{on_use_on:{transform_item:{transform:"minecraft:stone"}}}}}] run item entity @p weapon.mainhand replace minecraft:stone
