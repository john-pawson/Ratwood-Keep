/// Attempts to use a mob ability on a target
/datum/ai_planning_subtree/targeted_mob_ability
	/// Blackboard key for the ability
	var/ability_key = BB_TARGETED_ACTION
	/// Blackboard key for where the target ref is stored
	var/target_key = BB_BASIC_MOB_CURRENT_TARGET
	/// Behaviour to perform using ability
	var/use_ability_behaviour = /datum/ai_behavior/targeted_mob_ability
	/// If true we terminate planning after trying to use the ability.
	var/finish_planning = TRUE

/datum/ai_planning_subtree/targeted_mob_ability/SelectBehaviors(datum/ai_controller/controller, seconds_per_tick)
	if (!ability_key)
		CRASH("You forgot to tell this mob where to find its ability")

	if (!(target_key in controller.blackboard))
		return

	var/obj/effect/proc_holder/spell/using_action = controller.blackboard[ability_key]
	if (!using_action?.recharging)
		return

	controller.queue_behavior(use_ability_behaviour, ability_key, target_key)
	if (finish_planning)
		return SUBTREE_RETURN_FINISH_PLANNING

/datum/ai_planning_subtree/targeted_mob_ability/continue_planning
	finish_planning = FALSE
