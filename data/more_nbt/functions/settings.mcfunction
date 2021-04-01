# Desc: Customize your datapack all in-game.
#
# Called By: Player

# Enter down a few lines to hide old settings text.
tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
# header
tellraw @p ["",{"color":"gray","text":"\u00A7m                                                                                "}]
tellraw @p ["",{"color":"gray","translate":"                             %s","with":["Settings"]}]
tellraw @p ["",{"color":"gray","text":"\u00A7m                                                                                \n"}]
# options
execute if score onUseReload MoreNBTSettings matches 1 run tellraw @p ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function more_nbt:settings/reload_off"}},{"color":"gray","text":" onUse.reload - Will make the server reload when used."}]
execute unless score onUseReload MoreNBTSettings matches 1 run tellraw @p ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function more_nbt:settings/reload_on"}},{"color":"gray","text":" onUse.reload - Will make the server reload when used."}]
# footer
tellraw @p ["",{"color":"gray","text":"\n\u00A7m                                                                                "}]