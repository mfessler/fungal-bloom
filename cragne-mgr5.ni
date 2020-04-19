"cragne-mgr5" by Michael Fessler

Chapter 1 - Do Not Change Any Of This 

Include Cragne Suite by Ryan Veeder.

[FOR TESTING ONLY
Include Object Response Tests by Juhana Leinonen.
COMMENT OUT FOR RELEASE]

[Don't mess with other people's rooms!]

[Release along with an interpreter.]


Part - MGR5 Gardener's Shack


The describe what's on scenery supporters in room descriptions rule does nothing when the location is MGR5.

Section 1 - Setting the Scene

Fungal Bloom is a recurring scene. 

Fungal Bloom begins when the player is in MGR5.

Fungal Bloom ends when the player is not in MGR5.

when Fungal Bloom begins: now the mf-hands are part of the player.
when Fungal Bloom ends: now the mf-hands are nowhere. 


[FOR TESTING ONLY. NOTE: IN THE REAL GAME, THIS SHOULD BE PLACED IN THE ROOM PROVIDING IT INSTEAD!]

The mf-macguffin is held by the player.

[ COMMENT THIS OUT FOR RELEASE]

Instead of examining the player when the location is MGR5:
	if the mf-hands are mf-pure:
		say "Just fine. I mean, you have a slightly distant gaze and a mild nervous twitch, but nothing a stiff drink and six weeks on a tropical beach wouldn't put right. So basically fine, then.";
	otherwise:
		say "You're too preoccupied with the maddening itching to pay attention to how you look right now." 
		
		
Instead of smelling the player in MGR5:
	Say "[if mf-hands are mf-tainted]There is a distinct fungal reek about  you.[otherwise]Slightly ripe, but not too bad.";
	
Instead of smelling MGR5:
	say "There is a distinct fungal reek in the air[if mf-hands are mf-tainted], much of it coming from you.[otherwise]."

Instead of going nowhere when the player is in MGR5:
	say "Back outside is the only way you can go."
	
Instead of burning anything in MGR5:
	say "The air is pretty thick in here, even without adding smoke to the mix. You think better of it.";
	
First before speaking when the location is MGR5:
	say "But there's no one to talk to here." instead.

First before hailing when the location is MGR5:
	say "But there's no one to talk to here." instead.

Does the player mean answering the mf-heaving-soil that: it is very unlikely.
Does the player mean answering the player that: it is very unlikely.

Instead of exiting when the player is in MGR5:
	if zj-key is not nowhere and the key3 is not nowhere:
		continue the action;
	otherwise: 
		say "You leave the shed, but you have a nagging sense of unfinished business...";
		continue the action.
		
		
Section 2 - Definitions and Rules of Olfactory Engagement


An mf-stinker is a kind of thing. An mf-stinker can be potent or neutralized. An mf-stinker is usually potent. An mf-stinker has some text called mf-scent. The mf-scent is usually "stench of rancid cabbage".

Instead of smelling or eating or tasting a potent mf-stinker, say "The overwhelming [mf-scent] hits you like a sledgehammer. Even the thought of bringing [the noun] any closer to your face makes your stomach heave in preemptive protest."

Instead of smelling a neutralized mf-stinker, say "Just a faint [mf-scent] remains."

	
Section 3 - Fungal Contagion

