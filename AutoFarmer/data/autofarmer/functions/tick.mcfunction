#作物収穫
execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ #autofarmer:crop[age=7] run tag @s add destroy
execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:beetroots[age=3] run tag @s add destroy
execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ minecraft:soul_sand if block ~ ~1 ~ minecraft:nether_wart[age=3] run tag @s add destroy
execute as @a[tag=destroy,gamemode=!creative] at @s run setblock ~ ~1 ~ air destroy
execute as @a[tag=destroy,gamemode=creative] at @s run setblock ~ ~1 ~ air
execute as @a[tag=destroy] at @s run playsound block.crop.break master @a ~ ~ ~
tag @a remove destroy

#小麦
execute as @a[gamemode=!spectator] at @s if data entity @s SelectedItem{id:"minecraft:wheat_seeds"} if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:air run tag @s add put
clear @a[tag=put,gamemode=!creative] minecraft:wheat_seeds 1
execute as @a[tag=put] at @s run setblock ~ ~1 ~ wheat[age=0]
execute as @a[tag=put] at @s run playsound item.crop.plant master @a ~ ~ ~
tag @a remove put

#ジャガイモ
execute as @a[gamemode=!spectator] at @s if data entity @s SelectedItem{id:"minecraft:potato"} if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:air run tag @s add put
clear @a[tag=put,gamemode=!creative] minecraft:potato 1
execute as @a[tag=put] at @s run setblock ~ ~1 ~ potatoes[age=0]
execute as @a[tag=put] at @s run playsound item.crop.plant master @a ~ ~ ~
tag @a remove put

#ニンジン
execute as @a[gamemode=!spectator] at @s if data entity @s SelectedItem{id:"minecraft:carrot"} if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:air run tag @s add put
clear @a[tag=put,gamemode=!creative] minecraft:carrot 1
execute as @a[tag=put] at @s run setblock ~ ~1 ~ carrots[age=0]
execute as @a[tag=put] at @s run playsound item.crop.plant master @a ~ ~ ~
tag @a remove put

#ビートルート
execute as @a[gamemode=!spectator] at @s if data entity @s SelectedItem{id:"minecraft:beetroot_seeds"} if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:air run tag @s add put
clear @a[tag=put,gamemode=!creative] minecraft:beetroot_seeds 1
execute as @a[tag=put] at @s run setblock ~ ~1 ~ beetroots[age=0]
execute as @a[tag=put] at @s run playsound item.crop.plant master @a ~ ~ ~
tag @a remove put

#ネザーウォート
execute as @a[gamemode=!spectator] at @s if data entity @s SelectedItem{id:"minecraft:nether_wart"} if block ~ ~ ~ minecraft:soul_sand if block ~ ~1 ~ minecraft:air run tag @s add put
clear @a[tag=put,gamemode=!creative] minecraft:nether_wart 1
execute as @a[tag=put] at @s run setblock ~ ~1 ~ nether_wart[age=0]
execute as @a[tag=put] at @s run playsound item.nether_wart.plant master @a ~ ~ ~
tag @a remove put

#スイカ
execute as @a[gamemode=!spectator] at @s if data entity @s SelectedItem{id:"minecraft:melon_seeds"} if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:air run tag @s add put
clear @a[tag=put,gamemode=!creative] minecraft:melon_seeds 1
execute as @a[tag=put] at @s run setblock ~ ~1 ~ melon_stem[age=0]
execute as @a[tag=put] at @s run playsound item.crop.plant master @a ~ ~ ~
tag @a remove put

#カボチャ
execute as @a[gamemode=!spectator] at @s if data entity @s SelectedItem{id:"minecraft:pumpkin_seeds"} if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:air run tag @s add put
clear @a[tag=put,gamemode=!creative] minecraft:pumpkin_seeds 1
execute as @a[tag=put] at @s run setblock ~ ~1 ~ pumpkin_stem[age=0]
execute as @a[tag=put] at @s run playsound item.crop.plant master @a ~ ~ ~
tag @a remove put