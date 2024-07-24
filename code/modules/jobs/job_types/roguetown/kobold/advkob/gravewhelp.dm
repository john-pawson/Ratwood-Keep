/datum/advclass/gravewhelp
	name = "Gravewhelp"
	tutorial = "Gravewhelps are an often misunderstood sort in the village. Your kind are necessary here, out in the Bog where death is rampant. You do what you can to bring peace to the community after death through dirges, although despite Sullenheart's presence about you, you still catch odd glances..."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Kobold",
	)
	outfit = /datum/outfit/job/roguetown/kobold/bookwhelp
	category_tags = list(CTAG_TOILER)
	maxchosen = 1
	pickprob = 100

	outfit = /datum/outfit/job/kobold/gravewhelp

/datum/outfit/job/kobold/gravewhelp
	allowed_patrons = list(/datum/patron/draconic/sullenheart)

/datum/outfit/job/roguetown/kobold/gravewhelp/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/necrahood
	neck = /obj/item/clothing/neck/roguetown/psicross/wood
	cloak = /obj/item/clothing/cloak/raincloak/mortus
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/necra
	shirt = /obj/item/clothing/suit/roguetown/armor/leather/vest/black
	pants = /obj/item/clothing/under/roguetown/trou/leather/mourning
	shoes = /obj/item/clothing/shoes/roguetown/boots
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltl = /obj/item/roguekey/graveyard
	beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
	backr = /obj/item/rogueweapon/shovel
	l_hand = /obj/item/rogue/instrument/harp
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 3, TRUE)
  		H.mind.adjust_skillrank(/datum/skill/misc/music, 1, TRUE)
		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
		H.change_stat("strength", 1)
		H.change_stat("constitution", 2)
		H.change_stat("intelligence", -2)
		H.change_stat("endurance", 1)
		H.change_stat("speed", 1)
	ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_SOUL_EXAMINE, TRAIT_GENERIC)
	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_spells(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
