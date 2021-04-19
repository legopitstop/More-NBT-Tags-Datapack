# Desc: Runs "inventory" NBT.
#
# Called By: more_nbt:readers/direct

# Update Minecart when player switches inventory items to prevent duplicating. <- known bug

# summon container from data
execute unless entity @e[distance=..3,tag=moreNBT.Inventory] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{inventory_type:"chest"}}}}] run summon chest_minecart ^ ^1 ^1 {Invulnerable:1b,NoGravity:1b,Tags:["moreNBT.Inventory","needs_items"]}
execute unless entity @e[distance=..3,tag=moreNBT.Inventory] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{inventory_type:"hopper"}}}}] run summon hopper_minecart ^ ^1 ^1 {Invulnerable:1b,NoGravity:1b,Tags:["moreNBT.Inventory","needs_items"]}
execute if entity @e[distance=..3,tag=needs_items] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{display_block:{}}}}}] run data merge entity @e[limit=1,tag=needs_items,sort=nearest] {CustomDisplayTile:1b,DisplayOffset:6,DisplayState:{Name:"minecraft:chest"}}
# apply default data to container
execute if entity @e[distance=..3,tag=needs_items] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{}}}}] run data modify entity @e[limit=1,tag=needs_items,sort=nearest] CustomName set value '{"translate":"container.chest"}'
# apply custom data to container
    # display_block
execute if entity @e[distance=..3,tag=needs_items] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{display_block:{}}}}}] run data modify entity @e[limit=1,tag=needs_items,sort=nearest] DisplayState.Name set from entity @p SelectedItem.tag.Inventory.display_block.Name
execute if entity @e[distance=..3,tag=needs_items] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{display_block:{BlockStates:{}}}}}}] run data modify entity @e[limit=1,tag=needs_items,sort=nearest] DisplayState.Properties set from entity @p SelectedItem.tag.Inventory.display_block.BlockStates
    # items
execute if entity @e[distance=..3,tag=needs_items] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{}}}}] run data modify entity @e[limit=1,tag=needs_items,sort=nearest] CustomName set from entity @p SelectedItem.tag.Inventory.inventory_name
execute if entity @e[distance=..3,tag=needs_items] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{}}}}] run data modify entity @e[limit=1,tag=needs_items,sort=nearest] {} merge from entity @p SelectedItem.tag.Inventory.inventory_nbt[0]
execute if entity @e[distance=..3,tag=needs_items] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"item"}}}}}] run data modify entity @e[limit=1,tag=needs_items] Items set from entity @p SelectedItem.tag.Items
execute if entity @e[distance=..3,tag=needs_items] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run data modify entity @e[limit=1,tag=needs_items] Items set from entity @p EnderItems
execute if entity @e[distance=..3,tag=needs_items] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"cloud"}}}}}] run data modify entity @e[limit=1,tag=needs_items] Items set from storage cloud:storage Inventory[].Items
execute if entity @e[distance=..3,tag=needs_items] at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{}}}}] run tag @e[tag=needs_items] remove needs_items
# teleport minecart when player move
execute at @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{}}}}] run tp @e[distance=..3,tag=moreNBT.Inventory] ^ ^1 ^1

# save new items
    # item
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"item"}}}}}] run data modify storage more_nbt:global_storage Inventory.Items set from entity @e[limit=1,type=chest_minecart] Items
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"item"}}}}}] run item entity @p weapon.mainhand modify more_nbt:inventory_entity_to_item
    # cloud
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"cloud"}}}}}] run data modify storage cloud:storage Inventory[].Items set from entity @e[limit=1,type=chest_minecart] Items
    # enderchest
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.0 copy entity @e[type=chest_minecart,limit=1] container.0
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.1 copy entity @e[type=chest_minecart,limit=1] container.1
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.2 copy entity @e[type=chest_minecart,limit=1] container.2
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.3 copy entity @e[type=chest_minecart,limit=1] container.3
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.4 copy entity @e[type=chest_minecart,limit=1] container.4
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.5 copy entity @e[type=chest_minecart,limit=1] container.5
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.6 copy entity @e[type=chest_minecart,limit=1] container.6
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.7 copy entity @e[type=chest_minecart,limit=1] container.7
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.8 copy entity @e[type=chest_minecart,limit=1] container.8
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.9 copy entity @e[type=chest_minecart,limit=1] container.9
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.10 copy entity @e[type=chest_minecart,limit=1] container.10
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.11 copy entity @e[type=chest_minecart,limit=1] container.11
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.12 copy entity @e[type=chest_minecart,limit=1] container.12
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.13 copy entity @e[type=chest_minecart,limit=1] container.13
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.14 copy entity @e[type=chest_minecart,limit=1] container.14
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.15 copy entity @e[type=chest_minecart,limit=1] container.15
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.16 copy entity @e[type=chest_minecart,limit=1] container.16
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.17 copy entity @e[type=chest_minecart,limit=1] container.17
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.18 copy entity @e[type=chest_minecart,limit=1] container.18
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.19 copy entity @e[type=chest_minecart,limit=1] container.19
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.20 copy entity @e[type=chest_minecart,limit=1] container.20
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.21 copy entity @e[type=chest_minecart,limit=1] container.21
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.22 copy entity @e[type=chest_minecart,limit=1] container.22
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.23 copy entity @e[type=chest_minecart,limit=1] container.23
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.24 copy entity @e[type=chest_minecart,limit=1] container.24
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.25 copy entity @e[type=chest_minecart,limit=1] container.25
    execute at @p[nbt={SelectedItem:{tag:{Inventory:{auto_save:{storage:"enderChest"}}}}}] run item entity @p enderchest.26 copy entity @e[type=chest_minecart,limit=1] container.26
