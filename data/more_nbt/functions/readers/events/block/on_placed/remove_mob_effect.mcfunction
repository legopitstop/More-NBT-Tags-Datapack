# Desc: removes an effect from the target
#
# Called By: more_nbt:readers/event_triggers/block/on_placed

execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:*"}]}}}}] run effect clear @p
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:absorption"}]}}}}] run effect clear @p absorption
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:bad_omen"}]}}}}] run effect clear @p bad_omen
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:blindness"}]}}}}] run effect clear @p blindness
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:conduit_power"}]}}}}] run effect clear @p conduit_power
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:dolphins_grace"}]}}}}] run effect clear @p dolphins_grace
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:fire_resistance"}]}}}}] run effect clear @p fire_resistance
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:glowing"}]}}}}] run effect clear @p glowing
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:haste"}]}}}}] run effect clear @p haste
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:health_boost"}]}}}}] run effect clear @p health_boost
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:hero_of_the_village"}]}}}}] run effect clear @p hero_of_the_village
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:hunger"}]}}}}] run effect clear @p hunger
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:instant_damage"}]}}}}] run effect clear @p instant_damage
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:instant_health"}]}}}}] run effect clear @p instant_health
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:invisibility"}]}}}}] run effect clear @p invisibility
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:jump_boost"}]}}}}] run effect clear @p jump_boost
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:levitation"}]}}}}] run effect clear @p levitation
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:luck"}]}}}}] run effect clear @p luck
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:mining_fatigue"}]}}}}] run effect clear @p mining_fatigue
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:nausea"}]}}}}] run effect clear @p nausea
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:night_vision"}]}}}}] run effect clear @p night_vision
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:poison"}]}}}}] run effect clear @p poison
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:regeneration"}]}}}}] run effect clear @p regeneration
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:resistance"}]}}}}] run effect clear @p resistance
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:saturation"}]}}}}] run effect clear @p saturation
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:slow_falling"}]}}}}] run effect clear @p slow_falling
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:slowness"}]}}}}] run effect clear @p slowness
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:speed"}]}}}}] run effect clear @p speed
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:strength"}]}}}}] run effect clear @p strength
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:unluck"}]}}}}] run effect clear @p unluck
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:water_breathing"}]}}}}] run effect clear @p water_breathing
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:weakness"}]}}}}] run effect clear @p weakness
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:wither"}]}}}}] run effect clear @p wither
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{remove_mob_effect:[{effect:"minecraft:*"}]}}}}] run effect clear @p
