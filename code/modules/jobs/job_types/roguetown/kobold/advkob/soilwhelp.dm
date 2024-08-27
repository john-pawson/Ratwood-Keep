/datum/advclass/soilwhelp
	name = "Soilwhelp"
	tutorial = "Soilwhelps spend years developing a deep bond with the earth to provide for the village. The fields they toil in are blessed by Deemimoria herself, but all soilwhelps care for the crops they tend beyond this blessing..."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		/datum/species/kobold
	)
	vampcompat = FALSE
	outfit = /datum/outfit/job/roguetown/kobold/soilwhelp
	category_tags = list(CTAG_TOILER)
	maximum_possible_slots = 1
	pickprob = 100

/datum/outfit/job/roguetown/kobold/soilwhelp
	allowed_patrons = list(/datum/patron/draconic/deemimoria)

/datum/outfit/job/roguetown/kobold/soilwhelp/pre_equip(mob/living/carbon/human/H)
	..()
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltr = /obj/item/flashlight/flare/torch/lantern
	backl = /obj/item/storage/backpack/rogue/satchel
	head = /obj/item/clothing/head/roguetown/dendormask
	neck = /obj/item/clothing/neck/roguetown/psicross/wood
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/dendor
	mouth = /obj/item/roguekey/koboldgate
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/farming, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/druidic, 2, TRUE) //This does nothing, but maybe one day it will.
		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/magic/druidic, 1, TRUE)
		H.change_stat("intelligence", 1)
		H.change_stat("endurance", 1)
		H.change_stat("perception", -1)

		ADD_TRAIT(H, TRAIT_SEEDKNOW, TRAIT_GENERIC)
		var/datum/devotion/C = new /datum/devotion(H, H.patron)
		C.grant_spells(H)
		H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