A thing can be mf-tainted, mf-taintproof or mf-pure. A thing is usually mf-pure.
Yourself is mf-taintproof. [And so is the mf-macguffin AKA sausage, when it's declared below]

Every turn when an mf-tainted thing (called vector) is carried by the player:
	[say "Tainted: [vector]";]
	if a random chance of 1 in 20 succeeds:
		now a random mf-pure thing carried by the player is mf-tainted.	
	
Every turn when an mf-tainted thing is in a container (called the Incubator):
	If  a random chance of 1 in 20 succeeds:
		now a random mf-pure thing in the Incubator is mf-tainted.


After printing the name of an mf-tainted thing (called the smellee):
	if the smellee is not potent and the smellee is not mf-diseased and the smellee is not mf-hands:
		say " (smelling faintly of mildew)".
		
	
After examining an mf-tainted thing (called the smellee):
	if the smellee is not potent and the smellee is not mf-diseased and the smellee is not mf-hands:
		say "A faint smell of mildew emanates from [them].";
		

Section 4 - Room and Shelves and a Key, Oh My!

MGR is a region.

MGR5 is a room in MGR. MGR5 is inside from MGR4.

Printed name of MGR5 is "The Shambolic Shack (Michael Fessler)".


Before looking in MGR5 for the first time, say "As you duck inside the low doorway, your eyes take a moment to adjust to the dim moonlight filtering in through a dirty octagonal window mounted high on one wall. Then the smell hits you." 

The description of MGR5 is "A dimly-lit shack with crude plywood walls. An octagonal window set high on one wall admits a feeble shaft of moonlight. Rickety wire shelving sits precariously in one dimly lit corner, and a battered metal wheelbarrow rests in the opposite corner. A rough doorway leads back out."

A  scenery thing called mf-window is in MGR5. The printed name is "a dirty octagonal window". Understand "dirty" or "octagonal" or "octagon" or "window" or "moonlight" as the mf-window. The description is "Moonlight struggles to make its way through the patina of dirt on the octagonal window mounted high up on one wall."

A scenery thing called mf-walls is in MGR5. The printed name is "crude plywood walls". Understand "crude" or "plywood" or "wall" or "walls" as mf-walls. The description is "Simple plywood, somewhat the worse for wear, nailed together in a seeming hurry."

A scenery thing called mf-doorway is in MGR5. The printed name is "rough doorway". Understand "rough" and "doorway" and "door" as mf-doorway. The description is "A gap in one wall, leading back outside."

Instead of entering the mf-doorway:
	try exiting.

Instead of doing something other than examining with the mf-window, say "It's far out of reach."

A mf-shelving is here. It is a supporter and scenery. It is singular-named. The printed name is "rickety wire shelving". Understand "rickety" or "wire" or "shelving" or "shelf" or "contents" as the mf-shelving. The description is "Cheap wire shelving that has seen better days. It wobbles to the touch.[If noun does not support something] It appears to be bare."

Understand "shake [something]" as attacking when the location is MGR5. 

The key3 is nowhere. The printed name is "rust-streaked iron key". Understand "rust-streaked" or "iron" or "key" as the key3. Description of the key3 is "A hefty iron key, its wards streaked with rust."


Instead of tasting or smelling key3:
	say "Rusty.";
	
Instead of attacking or pushing or pulling the mf-shelving:
	if the key3 is nowhere:
		say "You dislodge a rust-streaked iron key from beneath the mildewed gardening gloves. It falls to the floor.";
		now the key3 is in MGR5;
		say "[line break]";
	say "The shelves wobble but decline to collapse." 
	
Instead of climbing or entering the mf-shelving:
	say "Way too wobbly -- you think better of it."
	
Instead of tasting or smelling the mf-shelving:
	say "Metallic, with a touch of mildew.";


Section 5 - Gloves and Hands

mf-hands are a scenery thing. Understand "hands" as mf-hands. mf-hands are plural-named. The printed name is "hands". The description is "[if mf-pure]Unremarkable.[Otherwise]Incredibly itchy."


[Perilous fungally-infected gloves. A key sitting on the shelf near/beneath them, which is dislodged when the gloves are taken.]


Some mf-gloves are on the mf-shelving. They are wearable. They are mf-stinkers. They are ambiguously plural. The mf-scent is "cloying fungal miasma". The printed name is "mildewed leather gloves". Understand "mildewed" or "leather" or "gloves" or "glove"  as the mf-gloves.  The description is "A pair of [if neutralized]formerly [end if]malodorous gardening gloves spotted with what you presume is mildew. [if neutralized]It used to be particularly dense around the gloves['] opening, but the fungicide seems to have dispensed with it.[otherwise]It's particularly dense and pungent around the gloves['] opening." 


After taking the mf-gloves for the first time:
	now the mf-gloves are mf-tainted; [Prevents weird effects before they are in play]
	if the key3 is nowhere:
		say "As you gingerly pick up the mildewed gardening gloves, a rust-streaked iron key hidden beneath them drops to the ground." ;
		Now the key3 is in MGR5.

After wearing the mf-gloves:	
	if potent:
		say "You pull the mildewed gloves onto your hands with a reluctant shudder. [if mf-hands are mf-pure]Your palms begin to itch almost instantly.[otherwise]Your hands continue to itch maddeningly.";
		now the mf-hands are mf-tainted;
		the first-fungal-symptom occurs in two turns from now;
	else:
		say "You pull the mildewed gloves onto your hands, relieved that their stench seems to have dissipated."

At the time when the first-fungal-symptom occurs:
	if the mf-hands are mf-tainted:
		say "The itching of your hands grows maddening, and begins to work its way up your wrists. You feel feverish.";
		the glove-induced-horrible-fungal-bloom occurs in five turns from now; [5 + 2 = 7, so you can undo after you die in all circumstances]
		
At the time when the glove-induced-horrible-fungal-bloom occurs:
	if the mf-hands are mf-tainted:	
		say "The unbearable itching of your palms spreads in a wave up your arms and overtakes your entire body. As your vision fades, your last sight is of gray-blue fuzz thickening on your limbs, while a suffocating fungal miasma fills your mouth and nostrils.";
		end the story saying "You have fallen victim to a horrible fungal bloom";		

mf-scratching is an action applying to one touchable thing. Understand "scratch [something]" as mf-scratching when the location is MGR5.

Instead of mf-scratching something:
	say "It doesn't help a bit."

Instead of inserting something into the mf-gloves:
	say "You see no reason to do that, even if it would fit."

Section 6 - Fungicide - Composition and Application


The mf-fungicide is nowhere. The printed name is "spray bottle [if full]of [else]that used to contain [end if]fungicide". The mf-fungicide can be full or empty. It is full. The description is "[if full]A [else]An empty [end if]plastic spray bottle labelled 'Handwavizole: For Rapid Treatment of [italic type]endomycorrhizi yuggothi[roman type] Infestation'." Understand "spray" or "plastic" or "bottle" or "fungicide" as the mf-fungicide. 

Instead of searching the mf-fungicide:
	try examining the mf-fungicide. 
	

Instead of smelling the mf-fungicide:
	say "Harsh and acrid. You wrinkle your nose.";
		
Instead of eating or drinking or tasting the mf-fungicide:
	if the mf-hands are mf-tainted:
		say "You are almost desperate enough to try that, but can't make yourself go through with it.";
	otherwise: 
		say "You think better of it.";

Instead of opening the mf-fungicide:
	say "The top is firmly fixed in place.";
	
Instead of closing the mf-fungicide:
	say "It's already closed."

	
Instead of putting the mf-fungicide on something:
	if the second noun is a supporter: [i.e. put fungicide on shelf]
		continue the action;
	else if the second noun is an mf-stinker: [spraying something susceptible]
		if the mf-fungicide is empty:
			say "You pull the trigger, but only a sad hissing sound emerges. It's empty, apparently.";
		otherwise:	
			say "You douse the [second noun] with a billowing cloud of fungicide, emptying the bottle in the process. You hear a satisfying sizzle as it does its work.";
			now the second noun is neutralized;
			now the second noun is mf-pure;
			now the mf-fungicide is empty;
			if the second noun is the mf-gloves: 
				if the mf-gloves are worn:
					say "However, it doesn't penetrate to the skin below, which remains just as itchy."; [Oops. But prevents gloves from being rendered useless unwittingly and irreversibly]
	else if the second noun is the player:
		try putting the mf-fungicide on the mf-hands;
	else if the second noun is mf-hands and the mf-hands are mf-tainted: 
		if the mf-fungicide is empty:
			say "You pull the trigger, but only a sad hissing sound emerges. It's empty, apparently.";
		else if the mf-gloves are worn:
			say "You douse your gloved hands with a billowing cloud of fungicide, emptying the bottle in the process. You hear a satisfying sizzle as it does its work. However, it doesn't penetrate to the skin below, which remains just as itchy.";
			now the mf-gloves are neutralized;
			now the mf-gloves are mf-pure;
			now the mf-fungicide is empty; 
		otherwise:
			say "You douse your hands with a billowing cloud of fungicide, emptying the bottle in the process. You feel immediate relief from the fierce itching as your skin sizzles merrily.";
			now the mf-hands are mf-pure;
			now the mf-fungicide is empty;
	else: [It's not an mf-stinker or your tainted hands, so don't waste it]
		if the mf-fungicide is empty:
			say "You pull the trigger, but only a sad hissing sound emerges. It's empty, apparently.";
		otherwise:
			say "[if second noun is mf-hands]Your [otherwise]The [end if][second noun] [if second noun is plural-named]don't[otherwise]doesn't[end if] seem contaminated [if second noun is mf-pure]at all.[otherwise]enough to need it.[end if] Better not waste it." 
		
mf-spraying is an action applying to one touchable thing. Understand "spray [something]" as mf-spraying when the location is MGR5.

[
Every turn when the mf-hands are mf-tainted: 
	say "ITCHY HANDS!";
	
Every turn when the mf-hands are mf-pure:
	say "CLEAN HANDS!";
]

	
Instead of mf-spraying something:
	if the player holds the mf-fungicide:
		try putting the mf-fungicide on the noun;
	else:
		say "I don't have anything I can spray [the noun] with."
		

Understand "spray [mf-fungicide] on [something]" as putting it on when the location is MGR5.	

Section 7 - So Much Depends On A Woeful Wheelbarrow

The mf-wheelbarrow is in MGR5. The mf-wheelbarrow is an unopenable open container. It is scenery.  The description is "A battered metal wheelbarrow. Or at least, it used to be when it still had a front wheel. With only a twisted axle remaining, I guess now it's just a 'barrow'. It is full of glistening black soil[if mf-calm-soil is nowhere].[otherwise], now calm.[end if]". The printed name is "battered metal wheelbarrow". Understand "wheelbarrow" or "barrow" or "battered" or "axle" or "wheel" or "twisted" as the mf-wheelbarrow.

Instead of taking or pushing or pulling or turning the mf-wheelbarrow:
	say "Without a new wheel and axle, it isn't going anywhere."
	
Instead of pushing the mf-wheelbarrow to a direction:
	say "Without a new wheel and axle, it isn't going anywhere."
	
Instead of searching the mf-wheelbarrow:
	try examining the mf-wheelbarrow.
	
Instead of smelling the mf-wheelbarrow:
	try smelling the mf-heaving-soil.
	
Instead of tasting the mf-wheelbarrow:
	try tasting the mf-heaving-soil.
	
Instead of eating the mf-wheelbarrow:
	try eating the mf-heaving-soil.
	
Instead of listening to the mf-wheelbarrow:
	try listening to the mf-heaving-soil.
	
Instead of entering the mf-wheelbarrow:
	if the mf-heaving-soil is in the mf-wheelbarrow:
		say "You eye the heaving soil and think better of it.";
	otherwise:	
		say "That seems unnecessarily messy."


The mf-heaving-soil is in the mf-wheelbarrow. It is scenery. It is fixed in place. It is a neuter animal. The mf-heaving-soil can be searched or unsearched. The mf-heaving-soil is unsearched. The printed name is "heaving pile of glistening black soil". Understand "heaving" or "glistening" or "black" or "soil" or "dirt" or "earth" or "humus" or "surface" or "centipede" as the mf-heaving-soil. The description is "Glistening black soil fills the wheelbarrow nearly to the brim. The soil's surface heaves and churns. There is something alive in there." 

Instead of eating or drinking or tasting or kissing or rubbing or waking or squeezing or climbing or smelling the mf-heaving-soil:
	say "You eye the heaving surface of the soil and think better of getting that close.";
	
Instead of showing anything to the mf-heaving-soil:
	try inserting the noun into the mf-heaving-soil.
	
Instead of looking under the mf-heaving-soil:
	try examining the mf-heaving-soil.
	
Instead of listening to the mf-heaving-soil:
	say "A disturbing rustling soil punctuated by faint but unmistakable scraping and clicking noises.";
	
 Instead of showing anything to the mf-heaving-soil:
	say "You don't get any response that you can understand.";
	
Instead of entering the mf-heaving-soil:
	say "You eye the heaving soil and think better of it.";

Instead of taking or touching the mf-heaving-soil when the player is not wearing the mf-gloves:
	say "You eye the soil's turbulent surface warily. Nope. Not touching that with your bare hands."

Instead of searching the mf-heaving-soil when the player is not wearing the mf-gloves:
	say "You can see only the rippling surface of the soil. And there's no way you're digging around in there with your bare hands."

Instead of touching the mf-heaving-soil when the player is wearing the mf-gloves:
	say "You'll have to do more than touch the surface to find anything in there."
	
Instead of inserting something held into the mf-wheelbarrow:
	Try inserting the noun into the mf-heaving-soil.
	
Instead of inserting something held into the mf-heaving-soil:
	say "As you lower [the noun], the heaving surface of the soil is suddenly broken by a furiously working set of clattering mouth-parts and probing antennae -- followed immediately by the first several inches of a centipede, yellow and chitinous, thick as an elephant's trunk. [if the noun is the mf-gloves]The creature's antennae, sampling the dank air, begin to strain toward the gloves.[otherwise]The creature's antennae, sampling the dank air, quest about aimlessly.[end if][line break]You recoil, and snatch away [the noun]. The giant centipede scuttles back into the soil."

Instead of searching the unsearched mf-heaving-soil when the player is wearing the mf-gloves:
	say "Your hands shielded by the thick cloth gloves, you reach beneath the surface of the heaving soil. You grit your teeth as you feel mandibles nip fiercely at your hands -- but the gloves hold. You grope around for a few moments, frustrated by the lack of fine sensation. [paragraph break]You encounter a small metallic object that scrapes against the wheelbarrow floor as you fumble for it, but you can't quite get a grip on it. Abandoning it, you cast about in frustration and rising panic...there! You seize on something large and pull it out of the soil. It's a spray bottle.";
	now the mf-heaving-soil is searched;
	now the player is holding the mf-fungicide.

Instead of searching the searched mf-heaving-soil when the player is wearing the mf-gloves:
	say "You've found everything you can, at least while you're wearing gloves."
	
Instead of looking under the mf-heaving-soil:
	try searching the mf-heaving-soil.
	
	

Section 8 - Tainted Sausage

The mf-macguffin is an mf-taintproof thing. [This is so it doesn't have 2 overlapping statuses - mild taint is irrelevant and confusing when it can be lethally diseased!] The mf-macguffin can be mf-diseased or mf-healthy. The mf-macguffin is mf-healthy. The printed name of the mf-macguffin is "[if mf-diseased]fungally-infested[otherwise]desiccated[end if] sausage". Understand "desiccated" or "sausage" as the mf-macguffin. The description of the mf-macguffin is "A desiccated sausage as big as your finger, far past its sell-by date. Years past.[if mf-diseased] Its surface is enveloped in wispy strands of gray-blue fungus."

instead of eating or tasting the mf-macguffin:
	say "Nope nope nope."
	
instead of smelling the mf-macguffin:
	say "It doesn't smell anything like a sausage.[if mf-diseased]It does, however, reek of mildew.[end if]"
	
Instead of attacking or cutting or rubbing or touching or squeezing  the mf-macguffin:
	say "Seems pretty invulnerable to physical violence.";
	
Instead of wearing the mf-macguffin:
	say "Unsure of the proper etiquette for clothing-mounted charcuterie, you demur.";

instead of inserting the mf-macguffin into the mf-gloves:
	if the mf-gloves have not been worn:
		say "You see no reason to put the sausage into the gloves, at least at this time -- you doubt it will improve the flavor.";
	else if the mf-gloves are worn:
		say "You don't think it'll fit as long as you're wearing the gloves.";
	otherwise:
		if the mf-gloves are potent:
			if the mf-macguffin is mf-healthy:
				say "You slide [the noun] into one noxious glove and twirl it a few times. When you extract it, there are already fine strands of fungus spreading across its surface.";
				now the noun is mf-diseased;
			otherwise: 
				say "[The noun] has already been thoroughly tainted.";
		otherwise:
			say "You slide [the noun] into one noxious glove and twirl it a few times. When you extract it, it looks the same as it did before."
		
instead of giving something (called the snack) to the mf-heaving-soil:
	try inserting the snack into the mf-heaving-soil.
	

Section 9 - The Temptation of the Arthropod

instead of inserting the mf-macguffin into the mf-heaving-soil:
	if the mf-macguffin is mf-healthy, say "As you bring the desiccated sausage closer, the heaving surface of the soil is suddenly broken by a furiously working set of clattering mouth-parts and probing antennae -- followed immediately by the first several inches of a centipede, yellow and chitinous, thick as an elephant's trunk.[paragraph break]Several antennae brush against the desiccated sausage, but soon move on in disinterest. Thoughtfully, you reclaim the rejected sausage.";
	otherwise:
		say "As you bring the desiccated sausage closer, the heaving surface of the soil is suddenly broken by a furiously working set of clattering mouth-parts and probing antennae -- followed immediately by the first several inches of a centipede, yellow and chitinous, thick as an elephant's trunk.[paragraph break]Several antennae strain toward the fungus-wreathed sausage. Suddenly and with a resounding SNAP!, terrifying mandibles seize one end of the sausage. You hurriedly let it go, and watch the tainted charcuterie vanish into the centipede's maw. The creature's frenzied motions begin to slow. Perhaps it's sated for now.";
		remove mf-macguffin from play;
		the arthropod-bloom occurs in one turn from now. 

A blooming-centipede-husk is fixed in place. It is a neuter animal. It is nowhere. The printed name of the blooming-centipede-husk is "fungus-ridden centipede carcass". The description of the blooming-centipede-husk is "The motionless fungus-ridden carcass of a giant centipede, festooned with swaying mycelial fronds that protrude from every crack and orifice." Understand "centipede/carcass/corpse/dead/giant/fungus/fronds/body/monster/creature/horror/insect/arthropod" as the blooming-centipede-husk.

Instead of doing anything except examining with the blooming-centipede-husk, say "Nope nope nope. Shudder."


At the time when the arthropod-bloom occurs:
	if the location is MGR5:
		say "A sudden movement draws your attention back to the wheelbarrow. The enormous centipede is lying coiled on the surface of the glistening soil, writhing in unearthly convulsions. As its movements slow, you see a wave of gray fuzz erupt from the creature's mouth and spread like fire down the length of its body. With one final convulsion, the fungus-encrusted monstrosity heaves itself over the wheelbarrow's edge, toppling to the floor with a sodden thud. It lies motionless, save for the swaying mycelial fronds protruding from every crack and orifice.";
	now the  mf-heaving-soil is nowhere;
	now the mf-calm-soil is in the mf-wheelbarrow;
	now the blooming-centipede-husk is in MGR5.

The mf-calm-soil is scenery. It is fixed in place. It is nowhere.  The mf-calm-soil can be searched or unsearched. The mf-calm-soil is unsearched. The printed name is "inert pile of glistening black soil". Understand "calm" or "glistening" or "black" or "soil" or "dirt" or "earth" or "humus" or "surface" as the mf-calm-soil. The description is "Glistening black soil fills the wheelbarrow nearly to the brim. The once-roiling surface is now eerily calm."

Instead of entering the mf-calm-soil:
	say "That seems unnecessarily messy."
	


Section 10 - Victory

The zj-key is nowhere. Printed name of the zj-key is “tiny brass key”. Understand “tiny” and “brass” and “key” as the zj-key. Description of the zj-key is “It’s too small to be the key to a door. Maybe a jewelry box, or a cabinet.”

Instead of smelling or tasting the zj-key:
	say "Brassy and bold."

Instead of searching the unsearched mf-calm-soil when the player is wearing the mf-gloves:
	say "You reach with gloved hands into the now-calm soil. You grope around awkwardly for awhile, but find nothing."

Instead of searching the unsearched mf-calm-soil when the player is not wearing the mf-gloves:
	if the mf-fungicide is nowhere:
		say "You frantically reach into the now-calm soil. At once, near the top, you encounter a smooth object and pull it out of the soil. It's a spray bottle.";
		now the player is holding the mf-fungicide;
	otherwise: 
		say "After a few moments of groping, your fingertips slide across a small jagged metallic object. You manage to get a grip on it, and a moment later, you're holding a tiny brass key.";
		now the player is holding the zj-key;
		now the mf-calm-soil is searched.

Instead of searching the searched mf-calm-soil:
	say "You're pretty sure there's nothing left but dirt."
	
Instead of looking under the mf-calm-soil:
	try searching the mf-calm-soil.
	
				

Section 11 - Default responses

[Deal with default responses around wheelbarrow/soil - nonsensical.]
	

Instead of saying yes when the location is MGR5:
	say "Who are you talking to?";
	
Instead of saying no when the location is MGR5:
	say "Who are you talking to?";

Section 12 - Testing	 - Not For Release

Test mf1 with "get gloves / get key / wear gloves / search soil / remove gloves / spray hands".
Test mf2 with "put sausage in gloves" holding the mf-macguffin.
Test mf3 with "put sausage in soil / wait / search soil".

Test mf-test with "test mf1 / test mf2 / test mf3"

Section 13 - Commentary

The commentary of MGR5 is "The first draft of this room featured an array of bad-smelling objects, whose stinks needed to be neutralized one by one to enable the player to catch the subtle scent of the room's goal. Fun, but fiddly. Then I realized: *of course* the Cragne gardener's hobby is exotic lethal fungiculture. The new goal: to avoid the fateful notice that ***You have died in a horrible fungal bloom.***. I had never worked with timed events in Inform 7 before, so was delighted to be discover I could write lines like 'the glove-induced-horrible-fungal-bloom occurs in three turns from now'. The central puzzle of the room isn't too cruel, I hope. But you may notice that, given time, fungus-tainted objects may have subtle yet insidious effects on nearby items. Beware.[paragraph break]Many thanks to the following intrepid testers: Caleb WIlson, Jeremy Freese, Andrew Schultz, Lucien Smith, Carl Muckenhoupt, Rafi Hyman-Fessler, and Tamar Hyman-Fessler. And a big shout-out to Jenni and Ryan for their initiative and organizational chops, and for getting me writing IF again for the first time in a decade and a half."

Mf-abouting is an action applying to nothing. Understand "about" as mf-abouting when the location is MGR5. 

Carry out mf-abouting: say "Michael Fessler is a longtime fan of IF going back to Zork on an Apple //e. (It took him six months to solve the Babelfish puzzle in HHGTG.) Though he was a longtime reader of r*if and an active member of ifMUD back in olden days, his first and previously only piece of published IF was, fittingly, another collaboration: the Planetfall chapter of Coke Is It! in 1999.[paragraph break]Many thanks to Jenni and Ryan for creating this far more ambitious collaboration -- it's been a great opportunity to revisit IF authorship.My apologies in advance to the many victims of horrible fungal bloom that I am knowingly bringing into the world. [paragraph break]Particular thanks to the following intrepid testers, who have saved you much confusion and needless cruelty: Caleb WIlson, Jeremy Freese, Andrew Schultz, Lucien Smith, Carl Muckenhoupt, Rafi Hyman-Fessler, and Tamar Hyman-Fessler."


Section 14 - Junk Drawer AKA Graveyard of Abandoned Code and Dreams

[Idea: fungicide is IN the soil. Need to wear gloves, handle food, retrieve fungicide. Then spray gloves (neutralizes them) or take them off and spray hands (reserves as odor source.) 

Item from previous room is some kind of food. (Shoggoth chow?) It needs to be tainted in order for creature in wheelbarrow to accept it and go to sleep. Then you can feel around (without gloves) to get small brass key.)

So, to do:
	- Gloves detail - look much worse inside. 
	- Make them a wearable container? 
	- Change "in 3 turns" to a longer counter (8-10 turns)
	- Have messages along the way - intensifying itching
	- implement the Thing in the Barrow - giant millipede. 
	- Fumble around: retrieve fungicide. 
	- Path 1: Remove gloves, spray hands. Gloves remain stinky. (good)
	- Path 2: Spray gloves  stinky: they are decontaminated.
		2a) If they're on:  stuff soaks through, you live
		2b) If they're off: doesn't save you. Stuff still on your hands.
		
	
	Winning path: dried-out sausage into the glove --> fungally-infested sausage. (not actually put in - don't allow to be a container)
	Put sausage in wheelbarrow - if infested, creature eats it and does. If not - refuses, snaps as you. 
	Clue - If touching soil and gloves not carried - roiling repels you
                - If touching soil and carrying gloves -millipede surfaces, enormous palps drawn to something you're carrying.
		- If touching soil and wearing gloves - millipede caresses gloves' surface, seeming intoxicated - slow, almost dream movements, torpor, lets you search the dirt and find the fungicide. (Can't feel much through the gloves, but find something big.)
		- Put food in glove - it's contaminated. Put the food in the dirt - hundreds of tiny mouths open, gnaw at sausage from all sides until it's gone. A few sharp quivers. Death throes heave it out of the wheelbarrow and onto the floor. Dead.
		- Put glove in dirt without food - sniffs around, tries to take bites out of glove, can't penetrate. Tries to fit self inside glove. 
		

