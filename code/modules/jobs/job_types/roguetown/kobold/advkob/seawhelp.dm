/datum/advclass/seawhelp
	name = "Seawhelp"
	tutorial = "You are a seawhelp, carried in some way to the village by the tides of the world. Your duties here are to provide, not necessarily from the sea but at least from a body of water..."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Kobold",
	)
	outfit = /datum/outfit/job/roguetown/kobold/seawhelp
	category_tags = list(CTAG_TOILER)
	maxchosen = 1
	pickprob = 100

/datum/outfit/job/roguetown/kobold/seawhelp/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
  		H.mind.adjust_skillrank(/datum/skill/labor/fishing, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE) 
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/butchering, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/traps, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
		H.change_stat("intelligence", 1)
		H.change_stat("perception", 2)
		H.change_stat("constitution", 1)
		H.change_stat("speed", 1)
	if(H.gender == MALE)
		pants = /obj/item/clothing/under/roguetown/tights/random
		shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt/random
		shoes = /obj/item/clothing/shoes/roguetown/boots/leather
		head = /obj/item/clothing/head/roguetown/fisherhat
		mouth = /obj/item/rogueweapon/huntingknife
		armor = /obj/item/clothing/suit/roguetown/armor/workervest
		backl = /obj/item/storage/backpack/rogue/satchel
		belt = /obj/item/storage/belt/rogue/leather
		backr = /obj/item/fishingrod/fisher
		beltr = /obj/item/cooking/pan
		beltl = /obj/item/flint
		backpack_contents = list(/obj/item/natural/worms = 2,/obj/item/rogueweapon/shovel/small=1)	
