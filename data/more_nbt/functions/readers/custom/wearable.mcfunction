# Desc: Runs "transform_item" NBT.
#
# Called By: more_nbt:main_tick

# {wearable:{slot:"",dispensable:true}}
# wearable
# armor
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.armor.head"}}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] run data modify storage more_nbt:global_storage wearable set from entity @p SelectedItem
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.armor.head"}}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item entity @s armor.head copy entity @s weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.armor.head"}}}}] if entity @s[nbt={Inventory:[{Slot:103b,tag:{wearable:{}}}]}] run say remove item

execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.armor.chest"}}}}] run item entity @s armor.chest copy entity @s weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.armor.legs"}}}}] run item entity @s armor.legs copy entity @s weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.armor.feet"}}}}] run item entity @s armor.feet copy entity @s weapon.mainhand
# weapon
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.weapon.offhand"}}}}] run item entity @s weapon.offhand copy entity @s weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.weapon.mainhand"}}}}] run item entity @s weapon.mainhand copy entity @s weapon.mainhand
# horse
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.horse.saddle"}}}}] run item entity @e[limit=1,distance=..3,sort=nearest,type=horse] horse.saddle copy entity @p weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.horse.armor"}}}}] run item entity @e[limit=1,distance=..3,sort=nearest,type=horse] horse.armor copy entity @p weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"slot.horse.chest"}}}}] run item entity @e[limit=1,distance=..3,sort=nearest,type=horse] horse.chest copy entity @p weapon.mainhand