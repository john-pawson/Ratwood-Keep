/datum/job/roguetown/dragonguard
	title = "Dragon Guard"
	flag = DRAGONGUARD
	department_flag = KOBOLD
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	allowed_races = list(
		/datum/species/dracon
		/datum/species/lizardfolk
	)
	allowed_sexes = list(MALE, FEMALE)
	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED)
	tutorial = "Whether as part of some divinely assigned duty or firm loyalty, you serve the Chieftain with all of your heart. A Hedge Knight by most accounts, your immense martial prowess and sense of comeradrie with the kobolds who look to you for safety and security is nearly without peer."
	display_order = JDO_DRAGONGUARD
	whitelist_req = TRUE
	outfit = /datum/outfit/job/roguetown/dragonguard
	min_pq = 6
	max_pq = null

/datum/outfit/job/roguetown/dragonguard
	allowed_patrons = list(/datum/patron/draconic/revillicus)

/datum/outfit/job/roguetown/dragonguard/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/heavy/knight
	gloves = /obj/item/clothing/gloves/roguetown/plate
	wrists = /obj/item/clothing/neck/roguetown/psicross/silver
	pants = /obj/item/clothing/under/roguetown/platelegs
	neck = /obj/item/clothing/neck/roguetown/bervor
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
	armor = /obj/item/clothing/suit/roguetown/armor/plate/full
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	beltr = /obj/item/rogueweapon/sword/long
	beltl = /obj/item/quiver/arrows
	belt = /obj/item/storage/belt/rogue/leather/hand
	backr = /obj/item/storage/backpack/rogue/satchel/black
	backl = /obj/item/gun/ballistic/revolver/grenadelauncher/bow
	r_hand = /obj/item/rogueweapon/mace/goden/steel
	backpack_contents = list(/obj/item/keyring/dragonguard)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
		H.change_stat("strength", 3)
		H.change_stat("perception", 2)
		H.change_stat("constitution", 2)
		H.change_stat("speed", -1)
	H.dna.species.soundpack_m = new /datum/voicepack/male/knight()
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_spells_templar(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
