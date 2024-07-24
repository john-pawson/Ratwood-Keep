/datum/advclass/stoneclaw
	name = "Stoneclaw"
	tutorial = ""
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Kobold",
	)
	outfit = /datum/outfit/job/roguetown/kobold/stoneclaw
  traits_applied = list(TRAIT_CRITICAL_RESISTANCE, TRAIT_NOPAINSTUN, TRAIT_STEELHEARTED)
	category_tags = list(CTAG_SPOTTER)
	maxchosen = 2
	pickprob = 100

/datum/outfit/job/roguetown/kobold/stoneclaw
	allowed_patrons = list(/datum/patron/draconic/revillicus)

/datum/outfit/job/roguetown/kobold/stoneclaw/pre_equip(mob/living/carbon/human/H)
	..()
  		H.mind.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3,, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/labor/butchering, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/traps, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
			beltr = /obj/item/rogueweapon/mace/cudgel
			belt = /obj/item/storage/belt/rogue/leather
			beltl = /obj/item/rogueweapon/huntingknife
			backl = /obj/item/storage/backpack/rogue/satchel
			shoes = /obj/item/clothing/shoes/roguetown/boots/leather
			wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
			head = /obj/item/clothing/head/roguetown/helmet/horned
			cloak = /obj/item/clothing/cloak/raincloak/furcloak/brown
			H.change_stat("intelligence", -1)
			H.change_stat("strength", 2) 
			H.change_stat("constitution", 2)
			H.change_stat("endurance", 2)
