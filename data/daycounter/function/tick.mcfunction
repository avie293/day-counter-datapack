scoreboard players enable @a dc_toggle
execute as @a[scores={dc_toggle=1..}] run function daycounter:toggle

execute store result score $day daycounter run time query time
scoreboard players operation $day daycounter /= #ticks_per_day daycounter
scoreboard players add $day daycounter 0
title @a[tag=!dc_hidden] actionbar [{"text":"DAY ","color":"white"},{"score":{"name":"$day","objective":"daycounter"}}]
