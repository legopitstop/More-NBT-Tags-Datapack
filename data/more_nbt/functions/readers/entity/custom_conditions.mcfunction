# Desc: custom condistions
#
# Called By: more_nbt:readers/entity

# q.is_in_water
execute as @a at @a if block ~ ~ ~ water run scoreboard players add @a[distance=..0.5,limit=1] q.InWater 1
execute as @a at @a if block ~ ~1 ~ water run scoreboard players add @a[distance=..0.5,limit=1] q.InWater 1
# q.is_in_lava
execute as @a at @a if block ~ ~ ~ lava run scoreboard players add @a[distance=..0.5,limit=1] q.InLava 1
execute as @a at @a if block ~ ~1 ~ lava run scoreboard players add @a[distance=..0.5,limit=1] q.InLava 1
# q.is_in_cave
execute as @a at @a if block ~ ~ ~ cave_air run scoreboard players add @a[distance=..0.5,limit=1] q.InCave 1
execute as @a at @a if block ~ ~1 ~ cave_air run scoreboard players add @a[distance=..0.5,limit=1] q.InCave 1
# q.is_in_void
execute as @a at @a if block ~ ~ ~ void_air run scoreboard players add @a[distance=..0.5,limit=1] q.InVoid 1
execute as @a at @a if block ~ ~1 ~ void_air run scoreboard players add @a[distance=..0.5,limit=1] q.InVoid 1
# q.is_on_ground
execute as @a at @a store result score @s q.OnGround run data get entity @a[distance=..0.5,limit=1] OnGround
# q.is_on_fire
execute as @a at @a store result score @s q.OnFire run data get entity @a[distance=..0.5,limit=1] Fire
# q.is_holding_item
execute as @a at @a[nbt={SelectedItem:{}}] run scoreboard players add @a[distance=..0.5,limit=1] q.IsHoldingItem 1
# q.time_is_day
execute as @a at @a if predicate more_nbt:time_is_day run scoreboard players add @a[distance=..0.5,limit=1] q.TimeIsDay 1
# q.time_is_night
execute as @a at @a if predicate more_nbt:time_is_night run scoreboard players add @a[distance=..0.5,limit=1] q.TimeIsNight 1
# q.time_is_midnight
execute as @a at @a if predicate more_nbt:time_is_midnight run scoreboard players add @a[distance=..0.5,limit=1] q.TimeIsMidNight 1
# q.time_is_noon
execute as @a at @a if predicate more_nbt:time_is_noon run scoreboard players add @a[distance=..0.5,limit=1] q.TimeIsNoon 1
# q.weather_is_raining
#execute as @a at @a if predicate more_nbt:weather_rain run scoreboard players add @a[distance=..0.5,limit=1] q.WeatherRain 1
# q.weather_is_thundering
#execute as @a at @a if predicate more_nbt:weather_thunder run scoreboard players add @a[distance=..0.5,limit=1] q.WeatherThunder 1
# q.weather_is_clear
#execute as @a at @a if predicate more_nbt:weather_clear run scoreboard players add @a[distance=..0.5,limit=1] q.WeatherClear 1

# q.is_in_water_or_rain
execute as @a at @a[scores={q.InWater=1..}] run scoreboard players add @a[distance=..0.5,limit=1] q.InWaterOrRain 1
execute as @a at @a[scores={q.WeatherRain=1..}] run scoreboard players add @a[distance=..0.5,limit=1] q.InWaterOrRain 1