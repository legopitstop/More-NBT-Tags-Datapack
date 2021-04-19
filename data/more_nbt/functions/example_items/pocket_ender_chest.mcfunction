# Desc: gives the player the item with custom NBT and shows some text
#
# Called By: Player

give @p ender_chest{display:{Name:'{"text":"Pocket Ender Chest","italic":false}',Lore:['{"text":"Hold to summon pocket ender chest.","italic":false}']},moreNBT:{nbt_format:"IgnoreFormatOverride"},Inventory:{inventory_name:'{"translate":"container.enderchest"}',display_block:{Name:"minecraft:ender_chest"},can_be_siphoned_from:false,inventory_type:"chest",auto_save:{storage:"enderChest"}}}