## CHANGELOG (v1.4.0)
## GENERAL
- nbt_format has been increased to `3`
- fixed `add_mob_effect` tag. when showIcon has been set to false it will make the effect icon flicker

## NBT CHANGES
- `onUse` tag has been changed to `on_use`
- added `show_items` tag to `Inventory`. enum statements. valid; "shulkerBox", "nbt"
- You can override nbt_format message by putting "IgnoreFormatOverride" instead of integer. This is used for the example items, as they will always be up-to-date It is recomended to use the integer incase their are any nbt changes that break the item in future versions.
- added more durability display options to `durability` tag. (see documentation for more.)
Example Items;
```json
{"moreNBT":{"nbt_format":"IgnoreFormatOverride"},"durability":{"max_durability":10,"display":{"type":"actionbarBar","color_theme":"purple"}}}
```
```json
carrot_on_a_stick{"moreNBT":{"nbt_format":"IgnoreFormatOverride"},"durability":{"max_durability":10,"display":{"type":"bossbar","color":"blue"}}}
```
- changed `say` Event to use `<PlayerName>` instead of `[PlayerName]`

## NEW NBT
- `on_hold` tag. Contains all the same events as on_use. Runs when you hold the item.
- `on_use_on` tag. Contains all the same events as on_use. Runs when you click on a block. Not effected by air, cave_air, void_air, water, or lava. changeable in #more_nbt:on_use_on_whitelist

## EXPERIMENTAL NBT (experimental, may change)
- `new_ui` tag is now working. Still experimental, may change around a few parameter names. Check the documentation for more.

## Example Item
- carrot thrower's durability display has been moved from `on_use` to `on_hold`.
- new_ui item has been publicly added and working.
## Documentation
- Updated for 1.4.0
- changed onUse doc name to Item Events. This also includes info about Item Event Triggers (on_use, on_hold, etc). Still formatted the same, plan on changing it to somthing similar to how Bedtrock Edition handles Events and possably add some of their trigger events.
- added `Inventory` item to examples doc.