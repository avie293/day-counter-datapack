scoreboard players enable @a dc_bed_toggle
execute as @a[scores={dc_bed_toggle=1..}] run function daycounter:bed_toggle

execute store result score $bed_now daycounter run time query day
tag @a[tag=dc_can_sleep] remove dc_can_sleep
execute as @a[tag=dc_bed] at @s if dimension minecraft:overworld if score $bed_now daycounter matches 12542..23460 run tag @s add dc_can_sleep
execute as @a[tag=dc_bed] at @s if dimension minecraft:overworld if predicate daycounter:thunderstorm run tag @s add dc_can_sleep
