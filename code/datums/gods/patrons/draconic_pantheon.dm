/datum/patron/draconic
	name = null
	associated_faith = /datum/faith/draconic
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue/draconic

/datum/patron/draconic/anarinus
	name = "Anarinus"
	domain = "Golden Dragon God of Sunshine, Warmth and Forgiveness."
	desc = "Twin of Moonari and with them, the eldest of all great dragons. His strong compassion and love warming the hearts, minds, and bodies of all kobolds that follow them."
	worshippers = "The Compassionate, Forgiving and Honourable."
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/revive

/datum/patron/draconic/moonari
	name = "Moonari"
	domain = "Silver Dragon Goddess of Moonlight, Wisdom, and Consolidation."
	desc = "The twin of Anarius, where their brother is known for bringing deeper thought to kobolds and the understanding to feel for others besides themselves."
	worshippers = "The Thoughtful, Curious and Reconciliatory."
	t2 = /obj/effect/proc_holder/spell/invoked/blindness
	t3 = /obj/effect/proc_holder/spell/invoked/invisibility

/datum/patron/draconic/deemimoria
	name = "Deemimoria"
	domain = "Grass Dragon Goddess of Nature, Flora and Fauna."
	desc = "The next born after Anarinus and Moonari, she is the reason the world has plants and animals."
	worshippers = "The Martyred, Brave and Caring."
	mob_traits = list(TRAIT_KNEESTINGER_IMMUNITY)
	t2 = /obj/effect/proc_holder/spell/targeted/blesscrop
	t3 = /obj/effect/proc_holder/spell/targeted/beasttame
	t4 = /obj/effect/proc_holder/spell/targeted/conjure_glowshroom

/datum/patron/draconic/augwinia
	name = "Augwinia"
	domain = "Coral Dragon Goddess of Rivers, Fishing, and Rain. "
	desc = "She brought water to the deeper lands by creating the cycle of clouds with her magical power. She is also responsible for the creation of fish and wildlife inside the rivers."
	worshippers = "The Fishers, Seafarers and Charitable."

/datum/patron/divine/revillicus
	name = "Revillicus"
	domain = "Red Dragon God of Righteous Rage, Fury, and Revenge."
	desc = "He is the protector of kobold kind, through him births the bravery to strike back against those who have wronged kin."
	worshippers = "The Brave, Strong and Loyal."

/datum/patron/divine/sullenheart
	name = "Sullenheart"
	domain = "The bone dragon goddess of Sorrow, Death and Loss."
	desc = "Guides lost kobolds to their place into the next live, though she does so with great pain and sorrow every timeone of her sweet children die."
	worshippers = "The Mourning, Dead and Gravetenders."
	mob_traits = list(TRAIT_SOUL_EXAMINE)
	t2 = /obj/effect/proc_holder/spell/targeted/burialrite
	t3 = /obj/effect/proc_holder/spell/targeted/churn
	t4 = /obj/effect/proc_holder/spell/targeted/soulspeak

/datum/patron/draconic/nixor
	name = "Nixor"
	domain = "The White Dragon God of Trickery, Pranks, and Fun."
	desc = "Nixor is the happiest of his fellow great dragons, always there to play a prank or pop a joke and one of the few to ever make Revillius laugh."
	worshippers = "The Clowns, Jokesters and Joyful."

/datum/patron/draconic/decrom
	name = "Decrom"
	domain = "The Diseased Dragon God Life, Sickness and Health."
	desc = "Born with a slow, flesh eating disease that only affected him, until he socialised with others, bringing plague to the world, and all other sicknesses."
	worshippers = "The Carers, Ill and Witchdoctors."
	mob_traits = list(TRAIT_EMPATH, TRAIT_ROT_EATER)
	t0 = /obj/effect/proc_holder/spell/invoked/diagnose
	t2 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t3 = /obj/effect/proc_holder/spell/invoked/heal
	t4 = /obj/effect/proc_holder/spell/invoked/cure_rot

/datum/patron/draconic/magnus
	name = "Magnus"
	domain = "The Lava Dragon God of Fire, Craftsmithing, and Tools."
	desc = "Magnus, unlike all his siblings, does not hold any love or hate for the creatures of the world, including Kobolds."
	worshippers = "The Drakesmiths, Stonewhelps and Artisans."

/datum/patron/draconic/onissia
	name = "Onissia"
	domain = "The Pink Dragon Goddess of Love, Egg-Bearing, and Community."
	desc = "Onissia is said to be the dragon responsible for the existence of kobolds through breeding with the older, smaller races of the world, the only great dragon willing to."
	worshippers = "The Egg-Givers, Lovers and Nurturers."
