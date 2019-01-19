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

#Saplings
#Plantfunctions for the tree sorts
execute as @s if data block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:0b}] run function planter:trees/plant_oak
execute as @s if data block ~ ~ ~ Items[{id:"minecraft:spruce_sapling", Slot:0b}] run function planter:trees/plant_spruce
execute as @s if data block ~ ~ ~ Items[{id:"minecraft:birch_sapling", Slot:0b}] run function planter:trees/plant_birch
execute as @s if data block ~ ~ ~ Items[{id:"minecraft:acacia_sapling", Slot:0b}] run function planter:trees/plant_acacia
execute as @s if data block ~ ~ ~ Items[{id:"minecraft:jungle_sapling", Slot:0b}] run function planter:trees/plant_jungle
execute as @s if data block ~ ~ ~ Items[{id:"minecraft:dark_oak_sapling", Slot:0b}] run function planter:trees/plant_dark_oak
#Refullfunctions for the tree sorts
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:oak_sapling"}] run function planter:trees/refill_oak
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:spruce_sapling"}] run function planter:trees/refill_spruce
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:birch_sapling"}] run function planter:trees/refill_birch
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:acacia_sapling"}] run function planter:trees/refill_acacia
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:jungle_sapling"}] run function planter:trees/refill_jungle
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:dark_oak_sapling"}] run function planter:trees/refill_dark_oak
#Reset the cooldown timer at specific amount
execute as @s if score @s cc_planterCD matches 1400.. run scoreboard players reset @s cc_planterCD
