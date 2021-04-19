# Desc: Runs "remove_mob_effect" NBT.
#
# Called By: more_nbt:readers/event_triggers/item/on_use_on

execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:*"}]}}}}] run effect clear @p[]
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:absorption"}]}}}}] run effect clear @p[] absorption
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:bad_omen"}]}}}}] run effect clear @p[] bad_omen
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:blindness"}]}}}}] run effect clear @p[] blindness
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:conduit_power"}]}}}}] run effect clear @p[] conduit_power
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:dolphins_grace"}]}}}}] run effect clear @p[] dolphins_grace
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:fire_resistance"}]}}}}] run effect clear @p[] fire_resistance
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:glowing"}]}}}}] run effect clear @p[] glowing
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:haste"}]}}}}] run effect clear @p[] haste
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:health_boost"}]}}}}] run effect clear @p[] health_boost
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:hero_of_the_village"}]}}}}] run effect clear @p[] hero_of_the_village
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:hunger"}]}}}}] run effect clear @p[] hunger
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:instant_damage"}]}}}}] run effect clear @p[] instant_damage
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:instant_health"}]}}}}] run effect clear @p[] instant_health
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:invisibility"}]}}}}] run effect clear @p[] invisibility
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:jump_boost"}]}}}}] run effect clear @p[] jump_boost
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:levitation"}]}}}}] run effect clear @p[] levitation
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:luck"}]}}}}] run effect clear @p[] luck
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:mining_fatigue"}]}}}}] run effect clear @p[] mining_fatigue
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:nausea"}]}}}}] run effect clear @p[] nausea
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:night_vision"}]}}}}] run effect clear @p[] night_vision
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:poison"}]}}}}] run effect clear @p[] poison
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:regeneration"}]}}}}] run effect clear @p[] regeneration
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:resistance"}]}}}}] run effect clear @p[] resistance
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:saturation"}]}}}}] run effect clear @p[] saturation
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:slow_falling"}]}}}}] run effect clear @p[] slow_falling
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:slowness"}]}}}}] run effect clear @p[] slowness
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:speed"}]}}}}] run effect clear @p[] speed
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:strength"}]}}}}] run effect clear @p[] strength
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:unluck"}]}}}}] run effect clear @p[] unluck
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:water_breathing"}]}}}}] run effect clear @p[] water_breathing
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:weakness"}]}}}}] run effect clear @p[] weakness
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:wither"}]}}}}] run effect clear @p[] wither
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{effect:"minecraft:*"}]}}}}] run effect clear @p[]
