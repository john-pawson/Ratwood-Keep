/datum/job/roguetown/chieftan
	title = "Chieftain"
	flag = CHIEFTAIN
	department_flag = KOBOLD
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	f_title = "Chieftainess"
	allowed_races = list(
		/datum/species/kobold
	)
	allowed_sexes = list(MALE, FEMALE)
	tutorial = "You have a sacred duty to the kobolds of your village community, advising and counselling where necessary. Life in the Bog isn't easy, and your flock is prone to danger more than many others, particularly given the poor state of your chosen settlement. Through perserverance and commitment to the Great Dragons, perhaps you can establish a great home for your people to thrive in?"
	whitelist_req = FALSE

	spells = list(/obj/effect/proc_holder/spell/self/convertrole/whelp, /obj/effect/proc_holder/spell/self/grant_title)
	outfit = /datum/outfit/job/roguetown/chieftain

	display_order = JDO_CHIEFTAIN
	min_pq = 6
	max_pq = null

/datum/outfit/job/roguetown/chieftain
	allowed_patrons = list(/datum/patron/draconic/anarinus)

/datum/outfit/job/roguetown/priest/pre_equip(mob/living/carbon/human/H)
	..()
	H.virginity = TRUE
	neck = /obj/item/clothing/neck/roguetown/psicross/astrata
	head = /obj/item/clothing/head/roguetown/priestmask
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/priest
	pants = /obj/item/clothing/under/roguetown/tights/black
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltr = /obj/item/keyring/chieftain
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/priest
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(
		/obj/item/needle/pestra = 1,
		/obj/item/natural/worms/leech/cheele = 1,
	)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 5, TRUE)
		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
		H.change_stat("strength", -1)
		H.change_stat("intelligence", 3)
		H.change_stat("constitution", -1)
		H.change_stat("endurance", 1)
		H.change_stat("speed", -1)
	var/datum/devotion/C = new /datum/devotion(H, H.patron) // This creates the cleric holder used for devotion spells
	C.grant_spells_priest(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)

/obj/effect/proc_holder/spell/self/convertrole/whelp
	name = "Welcome Whelp"
	new_role = "Whelp"
	recruitment_faction = "Kobolds"
	recruitment_message = "Will you serve the community, %RECRUIT?"
	accept_message = "With all of my heart!"
	refuse_message = "Not for now."

 
