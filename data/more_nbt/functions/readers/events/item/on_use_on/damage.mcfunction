# Desc: Runs "damage" NBT.
#
# Called By: more_nbt:readers/event_triggers/item/on_use_on

# EFFECT
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:1d}}}}}] run effect give @p resistance 1 3
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:1d}}}}}] run effect give @p instant_damage 1 0
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:2d}}}}}] run effect give @p resistance 1 2
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:2d}}}}}] run effect give @p instant_damage 1 0
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:3d}}}}}] run effect give @p resistance 1 1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:3d}}}}}] run effect give @p instant_damage 1 0
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:4d}}}}}] run effect give @p resistance 1 0
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:4d}}}}}] run effect give @p instant_damage 1 0
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:5d}}}}}] run tellraw @p {"text":"Unsupported damage amount"}
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:6d}}}}}] run effect give @p resistance 1 1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:6d}}}}}] run effect give @p instant_health 1 1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:6d}}}}}] run effect give @p instant_damage 1 2
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:7d}}}}}] run effect give @p resistance 1 1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:7d}}}}}] run effect give @p instant_damage 1 1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:8d}}}}}] run effect give @p resistance 1 0
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:8d}}}}}] run effect give @p instant_damage 1 1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:9d}}}}}] run effect give @p resistance 1 2
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:9d}}}}}] run effect give @p instant_damage 1 2
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:10d}}}}}] run effect give @p resistance 1 1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:10d}}}}}] run effect give @p instant_health 1 0
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:10d}}}}}] run effect give @p instant_damage 1 2
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:11d}}}}}] run effect give @p resistance 1 2
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:11d}}}}}] run effect give @p instant_health 1 1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:11d}}}}}] run effect give @p instant_damage 1 3
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:12d}}}}}] run effect give @p instant_damage 1 1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:13d}}}}}] run tellraw @p {"text":"Unsupported damage amount"}
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:14d}}}}}] run effect give @p resistance 1 1
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:14d}}}}}] run effect give @p instant_damage 1 2
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:15d}}}}}] run effect give @p resistance 1 2
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:15d}}}}}] run effect give @p instant_health 1 0
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:15d}}}}}] run effect give @p instant_damage 1 3
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:16d}}}}}] run tellraw @p {"text":"Unsupported damage amount"}
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:17d}}}}}] run tellraw @p {"text":"Unsupported damage amount"}
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:18d}}}}}] run tellraw @p {"text":"Unsupported damage amount"}
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:19d}}}}}] run effect give @p resistance 1 0
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"EFFECT",target:"this",amount:19d}}}}}] run effect give @p instant_damage 1 2

# ARROW
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"ARROW",target:"this"}}}}}] run summon arrow ~ ~3 ~ {life:1200,pickup:0b,damage:1.0d,Motion:[0.0,-1.0,0.0],CustomName:'{"text":"IDamageArrow"}'}
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{type:"ARROW",target:"this"}}}}}] store result entity @e[limit=1,type=arrow,name="IDamageArrow"] damage double 1 run data get entity @p SelectedItem.tag.on_use_on.damage.amount

#kill @e[type=arrow,name="IDamageArrow"]