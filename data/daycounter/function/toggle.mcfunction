tag @s[tag=dc_hidden] add dc_temp
tag @s[tag=!dc_temp] add dc_hidden
tag @s[tag=dc_temp] remove dc_hidden
tag @s remove dc_temp

title @s[tag=dc_hidden] actionbar ""
tellraw @s[tag=dc_hidden] [{"text":"Day Counter ","color":"gold"},{"text":"hidden","color":"red"},{"text":" - /trigger dc_toggle to show it again","color":"gray"}]
tellraw @s[tag=!dc_hidden] [{"text":"Day Counter ","color":"gold"},{"text":"shown","color":"green"}]

scoreboard players set @s dc_toggle 0
