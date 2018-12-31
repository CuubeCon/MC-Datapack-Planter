#Start Cmd. if a planter construct was found, check if there are seeds to plant
execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:golden_hoe"}}] at @s if block ^ ^ ^-1 minecraft:dispenser if data block ^ ^ ^-1 Items[] positioned ^ ^ ^-1 run function planter:has_seed
