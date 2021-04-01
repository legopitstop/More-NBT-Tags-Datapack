# Desc: Runs "score:{add:{}}" NBT.
#
# Called By: more_nbt:main_tick

execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test0"}}}}}}] store result score @p on_use_on.score0 run data get entity @p SelectedItem.tag.on_use_on.score.add.amount
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test0"}}}}}}] run scoreboard players operation @p score.test0 += @p on_use_on.score0
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test1"}}}}}}] store result score @p on_use_on.score1 run data get entity @p SelectedItem.tag.on_use_on.score.add.amount
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test1"}}}}}}] run scoreboard players operation @p score.test1 += @p on_use_on.score1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test2"}}}}}}] store result score @p on_use_on.score2 run data get entity @p SelectedItem.tag.on_use_on.score.add.amount
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test2"}}}}}}] run scoreboard players operation @p score.test2 += @p on_use_on.score2
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test3"}}}}}}] store result score @p on_use_on.score3 run data get entity @p SelectedItem.tag.on_use_on.score.add.amount
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test3"}}}}}}] run scoreboard players operation @p score.test3 += @p on_use_on.score3
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test4"}}}}}}] store result score @p on_use_on.score4 run data get entity @p SelectedItem.tag.on_use_on.score.add.amount
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test4"}}}}}}] run scoreboard players operation @p score.test4 += @p on_use_on.score4
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test5"}}}}}}] store result score @p on_use_on.score5 run data get entity @p SelectedItem.tag.on_use_on.score.add.amount
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test5"}}}}}}] run scoreboard players operation @p score.test5 += @p on_use_on.score5
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test6"}}}}}}] store result score @p on_use_on.score6 run data get entity @p SelectedItem.tag.on_use_on.score.add.amount
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test6"}}}}}}] run scoreboard players operation @p score.test6 += @p on_use_on.score6
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test7"}}}}}}] store result score @p on_use_on.score7 run data get entity @p SelectedItem.tag.on_use_on.score.add.amount
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test7"}}}}}}] run scoreboard players operation @p score.test7 += @p on_use_on.score7
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test8"}}}}}}] store result score @p on_use_on.score8 run data get entity @p SelectedItem.tag.on_use_on.score.add.amount
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test8"}}}}}}] run scoreboard players operation @p score.test8 += @p on_use_on.score8
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test9"}}}}}}] store result score @p on_use_on.score9 run data get entity @p SelectedItem.tag.on_use_on.score.add.amount
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{name:"this",objective:"score.test9"}}}}}}] run scoreboard players operation @p score.test9 += @p on_use_on.score9