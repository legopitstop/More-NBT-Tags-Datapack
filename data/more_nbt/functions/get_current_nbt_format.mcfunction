# Desc: finds the current nbt format
#
# Called By: Player

tellraw @p ["",{"text":"Current NBT format: ","color":"gray"},{"translate":"moreNBT:{nbt_format:%s}","color":"white","with":[{"storage":"more_nbt:global_storage","nbt":"moreNBT.current_nbt_format"}],"hoverEvent":{"action":"show_text","value": {"storage":"more_nbt:global_storage","nbt":"moreNBT.current_nbt_format"}}}]