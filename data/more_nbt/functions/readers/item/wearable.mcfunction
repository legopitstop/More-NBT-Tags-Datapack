# Desc: Runs "transform_item" NBT.
#
# Called By: more_nbt:readers/custom

# {wearable:{slot:"",dispensable:true}}
# wearable
# armor

# if the datapack "place on head" in on the world use the trigger command instead.
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"armor.head"}}}}] run scoreboard players add @s head 1
# save selecteditem to barrel underground
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"armor.head"}}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] run setblock ~ 0 ~ barrel
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"armor.head"}}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item block ~ 0 ~ container.0 copy entity @s weapon.mainhand
# remove selecteditem if the head slot is empty
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"armor.head"}}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item entity @s weapon.mainhand replace air
# replace the weapon.mainhand item if the player is in creative
execute as @p[gamemode=creative] if block ~ 0 ~ barrel unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item entity @s weapon.mainhand copy block ~ 0 ~ container.0
# paste item in storage to head slot. then replace the barrel depending on players dimention.
execute as @p if block ~ 0 ~ barrel unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item entity @s armor.head copy block ~ 0 ~ container.0
execute at @p in minecraft:overworld if block ~ 0 ~ barrel run setblock ~ 0 ~ bedrock
execute at @p in minecraft:the_nether if block ~ 0 ~ barrel run setblock ~ 0 ~ bedrock
execute at @p in minecraft:the_end if block ~ 0 ~ barrel run setblock ~ 0 ~ air

execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"armor.chest"}}}}] run item entity @s armor.chest copy entity @s weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"armor.legs"}}}}] run item entity @s armor.legs copy entity @s weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"armor.feet"}}}}] run item entity @s armor.feet copy entity @s weapon.mainhand
# weapon
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"weapon.offhand"}}}}] run item entity @s weapon.offhand copy entity @s weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"weapon.mainhand"}}}}] run item entity @s weapon.mainhand copy entity @s weapon.mainhand
# horse
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"horse.saddle"}}}}] run item entity @e[limit=1,distance=..3,sort=nearest,type=horse] horse.saddle copy entity @p weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"horse.armor"}}}}] run item entity @e[limit=1,distance=..3,sort=nearest,type=horse] horse.armor copy entity @p weapon.mainhand
execute as @p[nbt={SelectedItem:{tag:{wearable:{slot:"horse.chest"}}}}] run item entity @e[limit=1,distance=..3,sort=nearest,type=horse] horse.chest copy entity @p weapon.mainhand