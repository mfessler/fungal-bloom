# fungal-bloom

In 2018, I took part in [Cragne Manor](https://rcveeder.net/cragne/): a massively collaborative work of interactive fiction (aka text adventure) created by 84 contributors on the occasion of the 20th anniversary of [Anchorhead](https://ifdb.tads.org/viewgame?id=op0uw1gn1tjqmjt7), a work of Lovecraftian horror by Michael Gentry. The project was meant to be a pastiche and tribute of Anchorhead, but it became something far stranger.

I was one of those 84 contributors, receiving just a room title and a couple of details that needed to be included. The project was organized [Exquisite Corpse](https://en.wikipedia.org/wiki/Exquisite_corpse)-style, each contributor knowing almost nothing about other's work or how the pieces would be intergrated. If you'd like to read more about the process of organizing and assembling the project, see [this interview with project's organizers, Ryan Veeder and Jenni Polodna](https://portagemagazine.org/cragne-manor/).

The process was rewarding and a surprising amount of fun - I dabbled in the IF community in the mid-1990s, but hadn't written any code, and indeed precious little fiction, in 15 years. Many thanks to Ryan and Jenni for pulling this insane project together, and to my fellow contributors for their creativity and hard work. 

The full game was released on December 8th, 2018. Some reviews on release:

- https://boingboing.net/2018/12/09/massively-multi-developer.html
- https://emshort.blog/2018/12/08/cragne-manor/
- http://blog.zarfhome.com/2018/12/cragne-manor-is-available-to-play.html

## Why am I releasing this?

The project was written in [Inform 7](http://inform7.com), a domain-specific language for interactive fiction. I'm publishing the source code for my specific room, in the form that I submitted it to the organizers. I'm doing this for a few reasons:

1) To let people see the work -- my room wound up being fairly far along in the game, so many people may not have had a chance to see it. It's hard to say to friends, "Hey, check out this project I was part of. But it'll take you a few hours of puzzle solving amidst Lovecraftian horror to get to my bit." 
1) To demonstrate some of the ways that a relative newcomer to Inform 7 can use the features of the language to tell a short interactive story
1) To document some of the creative process, dead ends, and reworked ideas that were part of the writing and testing process. Also included: regrettable code, and jokes I had to omit (regrettable and otherwise).


## Why is this project called "Fungal Bloom"?

All will become clear. 

## What's here
This repo will contain Inform source code for my room, as well as a compiled game file that can be run on [Lectrote](https://github.com/erkyrath/lectrote). (That's an interpreter than runs on Mac, Windows and Linux)

I've also included a PDF of my code, nicely formatted so you can actually read it. Turns out that Github doesn't wrap long lines when you're looking at text files on their site, so...

(Update: I'm also enclosing a copy of the Inform extension "Cragne Suite.i7x" that was required for the project, in case anyone would like to play with the code themselves in Inform 7.)

## Technical details for programming geeks

### What's MGR5? 
The ID of my room, used by Ryan and Jenni to help integrate everyone else's work.

### Why do so many things begin with "mf-"?
Again, to help with integration, so that the stuff in my room and the actions I defined didn't conflict with other authors' use of the same words in their room. And "mf" is my initials, so get your mind out of the gutter. (I was tempted, though, to find an excuse to include "remove mf-snakes from mf-plane".) 

### What's the deal with Section 3 ("Fungal contagion")? 
Every turn the player is holding a fungally contaminated item, there's a 5% chance that its smell will spread to something else the player is holding. This happens silently, so players usually don't notice that some of their inventory is described as "(smelling faintly of mildew)" until much later. It's totally harmless and has no effect on the rest of the game, and my testers who noticed it were greatly amused. But.

#### Mea Culpa
I was dubious as to whether this gag would be excessively annoying, but was encouraged by the organizers to go for it. But I hadn't realized how damn long people would play after encountering my room - thousands of turns, in many cases. Long enough for the smell to spread to everything the player was carrying. In retrospect, I would have massively lowered the odds of contagion. The only upside: I've never been infamous before, so that was new. Sorry, everybody...



