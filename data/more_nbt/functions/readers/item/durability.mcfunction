# Desc: Runs "template_tile" NBT.
#
# Called By: more_nbt:readers/direct

# save Damage and max durability to storage 'durability:{}'
# apply data to score
execute at @p[nbt={SelectedItem:{tag:{durability:{}}}}] store result score @p durability run data get entity @p SelectedItem.tag.current_durability.value
execute at @p[nbt={SelectedItem:{tag:{durability:{}}}}] store result score @p max_durability run data get entity @p SelectedItem.tag.durability.max_durability
# apply data to storage
execute at @p[nbt={SelectedItem:{tag:{durability:{}}}}] run data modify storage more_nbt:global_storage durability.Damage set value 0
execute at @p[nbt={SelectedItem:{tag:{durability:{}}}}] store result storage more_nbt:global_storage durability.max_durability int 1 run data get entity @p SelectedItem.tag.durability.max_durability
execute at @p[nbt={SelectedItem:{tag:{durability:{}}}}] store result storage more_nbt:global_storage durability.current_durability int 1 run scoreboard players get @p durability
# calculate the percentage from max and current durability then apply to scoreboard to display to player
# This needs to be reworked, as devision could give out decimal which gets rounded down ex: 0.5=0 which breaks the * operation
# current / max * 100 = N% (disabled)
execute at @p[nbt={SelectedItem:{tag:{durability:{}}}}] run scoreboard players operation @p durabilityPer = @p durability
#execute at @p[nbt={SelectedItem:{tag:{durability:{}}}}] run scoreboard players operation @p durabilityPer /= @p max_durability
#execute at @p[nbt={SelectedItem:{tag:{durability:{}}}}] run scoreboard players operation @p durabilityPer *= 100 util
# overflow 0..100 only please
execute if score @p durabilityPer matches ..-1 run scoreboard players set @p durabilityPer 0
execute if score @p durabilityPer matches 101.. run scoreboard players set @p durabilityPer 100

# apply max durability to item if their isnt one already stated
execute at @p[nbt=!{SelectedItem:{tag:{current_durability:{}}}}] run item entity @p weapon.mainhand modify more_nbt:default_durability
# durability.display
    # custom display
    execute at @p[nbt={SelectedItem:{tag:{durability:{custom_display:{}}}}}] run function more_nbt:data/durability_display/custom_display
    # actionbarText
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:"actionbarText"}}}}] run title @p actionbar [{"translate":"item.durability","with":[{"score":{"name":"@p","objective":"durability"}},{"score":{"name":"@p","objective":"max_durability"}}]}]
    # actionbarBar
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:"actionbarBar"}}}}] run function more_nbt:data/durability_display/score_actionbar_bar
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"actionbarBar"}}}}}] run function more_nbt:data/durability_display/score_actionbar_bar
    # actionbarPercent
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:"actionbarPercent"}}}}] run title @p actionbar [{"score": {"name":"@p","objective":"durabilityPer"}},{"text":"%"}]
    # title
    execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{durability:{display:"title"}}}}] run title @p title [{"translate":"item.durability","with":[{"score":{"name":"@p","objective":"durability"}},{"score":{"name":"@p","objective":"max_durability"}}]}]

# more advanced durability.display
    # bossbar default settings
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar"}}}}}] run bossbar set more_nbt:durability visible true
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar"}}}}}] run bossbar set more_nbt:durability color white
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar"}}}}}] run bossbar set more_nbt:durability name {"text":"Durability"}
    # bossbar color
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",color:"default"}}}}}] run bossbar set more_nbt:durability color white
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",color:"blue"}}}}}] run bossbar set more_nbt:durability color blue
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",color:"green"}}}}}] run bossbar set more_nbt:durability color green
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",color:"pink"}}}}}] run bossbar set more_nbt:durability color pink
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",color:"purple"}}}}}] run bossbar set more_nbt:durability color purple
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",color:"red"}}}}}] run bossbar set more_nbt:durability color red
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",color:"white"}}}}}] run bossbar set more_nbt:durability color white
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",color:"yellow"}}}}}] run bossbar set more_nbt:durability color yellow
    # bossbar name
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",name:"default"}}}}}] run bossbar set more_nbt:durability name {"text":"Durability"}
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",name:"durability"}}}}}] run bossbar set more_nbt:durability name [{"translate":"item.durability","with":[{"score":{"name":"@p","objective":"durability"}},{"score":{"name":"@p","objective":"max_durability"}}]}]
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",name:"percent"}}}}}] run bossbar set more_nbt:durability name [{"score": {"name":"@p","objective":"durabilityPer"}},{"text":"%"}]
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",name:"custom"}}}}}] run bossbar set more_nbt:durability name [{"entity":"@p","nbt":"SelectedItem.tag.durability.display.value","interpret": true}]
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",name:"customDurability"}}}}}] run bossbar set more_nbt:durability name [{"translate":"%s/%s %s","with":[{"score":{"name":"@p","objective":"durability"}},{"score":{"name":"@p","objective":"max_durability"}},{"entity":"@p","nbt":"SelectedItem.tag.durability.display.value","interpret": true}]}]
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"bossbar",name:"none"}}}}}] run bossbar set more_nbt:durability name {"text":""}
    # Custom Durability
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"customDurability"}}}}}] run title @p actionbar [{"translate":"%s/%s %s","with":[{"score":{"name":"@p","objective":"durability"}},{"score":{"name":"@p","objective":"max_durability"}},{"entity":"@p","nbt":"SelectedItem.tag.durability.display.value","interpret": true}]}]
    execute at @p[nbt={SelectedItem:{tag:{durability:{display:{type:"custom"}}}}}] run title @p actionbar [{"entity":"@p","nbt":"SelectedItem.tag.durability.display.value","interpret": true}]