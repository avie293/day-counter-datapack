scoreboard objectives remove daycounter
scoreboard objectives remove dc_toggle
scoreboard objectives remove dc_bed_toggle
scoreboard objectives remove dc_menu

tag @a remove dc_hidden
tag @a remove dc_temp
tag @a remove dc_bed
tag @a remove dc_bed_temp
tag @a remove dc_can_sleep

tellraw @s [{"text":"Day Counter has been uninstalled. Remove or disable the datapack now, otherwise it keeps running.","color":"red"}]
tellraw @s [{"text":"To disable it, use the command","color":"red"}," ",{"text":"[/datapack disable ...]","color":"yellow","click_event":{"action":"suggest_command","command":"/datapack disable "}}]
