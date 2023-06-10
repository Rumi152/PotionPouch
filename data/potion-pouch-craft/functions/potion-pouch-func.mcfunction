recipe take @a potion-pouch-craft:potion-pouch-recipe

execute as @a[advancements={potion-pouch-craft:potion-pouch-adv=true}] run give @p minecraft:bundle{potion-pouch:1b, display:{Name:'{"text":"Potion pouch","italic":false}'}}

clear @a minecraft:knowledge_book

advancement revoke @a only potion-pouch-craft:potion-pouch-adv