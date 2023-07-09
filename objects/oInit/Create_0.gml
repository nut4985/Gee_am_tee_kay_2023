/// @desc ?
room_goto(FIRST_ROOM)

global.chatData = {
	adjectives		: ["funny", "gaming", "epic", "insane", "cool", "mr", "sick", "dope", "master", "crazy", "fast", "fat", "grubby", "speedy", "the", "random", "new", "wow", "haha"]
	,nouns			: ["gamer", "goblin", "psycho", "dude", "grub", "turtle", "panda", "cat", "dog", "beast", "landlord", "astronaut", "nut", "ant", "king", "rat", "moon", "zoomer", "slime"]
	,hitMessages	: ["this dude sucks", "ez", "LOL", "can't wait for boss loot", "gj so far", "we got this", "lel", "got him", "check this out", "i'm carrying", "ez carry", "they should've made this guy harder", "we're shredding him", "doing this on my 2nd monitor lol", "follow my twitch :)", "wow", "lmao", "we boutta win", "can he even dodge?", "haha"]
	,hurtMessages	: ["ouch", "bs attack", "genuinely undodgeable", "bad design", "i'm bad", "oops i wasn't paying attention", "oops", "anyone bring healing items?", "someone else aggro i'm boutta die", "get him away from me", "i gotta make some distance", "uh oh", "how does he move so fast", "help", "yikes", "hurry up and kill him i'm close to dying", "HELP", "i'm so underleveled"]
	,dyingMessages	: ["game sucks", "gg i guess", "you guys suck", "whatever i'm going to bed", ":(", "nooooo", "ffs", "oof", "gj you just lost your carry", "gg :(", "tough fight", "garbage team", "i'm so mad", "i really wanted the loot :(", "i'll grind then come back ig", "idk how they expect us to beat him", "genuinely not fun fight", "how???", "we could've planned better", "hours of prep wasted", "wipe"]
}

global.iCamera = instance_create_layer(0, 0, layer, oCam)
global.chatList = ds_list_create()
randomize()










