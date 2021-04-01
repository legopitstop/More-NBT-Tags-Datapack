# Desc: Runs "shooter" NBT.
#
# Called By: more_nbt:main_tick

# onUse.shooter   draw_duration:10
execute anchored eyes if entity @p[nbt={SelectedItem:{tag:{onUse:{shooter:{ammunition:{type:"minecraft:arrow"}}}}}}] run say this is not added yet.
