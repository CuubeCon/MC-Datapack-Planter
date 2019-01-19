#First block
#Save current amount of seeds in slot 0 in a scoreboard
execute as @s store result score @s cc_planter if data block ~ ~ ~ Items[{Slot:0b}] run data get block ~ ~ ~ Items[{Slot:0b}].Count
#Plant if there is farmland and above air and seeds in slot 0 and cooldown timer is at certain amoint. Safe the succes in a scoreboard
execute store success score @s cc_planterresult if score @s cc_planterCD matches 1100 if data block ~ ~ ~ Items[{id:"minecraft:dark_oak_sapling", Slot:0b}] if block ^ ^-1 ^1 #planter:placeable_land if block ^ ^ ^1 minecraft:air run setblock ^ ^ ^1 minecraft:dark_oak_sapling
#If the plant cmd above was successful, decrease the item
execute if score @s cc_planterresult matches 1 run function planter:decrease_item
#Save the current damage of the hoe, when seed was planted
execute as @s store result score @s cc_planter_dur if score @s cc_planterresult matches 1 run data get entity @s Item.tag.Damage
#Remove durability, when seed was planted
execute as @s if score @s cc_planterresult matches 1 run function planter:decrease_tool
#Reset the score for the success of the plant cmd
scoreboard players reset @s cc_planterresult
#Second block
execute as @s store result score @s cc_planter if data block ~ ~ ~ Items[{Slot:0b}] run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store success score @s cc_planterresult if score @s cc_planterCD matches 1200 if data block ~ ~ ~ Items[{id:"minecraft:dark_oak_sapling", Slot:0b}] if block ^ ^-1 ^2 #planter:placeable_land if block ^ ^ ^2 minecraft:air run setblock ^ ^ ^2 minecraft:dark_oak_sapling
execute if score @s cc_planterresult matches 1 run function planter:decrease_item
execute as @s store result score @s cc_planter_dur if score @s cc_planterresult matches 1 run data get entity @s Item.tag.Damage
execute as @s if score @s cc_planterresult matches 1 run function planter:decrease_tool
scoreboard players reset @s cc_planterresult
#Third block
execute as @s store result score @s cc_planter if data block ~ ~ ~ Items[{Slot:0b}] run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store success score @s cc_planterresult if score @s cc_planterCD matches 1300 if data block ~ ~ ~ Items[{id:"minecraft:dark_oak_sapling", Slot:0b}] if block ^ ^-1 ^3 #planter:placeable_land if block ^ ^ ^3 minecraft:air run setblock ^ ^ ^3 minecraft:dark_oak_sapling
execute if score @s cc_planterresult matches 1 run function planter:decrease_item
execute as @s store result score @s cc_planter_dur if score @s cc_planterresult matches 1 run data get entity @s Item.tag.Damage
execute as @s if score @s cc_planterresult matches 1 run function planter:decrease_tool
scoreboard players reset @s cc_planterresult