Funky items - glove. infested sausage. dead millipede. 
	

There is a openable open transparent container in MGR5 called a mf-plastic-bag. The carrying capacity of the mf-plastic-bag is 1.  The printed name is "plastic bag". 

[The description is "[if the mf-plastic-bag contains something][mf-filled-bag-status] plastic bag containing [a list of things in the mf-plastic-bag].[otherwise]An empty plastic bag."]

 Understand "plastic" or "bag" as the mf-plastic-bag.

To say mf-filled-bag-status:
	if the mf-plastic-bag is open: 
		say "open";
	otherwise: 
		say "sealed";
	
Instead of examining the mf-plastic-bag:
	say "[if the mf-plastic-bag contains something][mf-filled-bag-status] plastic bag containing [a list of things in the mf-plastic-bag].[otherwise]An empty plastic bag.";
	
Rule for printing the name of the mf-plastic-bag while not inserting or removing or examining:
		if the mf-plastic-bag contains something, say "[mf-filled-bag-status] plastic bag containing [a list of things in the mf-plastic-bag]";
		otherwise say "empty plastic bag";
		omit contents in listing.




[Initial puzzle ideas:

1) Several smelly things in the room, overpowering negative smells. Remove each of them somehow - eventually find something with a subtle odor. Challenges: list of odors - "a sickening melange of X, Y, Z that nearly overpowers you." Once gone, sniff/smell - find something hidden. 

a) Fungal odor - gloves
b) acrid reek - something that will give you the bag?
c) nauseating decay - something buried in the planter. Neutralize by extracting with gloves and bagging 

When all gone - subtle perfume. Leads you to a small box containing personal treasures - a letter, a dried rose, and the brass key. 

or

2) Planter full of flesh-eating critters and/or fungal contaminant.  Can only use antifungal spray once. Need to wear gloves to use to get MacGuffin out of soil - but they bear a fast-moving fungal disease. 

 if spraying soil, only gets the surface, something writhing underneath can still get you. Solution is to spray gloves and use. 



Alternative solution: use gloves, feel itch, take off, spray hands before deadline? Try it.

Need more than this, but it's a start.

]

		
[ Possible: Have several smelly things, figure out how to list their odors in a consolidated way. This may not be necessary in the end.

Instead of smelling the location in MGR5:
	repeat with item running through touchable potent mf-stinkers:
		say "A wave of [mf-scent of the item] assaults your nostrils. It seems to be coming from [the item].". 
		]
]

										
