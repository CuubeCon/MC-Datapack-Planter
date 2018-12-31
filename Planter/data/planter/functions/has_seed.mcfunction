#Add one to the cooldown timer
execute as @s run scoreboard players add @s cc_planterCD 1
#Safe the amount of seeds in the first slot (0b), neccesarry to decrease
execute as @s store result score @s cc_planter if data block ~ ~ ~ Items[{Slot:0b}] run data get block ~ ~ ~ Items[{Slot:0b}].Count
#Plantfunctions for the three sorts
execute as @s if data block ~ ~ ~ Items[{id:"minecraft:potato", Slot:0b}] run function planter:plant_potato
execute as @s if data block ~ ~ ~ Items[{id:"minecraft:carrot", Slot:0b}] run function planter:plant_carrot
execute as @s if data block ~ ~ ~ Items[{id:"minecraft:wheat_seeds", Slot:0b}] run function planter:plant_wheat_seeds
#Refullfunctions for the three sorts
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:potato"}] run function planter:refill_potato
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:carrot"}] run function planter:refill_carrot
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:wheat_seeds"}] run function planter:refill_wheat_seeds
#Reset the cooldown timer at specific amount
execute as @s if score @s cc_planterCD matches 1400.. run scoreboard players reset @s cc_planterCD
