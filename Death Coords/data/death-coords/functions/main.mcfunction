# Gets player coords
execute as @a store result score @s coords_x run data get entity @s Pos[0]
execute as @a store result score @s coords_y run data get entity @s Pos[1]
execute as @a store result score @s coords_z run data get entity @s Pos[2]

# When player dies, display message and reset death count
execute as @a[scores={death=1}] run function death-coords:msg
execute as @a[scores={death=1}] run scoreboard players remove @s death 1