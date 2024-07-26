/datum/advclass/stonewhelp
	name = "Stonewhelp"
	tutorial = "They say that you broke out of your shell with a pick in your clawed grip. Now you toil away in the deep beneath the bog, doing what you can for the village by bringing in all the materials they could ever need. You keep some shinies for yourself though..."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		/datum/species/kobold
	)
	vampcompat = FALSE
	outfit = /datum/outfit/job/roguetown/kobold/stonewhelp
	category_tags = list(CTAG_TOILER)
	maximum_possible_slots = 1
	pickprob = 100

/datum/outfit/job/roguetown/kobold/stonewhelp
	allowed_patrons = list(/datum/patron/draconic/magnus)


/datum/outfit/job/roguetown/kobold/stonewhelp/pre_equip(mob/living/carbon/human/H)
	..()
	cloak = /obj/item/clothing/cloak/apron/waist/brown
	pants = /obj/item/clothing/under/roguetown/trou
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/random
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/rogueweapon/pick
	beltl = /obj/item/rogueweapon/hammer/claw
	backl = /obj/item/storage/backpack/rogue/backpack
	mouth = /obj/item/roguekey/koboldgate
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/labor/mining, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/engineering, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/masonry, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE) 
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.change_stat("strength", 1)
		H.change_stat("endurance", 1)
		H.change_stat("constitution", 1)
		H.change_stat("fortune", 2)
