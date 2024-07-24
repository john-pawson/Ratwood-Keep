/datum/advclass/steelclaw
	name = "steelclaw"
	tutorial = ""
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Kobold",
	)
	outfit = /datum/outfit/job/roguetown/kobold/steelclaw
  traits_applied = list(TRAIT_DODGEEXPERT)
	category_tags = list(CTAG_SPOTTER)
	maxchosen = 2
	pickprob = 100

/datum/outfit/job/roguetown/kobold/steelclaw
	allowed_patrons = list(/datum/patron/draconic/revillicus)

/datum/outfit/job/roguetown/kobold/steelclaw/pre_equip(mob/living/carbon/human/H)
..()
	head = /obj/item/clothing/head/roguetown/roguehood
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	cloak = /obj/item/clothing/cloak/raincloak/furcloak/brown
	armor = /obj/item/clothing/suit/roguetown/shirt/robe
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltl = /obj/item/rogueweapon/katar
  beltr = /obj/item/rogueweapon/katar
	backl = /obj/item/storage/backpack/rogue/backpack
	r_hand = /obj/item/rogueweapon/woodstaff
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE) 
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 5, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE) 
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
	H.change_stat("strength", 2)
	H.change_stat("constitution", 1)
	H.change_stat("speed", 2)
