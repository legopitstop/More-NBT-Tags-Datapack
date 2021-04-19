# Desc: Gives custom items
#
# Called By: Player

tellraw @p [{"text":"---"}]
tellraw @p ["   ",{"text":"Give Custom Items"}]
tellraw @p [{"text":"---"}]

execute if data storage more_nbt:items items[0].item run tellraw @p [{"color":"white","storage":"more_nbt:items","nbt":"items[0].item","clickEvent": {"action": "run_command","value": "/scoreboard players set @p GiveItem 0"},"hoverEvent": {"action": "show_text","contents": {"color":"gray","storage":"more_nbt:items","nbt":"items[0].description"}}}]
execute if data storage more_nbt:items items[1].item run tellraw @p [{"color":"white","storage":"more_nbt:items","nbt":"items[1].item","clickEvent": {"action": "run_command","value": "/scoreboard players set @p GiveItem 1"},"hoverEvent": {"action": "show_text","contents": {"color":"gray","storage":"more_nbt:items","nbt":"items[1].description"}}}]