# lock hoppers under the minecart if can_be_siphoned_from is false
execute if entity @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{can_be_siphoned_from:0b}}}}] at @e[distance=..3,tag=moreNBT.Inventory] if block ~ ~ ~ hopper run data merge block ~ ~ ~ {TransferCooldown:1000}
execute if entity @p[distance=..3,nbt={SelectedItem:{tag:{Inventory:{can_be_siphoned_from:0b}}}}] at @e[distance=..3,tag=moreNBT.Inventory] if block ~ ~ ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:1000}
# showItems
    # get the amount of items per slot.
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"shulkerBox"}}}}] store result storage more_nbt:global_storage Inventory.item_count int 1 run data get entity @p SelectedItem.tag.Items
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"shulkerBox"}}}}] store result score Int util run data get storage more_nbt:global_storage Inventory.item_count
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"shulkerBox"}}}}] if score Int util matches 5.. run scoreboard players remove Int util 5
    # set Lore to storage
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"nbt"}}}}] run data modify storage more_nbt:global_storage Inventory.Lore set value ['[{"text":"(+NBT)"}]']

execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"shulkerBox"}}}}] if data entity @p SelectedItem.tag.Items[0] run data modify storage more_nbt:global_storage Inventory.Lore set value ['[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].Count"}]}]']
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"shulkerBox"}}}}] if data entity @p SelectedItem.tag.Items[1] run data modify storage more_nbt:global_storage Inventory.Lore set value ['[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[1].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[1].Count"}]}]']
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"shulkerBox"}}}}] if data entity @p SelectedItem.tag.Items[2] run data modify storage more_nbt:global_storage Inventory.Lore set value ['[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[1].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[1].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[2].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[2].Count"}]}]']
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"shulkerBox"}}}}] if data entity @p SelectedItem.tag.Items[3] run data modify storage more_nbt:global_storage Inventory.Lore set value ['[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[1].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[1].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[2].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[2].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[3].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[3].Count"}]}]']
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"shulkerBox"}}}}] if data entity @p SelectedItem.tag.Items[4] run data modify storage more_nbt:global_storage Inventory.Lore set value ['[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[1].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[1].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[2].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[2].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[3].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[3].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[4].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[4].Count"}]}]']
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"shulkerBox"}}}}] if data entity @p SelectedItem.tag.Items[5] run data modify storage more_nbt:global_storage Inventory.Lore set value ['[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[0].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[1].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[1].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[2].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[2].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[3].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[3].Count"}]}]','[{"entity":"@p","nbt":"SelectedItem.tag.Items[4].id","color":"white","italic":false},{"translate":" x%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.Items[4].Count"}]}]','[{"translate":"container.shulkerBox.more","color":"white","italic":true,"with":[{"score":{"name":"Int","objective":"util"}}]}]']
    # set Lore from storage to item.
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"shulkerBox"}}}}] run item entity @p weapon.mainhand modify more_nbt:inventory_show_items
execute at @p[nbt={SelectedItem:{tag:{Items:[{}],Inventory:{show_items:"nbt"}}}}] run item entity @p weapon.mainhand modify more_nbt:inventory_show_items

# Apply NoGroundItem:1b tag to items in container
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[0].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[1].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[2].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[3].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[4].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[5].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[6].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[7].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[8].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[9].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[10].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[11].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[12].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[13].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[14].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[15].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[16].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[17].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[18].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[19].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[20].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[21].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[22].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[23].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[24].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[25].tag.NoGroundItem set value true
execute at @e[tag=moreNBT.Inventory] run data modify entity @e[limit=1,tag=moreNBT.Inventory] Items[26].tag.NoGroundItem set value true