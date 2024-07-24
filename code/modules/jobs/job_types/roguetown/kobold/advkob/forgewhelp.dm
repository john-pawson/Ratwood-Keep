/datum/advclass/forgewhelp
	name = "Forgewhelp"
	tutorial = "Forgewhelps are those few kobolds who seek to return kobold kind to an age of wonder, those who smith great things in service to Magnus. Sadly, in the village, they tend to lack the materials to properly fund their grand works and have to seek out their own..."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		/datum/species/kobold
	)
	vampcompat = FALSE
	outfit = /datum/outfit/job/roguetown/kobold/forgewhelp
	category_tags = list(CTAG_TOILER)
	maximum_possible_slots = 1
	pickprob = 100

/datum/outfit/job/roguetown/kobold/forgewhelp
	allowed_patrons = list(/datum/patron/draconic/magnus)

/datum/outfit/job/roguetown/kobold/forgewhelp/pre_equip(mob/living/carbon/human/H)
	..()
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/rogueweapon/hammer
	beltl = /obj/item/rogueweapon/tongs
	gloves = /obj/item/clothing/gloves/roguetown/leather
	cloak = /obj/item/clothing/cloak/apron/blacksmith
	mouth = /obj/item/rogueweapon/huntingknife
	pants = /obj/item/clothing/under/roguetown/trou
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/flint = 1, /obj/item/rogueore/coal=1, /obj/item/rogueore/iron=1)

	if(H.gender == MALE)

		shoes = /obj/item/clothing/shoes/roguetown/boots/leather
		shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt
	else

		armor = /obj/item/clothing/suit/roguetown/shirt/dress/gen/random
		shoes = /obj/item/clothing/shoes/roguetown/shortboots
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, pick(1,2), TRUE) // If you can make a sword you can swing one.
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE) 
		H.mind.adjust_skillrank(/datum/skill/combat/axes, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE) 
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE) // The strongest fists in the land.
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE) 
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/engineering, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/blacksmithing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/armorsmithing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/weaponsmithing, 2, TRUE)
		H.change_stat("strength", 1)
		H.change_stat("endurance", 2)
		H.change_stat("constitution", 2)
		H.change_stat("speed", -1)
		H.change_stat("fortune", 1)
