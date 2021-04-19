# Desc: removes any/all items that have the tag "illegal:1b"
#
# Called By: more_nbt:main_tick

# illegal items in creative the table will act as a creative tab.
# KEEP!! remove 'NoGroundItem' tag from item when in players inv
# NoGroundItem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run data modify storage more_nbt:global_storage NoGroundItem set value 0
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.0 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.1 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.2 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.3 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.4 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.5 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.6 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.7 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.8 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.9 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.10 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.11 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.12 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.13 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.14 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.15 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.16 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.17 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.18 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.19 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.20 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.21 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.22 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.23 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.24 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.25 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p inventory.26 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p hotbar.0 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p hotbar.1 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p hotbar.2 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p hotbar.3 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p hotbar.4 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p hotbar.5 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p hotbar.6 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p hotbar.7 modify more_nbt:remove_nogrounditem
execute at @p[nbt={Inventory:[{tag:{NoGroundItem:1b}}]}] run item entity @p hotbar.8 modify more_nbt:remove_nogrounditem

kill @e[type=item,nbt={Item:{tag:{NoGroundItem:1b}}}]

# NoInventoryItem
clear @a #more_nbt:illegal_items{NoInventoryItem:1b}