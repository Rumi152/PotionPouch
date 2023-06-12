execute store result score @s PotionPouchCount run data get entity @s Item.tag.Items

execute as @s[scores={PotionPouchCount=..7}] at @s as @e[type=item, limit=1, distance=..1, nbt={OnGround:0b}] run function potion-pouch:add-tag-potion

data modify entity @s[scores={PotionPouchCount=..7}] Item.tag.Items append from entity @e[tag=PotionToPack,limit=1] Item
kill @e[tag=PotionToPack]