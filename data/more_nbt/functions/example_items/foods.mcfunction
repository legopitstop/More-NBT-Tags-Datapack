# Desc: gives the player the item with custom NBT and shows some text
#
# Called By: Player

# Glow berries
give @p glow_berries{moreNBT:{nbt_format:"IgnoreFormatOverride"},display:{Lore:['{"text":"They actually make you glow!","color":"gray","italic":false}']},food:{on_consume:{add_mob_effect:[{target:"@p",effect:"minecraft:glowing"}]}}}

# Milk carton
give @p potion{moreNBT:{nbt_format:"IgnoreFormatOverride"},CustomPotionColor:16777215,display:{Name:'{"text":"Milk Carton","italic":false}'},food:{using_converts_to:{id:"minecraft:glass_bottle",tag:{display:{Name:'{"text":"Empty Carton","italic":false}'}}}}}

playsound event.raid.horn player @p