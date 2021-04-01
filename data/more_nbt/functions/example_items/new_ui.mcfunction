# Desc: gives the player the item with custom NBT and shows some text
#
# Called By: Player

# Copy /give command
# More NBT Tags used;
#   ├ moreNBT
#   └ onuse
#     ├ loot
#     ├ play_sound
#     └ decrement_stack

#tellraw @s [{"text":"Copy /give command","clickEvent":{"action":"copy_to_clipboard","value":"Invalid!"}}]
#tellraw @s [{"text":"More NBT Tags used;"}]
#tellraw @s [{"text":"   ├ moreNBT"}]
#tellraw @s [{"text":"   └ onuse"}]
#tellraw @s [{"text":"     ├ loot"}]
#tellraw @s [{"text":"     ├ play_sound"}]
#tellraw @s [{"text":"     └ decrement_stack"}]

give @p paper{moreNBT:{nbt_format:"IgnoreFormatOverride"},new_ui:{1:{display:{title:'{"text":"New UI | 1"}'},icon:{Name:'{"text":"Id = 1","italic":false,"color":"white"}',item:"minecraft:command_block",slot:0},buttons:[{Name:'{"text":"True","italic":false}',slot:13,clickEvent:{open_ui:{id:2},say:{text:"UI = true"}}},{Name: '{"text":"Close","italic":false}', custom_button:{item:"minecraft:barrier"},slot: 8, clickEvent: {say:{text:"UI = closed"},close_ui:true}}], fill_empty:{item:"minecraft:lime_stained_glass_pane"}},2:{display:{title:'{"text":"New UI | 2"}'},icon:{Name:'{"text":"Id = 2","italic":false,"color":"white"}',item:"minecraft:command_block",slot:0},buttons:[{Name:'{"text":"False","italic":false}',slot:13,clickEvent:{open_ui:{id:1},say:{text:"UI = false"}}},{Name: '{"text":"Close","italic":false}', custom_button:{item:"minecraft:barrier"},slot: 8, clickEvent: {say:{text:"UI = closed"},close_ui:true}}], fill_empty:{item:"minecraft:red_stained_glass_pane"}}}}