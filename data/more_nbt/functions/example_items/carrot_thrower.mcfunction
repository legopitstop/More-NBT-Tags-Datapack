# Desc: gives the player the item with custom NBT and shows some text
#
# Called By: Player

give @p carrot_on_a_stick{moreNBT:{nbt_format:"IgnoreFormatOverride"},display:{Name:'{"text":"Carrot Thrower","italic":false}',Lore:['{"text":"Right click to shoot stacks of carrots.","italic":false}']},damage_tool:{amount:1,break_sound:1b,disappears:1b},durability:{max_durability:9,display:{type:"customDurability",value:'{"translate":"Shots Left"}'}},throwable:{ammunition:{physics:0b,entity:"minecraft:item",nbt:[{Item:{Count:16b,id:"minecraft:carrot"}}]}},on_use:{play_sound:{target:"this",sound:"minecraft:entity.snowball.throw"}}}