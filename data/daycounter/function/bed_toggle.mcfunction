tag @s[tag=dc_bed] add dc_bed_temp
tag @s[tag=!dc_bed_temp] add dc_bed
tag @s[tag=dc_bed_temp] remove dc_bed
tag @s remove dc_bed_temp

tellraw @s[tag=dc_bed] [{"text":"Bed indicator ","color":"gold"},{"text":"on","color":"green"},{"text":" - needs the Day Counter resource pack","color":"gray"}]
tellraw @s[tag=!dc_bed] [{"text":"Bed indicator ","color":"gold"},{"text":"off","color":"red"}]

scoreboard players set @s dc_bed_toggle 0
