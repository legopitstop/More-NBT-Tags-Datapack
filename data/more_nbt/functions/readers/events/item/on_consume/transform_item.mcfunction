# Desc: Runs "transform_item" NBT.
#
# Called By: more_nbt:readers/item/food_events

# rename transform_item to replaceItem
#
execute if data storage more_nbt:util {food:{on_consume:{transform_item:{transform:"minecraft:stone"}}}} run item entity @p weapon.mainhand replace minecraft:stone