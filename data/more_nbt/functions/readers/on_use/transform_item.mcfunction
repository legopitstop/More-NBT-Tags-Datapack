# Desc: Runs "transform_item" NBT.
#
# Called By: more_nbt:main_tic

# rename transform_item to replaceItem
#
execute as @p[nbt={SelectedItem:{tag:{on_use:{transform_item:{transform:"minecraft:stone"}}}}}] run item entity @p weapon.mainhand replace minecraft:stone
