# **V1.5.0 Changelog**
## **General**
- `nbt_format` has been increased to 4
- Added custom pack icon.
- Changelogs will now be in [markdown](https://en.wikipedia.org/wiki/Markdown) format
- Settings is now called config `/function more_nbt:config`
- Config will now save the setting to storage `more_nbt:config` instead of scoreboard. See more below.
- Only works for Minecraft 1.17 Snapshot 21w15a+ (uses the new `minecraft:marker` entity)

***

## **NBT Changes**
- changed `replaceitem` event to `item`. which adds more features.
- wearable tag will now remove the item  that you place on your head unless you are in creative. This only works for the head slot. If you have my datapack `place on head` installled it will use the trigger command intead.
- Added `this` target selector for die events.
- removed `gamemode` from `decrement_stack` by default `decrement_stack:{}` will not remove items when the player is in creative. `decrement_stack` optionally excepts `ignore_game_mode` when set to true it will remove the items from all players.
- `decrement_stack` will now remove one item, instead of removing all items.
examples;
### before
```jsonc
{"decrement_stack": {"gamemode": ["!creative"]}} // removes for non creative players
{"decrement_stack": {"gamemode": ["all"]}} // removes for all players.
```
### After
```jsonc
{"decrement_stack":{}} // removes for non creative players
{"decrement_stack":{"ignore_game_mode":true}} // removes for all players.
```

***

## **New NBT**
### `on_use` event trigger for items.
added optional `cooldown` timer to `on_use` event trigger. This will set the timer to the number that has been set, then count down. The event will not trigger unless the cooldown time is 0. `value` is in ticks (sec * 20 = ticks). May add more customizability to this tag in the future.
#### Example
```jsonc
{"on_use": {"cooldown": {"value": 60},"add_mob_effect": [{"effect": "minecraft:glowing","target": "this"}]}}
```
### `item` Item Event
Like the `/item` command, replaces `replaceitem`
#### example: 
```jsonc
{"item":{"type":"entity","slot":"armor.head","copy":{"type":"entity","slot":"weapon.mainhand"}}}
```
### New Inventory save options
- added 2 more auto save storage options for `Inventory`. 
    - `enderChest` will save your items to your ender chest, Their is an issue where if you have your item ender chest open and you add items to your block ender chest it will remove the item. (not multiplayer tested) 
    - `cloud` will save your items to the world, works similar to ender chest but only works with the custom item, Like a global enderchest.
#### examples:
```jsonc
{"Inventory":{"show_items":"nbt","inventory_type":"chest","auto_save":{"storage":"enderChest"}}}
{"Inventory":{"show_items":"nbt","inventory_type":"chest","auto_save":{"storage":"cloud"}}}
```
### Simple Tags
- Simple tags. These tags go directly on the item.
    - added `NoGravity` tag to items when the item is dropped it will not fall down. However it will still follow the direction that you threw it.
    - added `NoMotion` tag to items. when the item is dropped it will not move.
    - added `Invulnerable` tag to items. the item will not get killed, some funkyness when throwing this item in lava and/or fire, makes it invisable.
    - added `foil` tag to items. When set to true it will apply the enchanted glint to the item.
#### Examples:
```jsonc
{"NoGravity": true,"NoMotion": true,"Invulnerable": true,"foil": true}
```
```mcfunction
give @p stick{NoGravity: true,NoMotion: true,Invulnerable: true,foil: true} 1
```
### `play_soud` Item Event
- added more sounds to `play_sound` Item Event
    - minecraft:item.armor.equip_chain
    - minecraft:item.armor.equip_diamond
    - minecraft:item.armor.equip_elytra
    - minecraft:item.armor.equip_generic
    - minecraft:item.armor.equip_gold
    - minecraft:item.armor.equip_iron
    - minecraft:item.armor.equip_leather
    - minecraft:item.armor.equip_netherite
    - minecraft:item.armor.equip_turtle
    - minecraft:event.raid.horn

- added new entity triggers. Runs via storage `minecraft:entity` See [Entity Triggers](#Entity%20Triggers) section

***
### Entity Tags (Experimental)
- [See Wiki for more.](https://github.com/legopitstop/More-NBT-Tags-Datapack/wiki)
- Supported conditions
    - `entity_properties`
    - `match_tool` - only supports tool, weapon items.
    - `time_check`
    - `weather_check`
#### example:
```jsonc
{
    "triggers": [
        {
            "debug": true, // when true it will tell via actionbar if condition is true.
            "type": "minecraft:conditions",
            "conditions": [ // Recomended to use a predecicate generator. Note that their is only support for some conditions.
                {
                    "condition": "minecraft:time_check",
                    "value": { // Takes in an object or just a constant value.
                        "min": 0,
                        "max": 6000
                    },
                    "events": {...}
                },
                {
                    "condition": "minecraft:weather_check",
                    "raining": true,
                    "thundering": false,
                    "events": {...}
                }
            ]
        }
    ]
}
```

***
### How to add triggers to entities in your datapack.
- create your datapack
- add the file `entity.json` to `data\minecraft\tags\functions\entity.json`. Then add, and replace the below code
```jsonc
{
    "replace": false,
    "values": [
        "<namespace>:<file>" // replace <namespace> with your datapacks unique namespace and <file> with your unique file name, these shouldent matter, as long as the JSON name and location are as stated.
    ]
}
```
- Then inside the mcfunction file that your referanced in the .json is where you place the below command and modify it to your needs. Note that `<entityID>` only currently supports `player`. 
```mcfunction
data modify storage minecraft:entity entity.<entityID> set value {"triggers":[{<trigger data>}]}
```
- Once you have edited it to your liking you can do /reload to apply your changes.

***
### Custom blocks `BlockTag` (Experimental)
- Note that everything here is subject to change in future versions.
- The `BlockTag` tag for items will create a block when you place it. Only works on `minecraft:armor_stand`
- See the wiki for more.
#### Examples
Tags on the item.
```jsonc
{
    "BlockTag": {
        "id": "custom:block", // The id of the custom block
        "material": "minecraft:cobblestone", // The vanilla minecraft block to use. Keep note of all the vanilla behvaiors.
        "loot": {
            "ignore_gaemmode": true, // when true the loot will drop no matter what gaemmode the player is. default: false.
            "type": "minecraft:loot", // types: `loot` will use the table. `this` will drop the custom item that you used to place the block.
            "table": "<the loot-table to use>", // needed if type=loot.
        },
        "on_destory": {} // when the block has been broken.
    }
}
```
Tags that are stored on the block. These are tags that are stored on the block.
```jsonc
{
    "data": {
        "id": "custom:block", // The id of the block
        "property_options": { // All the block properties used.
            "minecraft:facing": [
                0, 1, 2, 3, 4, 5
            ]
        },
        "properties": { // The current property
            "minecraft:facing": "<string>"
        },
        "loot": { // The loot to use when the block has been broken.
            "conditions": {},
            "ignore_gamemode": true,
            "type": "minecraft:loot",
            "table": "<the loot-table to use>"
        }
    }
}
```
***
### Config Data
- Config file is located storage more_nbt:config
- use `/function more_nbt:config` to open the config UI.
```jsonc
{
    "version": 1, // The version of config.
    "config": {
        "debugLog": false, // When true it will give an output via the chat log. default: false
        "on_use_reload": false // When true you can use the `reload` item component. default: false
    }
}
```

## **DebugLog**
- Added support for the new entity triggers nbt.
- Activate the debugLog (both for items and entity) via the config `/function more_nbt:config`

## **Example Item**
- Added 'Pocket Ender Chest' example item.
- Fixed sea treasure loot item not working.
- Added 'custom block'
- Added 'foods' that contains 2 custom food items.

## **Documentation**
- Added all documentation to Github Wiki.