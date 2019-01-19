execute as @s store result score @s cc_planter if data block ~ ~ ~ Items[{Slot:0b}] run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store success score @s cc_planterresult if score @s cc_planterCD matches 1100 if data block ~ ~ ~ Items[{id:"minecraft:wheat_seeds", Slot:0b}] if block ^ ^-1 ^1 minecraft:farmland if block ^ ^ ^1 minecraft:air run setblock ^ ^ ^1 minecraft:wheat[age=0]
execute if score @s cc_planterresult matches 1 run function planter:decrease_item
execute as @s store result score @s cc_planter_dur if score @s cc_planterresult matches 1 run data get entity @s Item.tag.Damage
execute as @s if score @s cc_planterresult matches 1 run function planter:decrease_tool
scoreboard players reset @s cc_planterresult
execute as @s store result score @s cc_planter if data block ~ ~ ~ Items[{Slot:0b}] run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store success score @s cc_planterresult if score @s cc_planterCD matches 1200 if data block ~ ~ ~ Items[{id:"minecraft:wheat_seeds", Slot:0b}] if block ^ ^-1 ^2 minecraft:farmland if block ^ ^ ^2 minecraft:air run setblock ^ ^ ^2 minecraft:wheat[age=0]
execute if score @s cc_planterresult matches 1 run function planter:decrease_item
execute as @s store result score @s cc_planter_dur if score @s cc_planterresult matches 1 run data get entity @s Item.tag.Damage
execute as @s if score @s cc_planterresult matches 1 run function planter:decrease_tool
scoreboard players reset @s cc_planterresult
execute as @s store result score @s cc_planter if data block ~ ~ ~ Items[{Slot:0b}] run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store success score @s cc_planterresult if score @s cc_planterCD matches 1300 if data block ~ ~ ~ Items[{id:"minecraft:wheat_seeds", Slot:0b}] if block ^ ^-1 ^3 minecraft:farmland if block ^ ^ ^3 minecraft:air run setblock ^ ^ ^3 minecraft:wheat[age=0]
execute if score @s cc_planterresult matches 1 run function planter:decrease_item
execute as @s store result score @s cc_planter_dur if score @s cc_planterresult matches 1 run data get entity @s Item.tag.Damage
execute as @s if score @s cc_planterresult matches 1 run function planter:decrease_tool
scoreboard players reset @s cc_planterresult
execute as @s store result score @s cc_planter if data block ~ ~ ~ Items[{Slot:0b}] run data get block ~ ~ ~ Items[{Slot:0b}].Count
