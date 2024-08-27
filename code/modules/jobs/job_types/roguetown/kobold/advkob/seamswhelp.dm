/datum/advclass/seamswhelp
	name = "Seamswhelp"
	tutorial = "The Spider-Dragon Sewdo is your muse, and you aim to weave great works that will catch his attention one day. For his part, you do have an unnerving talent with a loom which you have used to keep kin warm and cosy for years!"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		/datum/species/kobold
	)
	vampcompat = FALSE
	outfit = /datum/outfit/job/roguetown/kobold/seamswhelp
	category_tags = list(CTAG_TOILER)
	maximum_possible_slots = 1
	pickprob = 100

/datum/outfit/job/roguetown/kobold/seamswhelp
	allowed_patrons = list(/datum/patron/draconic/magnus)

/datum/outfit/job/roguetown/kobold/seamswhelp/pre_equip(mob/living/carbon/human/H)
	..()
	mouth = /obj/item/roguekey/koboldgate
	belt = /obj/item/storage/belt/rogue/leather/cloth/lady
	pants = /obj/item/clothing/under/roguetown/tights/random
	armor = /obj/item/clothing/suit/roguetown/armor/armordress
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	backl = /obj/item/storage/backpack/rogue/satchel
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
	beltr = /obj/item/rogueweapon/huntingknife/idagger
	cloak = /obj/item/clothing/cloak/raincloak/furcloak
	beltl = /obj/item/needle
	backpack_contents = list(/obj/item/natural/cloth = 1, /obj/item/needle = 1, /obj/item/natural/bundle/fibers/full = 1)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/tanning, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
		H.change_stat("intelligence", 2)
		H.change_stat("speed", 2)  
		H.change_stat("perception", 1)
