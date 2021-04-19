# Desc: Runs "transform_item" NBT.
#
# Called By: more_nbt:readers/event_triggers/item/on_use

# run custom sounds function tags
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this"}}}}}] run function #more_nbt:register_sounds

# Sounds
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:entity.snowball.throw"}}}}}] run playsound minecraft:entity.snowball.throw player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:entity.egg.throw"}}}}}] run playsound minecraft:entity.egg.throw player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:entity.arrow.shoot"}}}}}] run playsound minecraft:entity.arrow.shoot player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:entity.ender_dragon.shoot"}}}}}] run playsound minecraft:entity.ender_dragon.shoot player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:entity.ender_pearl.throw"}}}}}] run playsound minecraft:entity.ender_pearl.throw player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:entity.experience_bottle.throw"}}}}}] run playsound minecraft:entity.experience_bottle.throw player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:entity.ender_eye.launch"}}}}}] run playsound minecraft:entity.ender_eye.launch player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:entity.firework_rocket.launch"}}}}}] run playsound minecraft:entity.firework_rocket.launch player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:entity.llama.spit"}}}}}] run playsound minecraft:entity.llama.spit player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:entity.wither.shoot"}}}}}] run playsound minecraft:entity.wither.shoot player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:item.firecharge.use"}}}}}] run playsound minecraft:item.firecharge.use player @p

execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:block.chest.close"}}}}}] run playsound minecraft:block.chest.close player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:block.chest.locked"}}}}}] run playsound minecraft:block.chest.locked player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:block.chest.open"}}}}}] run playsound minecraft:block.chest.open player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:block.ender_chest.close"}}}}}] run playsound minecraft:block.ender_chest.close player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:block.ender_chest.open"}}}}}] run playsound minecraft:block.ender_chest.open player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:block.barrel.close"}}}}}] run playsound minecraft:block.barrel.open player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:block.barrel.open"}}}}}] run playsound minecraft:block.barrel.open player @p

execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:item.armor.equip_chain"}}}}}] run playsound minecraft:item.armor.equip_chain player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:item.armor.equip_diamond"}}}}}] run playsound minecraft:item.armor.equip_diamond player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:item.armor.equip_elytra"}}}}}] run playsound minecraft:item.armor.equip_elytra player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:item.armor.equip_generic"}}}}}] run playsound minecraft:item.armor.equip_generic player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:item.armor.equip_gold"}}}}}] run playsound minecraft:item.armor.equip_gold player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:item.armor.equip_iron"}}}}}] run playsound minecraft:item.armor.equip_iron player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:item.armor.equip_leather"}}}}}] run playsound minecraft:item.armor.equip_leather player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:item.armor.equip_netherite"}}}}}] run playsound minecraft:item.armor.equip_netherite player @p
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:item.armor.equip_turtle"}}}}}] run playsound minecraft:item.armor.equip_turtle player @p

execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{target:"this",sound:"minecraft:event.raid.horn"}}}}}] run playsound minecraft:event.raid.horn player @p ~ ~ ~ 30