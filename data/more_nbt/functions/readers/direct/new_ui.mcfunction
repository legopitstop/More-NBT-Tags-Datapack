# Desc: Runs "new_ui" NBT.
#
# Called By: more_nbt:main_tick
# Chest Minecart
execute at @p[distance=..3,nbt={SelectedItem:{tag:{new_ui:{}}}}] unless entity @e[tag=INewUI] run summon chest_minecart ^ ^1 ^1 {Invulnerable:1b,NoGravity:1b,Tags:["ClickPass","INewUI","ApplyUIItems"]}
# Teleport Minecart to player
execute at @p[distance=..3,nbt={SelectedItem:{tag:{new_ui:{}}}}] run tp @e[distance=..3,tag=INewUI] ^ ^1 ^1

execute at @p[nbt={SelectedItem:{tag:{new_ui:{1:{}}}}}] run function more_nbt:readers/new_ui/new_ui_1
#execute at @p[nbt={SelectedItem:{tag:{new_ui:{2:{}}}}}] run say thats not added yet