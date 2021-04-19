# Desc: Customize your datapack all in-game.
#
# Called By: Player

# Enter down a few lines to hide old settings text.
tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
# header
tellraw @p ["",{"color":"gray","text":"\u00A7m                                                                                "}]
tellraw @p ["",{"color":"gray","translate":"                             %s","with":["Config"]}]
tellraw @p ["",{"color":"gray","text":"\u00A7m                                                                                \n"}]
# options
execute if data storage more_nbt:config {config:{on_use_reload: true}} run tellraw @p ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function more_nbt:config/reload_off"}},{"color":"gray","text":" onUse.reload - Will make the server reload when used."}]
execute if data storage more_nbt:config {config:{on_use_reload: false}} run tellraw @p ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function more_nbt:config/reload_on"}},{"color":"gray","text":" onUse.reload - Will make the server reload when used."}]

execute if data storage more_nbt:config {config:{debugLog: true}} run tellraw @p ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function more_nbt:config/debug_log_off"}},{"color":"gray","text":" debugLog - When true it will send feedback via chat."}]
execute if data storage more_nbt:config {config:{debugLog: false}} run tellraw @p ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function more_nbt:config/debug_log_on"}},{"color":"gray","text":" debugLog - When true it will send feedback via chat."}]

# footer
tellraw @p ["",{"color":"gray","text":"\n\u00A7m                                                                                "}]