# Desc: gives the player the item with custom NBT and shows some text
#
# Called By: Player

give @p carrot_on_a_stick{moreNBT:{nbt_format:"IgnoreFormatOverride"},display:{Name:'{"text":"Sea Treasure Loot","italic":false}',Lore:['{"translate":"Click \'%s\' to open crate","italic":false,"with":[{"keybind":"key.use"}]}']},on_use:{loot:{target:"give",source:"loot",table:"minecraft:chests/shipwreck_treasure"},play_sound:{target:"this",sound:"minecraft:block.chest.open"},decrement_stack:{ignore_game_mode:true}}}