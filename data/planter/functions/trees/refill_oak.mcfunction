#Refill function. Check if in slot is seed, if so, set slot to 0b, when there is no item in slot 0b
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:1b}] run data modify block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:1b}].Slot set value 0b
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:2b}] run data modify block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:2b}].Slot set value 0b
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:3b}] run data modify block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:3b}].Slot set value 0b
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:4b}] run data modify block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:4b}].Slot set value 0b
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:5b}] run data modify block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:5b}].Slot set value 0b
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:6b}] run data modify block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:6b}].Slot set value 0b
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:7b}] run data modify block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:7b}].Slot set value 0b
execute as @s unless data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:8b}] run data modify block ~ ~ ~ Items[{id:"minecraft:oak_sapling", Slot:8b}].Slot set value 0b
