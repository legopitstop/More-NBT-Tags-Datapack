# Desc: gives the player the item with custom NBT and shows some text
#
# Called By: Player

give @p armor_stand{moreNBT:{nbt_format:"IgnoreFormatOverride"},BlockTag:{id:"more_nbt:custom_block",material:"minecraft:slime_block",components:{on_break:{show_text:{tellraw:{target:"this",raw_text:'{"text":"asd"}'}},decrement_stack:{ignore_game_mode:true}}},loot:{ignore_gamemode:true,type:"minecraft:this"}}}