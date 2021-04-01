# Desc: Runs "decrement_stack" NBT.
#
# Called By: more_nbt:main_tick

# on_use_on.decrement_stack # removes 1 item
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{gamemode:["adventure"]}}}}}] run item entity @p[gamemode=adventure] weapon.mainhand replace air
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{gamemode:["creative"]}}}}}] run item entity @p[gamemode=creative] weapon.mainhand replace air
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{gamemode:["spectator"]}}}}}] run item entity @p[gamemode=spectator] weapon.mainhand replace air
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{gamemode:["survival"]}}}}}] run item entity @p[gamemode=survival] weapon.mainhand replace air
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{gamemode:["!adventure"]}}}}}] run item entity @p[gamemode=!adventure] weapon.mainhand replace air
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{gamemode:["!creative"]}}}}}] run item entity @p[gamemode=!creative] weapon.mainhand replace air
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{gamemode:["!spectator"]}}}}}] run item entity @p[gamemode=!spectator] weapon.mainhand replace air
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{gamemode:["!survival"]}}}}}] run item entity @p[gamemode=!survival] weapon.mainhand replace air
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{gamemode:["all"]}}}}}] run item entity @p weapon.mainhand replace air