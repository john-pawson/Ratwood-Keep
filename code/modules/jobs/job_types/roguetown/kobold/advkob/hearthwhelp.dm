/datum/advclass/hearthwhelp
	name = "Hearthwhelp"
	tutorial = "There's nothing better in life than seeing hungry kobolds stuffing themselves with your food and ale. It can be a tough life out here, but you make sure to keep everyone in the community warm in the glow of your hearth!"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Kobold",
	)
	vampcompat = FALSE
	outfit = /datum/outfit/job/roguetown/kobold/hearthwhelp
	category_tags = list(CTAG_TOILER)
	maxchosen = 1
	pickprob = 100

/datum/outfit/job/roguetown/kobold/hearthwhelp
	allowed_patrons = list(/datum/patron/draconic/onissia)

/datum/outfit/job/roguetown/kobold/hearthwhelp/pre_equip(mob/living/carbon/human/H)
	..()
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
  	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
  	H.mind.adjust_skillrank(/datum/skill/misc/weaving, 2, TRUE)
  	H.change_stat("endurance", 2)
		H.change_stat("constitution", 2)
  	if(H.gender == MALE)
		pants = /obj/item/clothing/under/roguetown/tights/random
		shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt/random
		shoes = /obj/item/clothing/shoes/roguetown/shortboots
		belt = /obj/item/storage/belt/rogue/leather
		beltl = /obj/item/storage/belt/rogue/pouch/coins/mid
		neck = /obj/item/keyring/innkeep
		cloak = /obj/item/clothing/cloak/apron/waist
	  else
		armor = /obj/item/clothing/suit/roguetown/shirt/dress
		shoes = /obj/item/clothing/shoes/roguetown/shortboots
		neck = /obj/item/storage/belt/rogue/pouch/coins/mid
		belt = /obj/item/storage/belt/rogue/leather/rope
		beltl = /obj/item/keyring/innkeep

  // Based on the abysmal skills, stats and warm flavour, honestly a really good candidate for being an Onissia devotion holder once spells are fleshed out, hesitant to just slop it on them now as kobold village is already over-represented in devotion holders.
