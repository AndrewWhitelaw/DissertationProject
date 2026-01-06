function startQuest(questName) {
	global.quests[$ questName] = true;
	show_debug_message("Quest started: " + questName);
}
 
function completeQuest(questName) {
	global.quests[$ questName] = false;
	global.questComplete[$ questName] = true;
	show_debug_message("Quest completed: " + questName);
}

function isQuestActive(questName) {
	return global.quests[$ questName] == true;	
}

function isQuestCompleted(questName) {
	return global.questComplete[$ questName] == true;	
}