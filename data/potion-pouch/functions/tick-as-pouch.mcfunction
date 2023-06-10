execute store result score @s PotionPouchCount run data get entity @s Item.tag.Items

execute as @s[scores={PotionPouchCount=..7}] run tag @e[type=item,nbt={Item:{id:"minecraft:potion"}}, limit=1, distance=..1] add PotionToPack

data modify entity @s[scores={PotionPouchCount=..7}] Item.tag.Items append from entity @e[tag=PotionToPack,limit=1] Item
kill @e[tag=PotionToPack]