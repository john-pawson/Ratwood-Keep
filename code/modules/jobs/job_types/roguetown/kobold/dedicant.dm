/datum/job/roguetown/dedicant
	title = "Dedicant"
	flag = DEDICANT
	department_flag = KOBOLD
	faction = "Station"
	total_positions = 2
	spawn_positions = 2

	allowed_races = list(
		/datum/species/kobold
	)
	allowed_sexes = list(MALE, FEMALE)
	outfit = /datum/outfit/job/roguetown/dedicant
	tutorial = "You have lived your life thus far in service to the Great Dragon Gods, having spent years studying the many lost sacred texts where you could gather them."

	display_order = JDO_DEDICANT
	give_bank_account = FALSE
	min_pq = 4
	max_pq = null

/datum/outfit/job/roguetown/dedicant
	allowed_patrons = list(/datum/patron/draconic/anarinus, /datum/patron/draconic/decrom)

/datum/outfit/job/roguetown/dedicant/pre_equip(mob/living/carbon/human/H)
	..()
	H.virginity = TRUE
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltl = /obj/item/flashlight/flare/torch/lantern
	beltr = /obj/item/roguekey/koboldchurch
	head = /obj/item/clothing/head/roguetown/roguehood/astrata
	neck = /obj/item/clothing/neck/roguetown/psicross/wood
	wrists = /obj/item/clothing/wrists/roguetown/wrappings
	shoes = /obj/item/clothing/shoes/roguetown/sandals
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/astrata
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 4, TRUE)
		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
		H.change_stat("intelligence", 1)
		H.change_stat("endurance", 1)
		H.change_stat("perception", -1)

	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_spells(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
