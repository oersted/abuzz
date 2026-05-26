//A brief text to give context, then place the user in the starting location.
-> introduction

=== introduction
The wait to enter Yl'Serrin was interminable, but given your poor timing in arriving so late on Market Day that's perhaps unsurprising. Still, the guards at the Barbican are curt but efficient and your pass is quickly stamped. Soon enough you follow the endless line through and out the other side...

+   [Continue]  
-> barbican

=== barbican
//Location 1: The Barbican
Standing in the Barbican's shadow allows you some relief from the mid-day sun, the beginnings of the lower Avenue of Saints already heating uncomfortably, its pearlescent white brick matching that of each and every building along its length. This close, the overwhelming bulk of the upper city looms above you, its mishappen mass blocking all sight to the west. About you press your fellow travellers, fleeing the road's neck via any means necessary and heading into the city as quickly as they might. 

-> barbican_choices

=== barbican_choices
*   [Examine the upper city.]
    You'd heard of it, of course. The tales of victory over the Conductors always include a detailed description of the crashing of the floating island they once ruled from, but it is quite another thing to see it in person. Over the decades it has apparently collapsed into a stable form, its edges blurred with moss and grasses, leaving only a few streaks of white clay still visible along its sides. Guessing the length of the road by the figures you see in the distance, it will be quite a walk to reach the Great Stair, its individual steps so large as to be visible even at this remove.
    
*   [Examine the Avenue.]
    It's utter chaos; beasts of burden (feathered and not) pull carts, wagons, and copper-a-ride wains of every size and description in and among those who simply walk the Avenue westwards into the city's heart. There's neither rhyme nor reason to the mob, a river of humanity drenching the stark, white streets in a cacophany of shouted languages. The lower slums extend from here along the walls and all around the base of the upper city, a warren maze of alleys you've been well-warned to stay away from.
    
*   [Head eastward back into the Barbican.]
    You couldn't bear it, honestly. You've been standing in line for hours and the idea of simply turning back around and heading home is so sad as not to be borne.
    
+   [Head westward along the Avenue towards the upper city and the Market.]
    It's a long walk and the press of traffic doesn't help, but soon enough the Stair and the City grow and soon you find yourself below the island...
+   +   [Continue]  
        -> lower_city

-   -> barbican_choices
    
    
=== lower_city
//Location 2: The Lower City -- the crossroads of Saints and Solitude
The lower city extends in all directions from here, marked into quarters by the crossroads of Saints and Solitude. The Street runs northwards towards the Rear Gate and south towards Front and is an incredible mass of humanity in both directions. Westward, still a long walk along the Avenue, lies the Market and the Stair.

-> lower_city_choices

=== lower_city_choices

*   [Walk along Solitude Street.]
    There's little point, really. All of the lower city is given to functions that you'd find at home: housing for the lower classes, with workshops for artisans and the like lying in the mercantile areas to the north. And Front Gate will likely be just as swamped as where you entered from the Barbican. Best to head towards Market and the more interesting portions of the city. 
    
*   [Examine the lower city.]
    The quadrants defined by Saints and Solitude extend from here in every direction, all of them filled with the working poor or their better-off cousins in the mercantile sections. But what truly dominates the view is the Great Stair, which truly imposes its sheer scale at this distance. Before and about it, nestled beneath the edges of the upper city, is the Market.
    
+   [Head eastwards towards the Barbican.]
    You trudge back towards the shadow of the Barbican...
+   + [Continue]
        -> barbican
    
+   [Continue westwards to the Market and the Stair.]
    The traffic this far west is, if anything, worse...
+   +   [Continue]
        -> market

-   -> lower_city_choices

=== market
//Location 3: The Market
Here, before the Great Stair, is Yl'Serrin's infamous Market, where everything and anything can be purchased for a price. As is traditional, the area before and beside the Stair itself is given to any who seek to claim a space and the region where you stand is filled to overflowing with those who have taken advantage of the offer. More reputable sellers, shops and traders can be found in the great ring that reaches in both directions around the upper city, past the remnants of the great stone pens.

-> market_choices

=== market_choices
*   [Shop in the market.]
    You had assumed it would be fun to seek out some trinket to bring home, but the nearer area is so chaotic with shouted offers and haggling that you're almost immediately overwhelmed. And wandering deeper holds no interest when you reach the point where the original market was destroyed.
    
    Because of course this was where the Conductors kept and sold their slaves, as made evident by the huge and crumbling stone pens purposefully left in the shadow of the upper city. The crashing of Yl'Serrin into the slave markets was not only an act of war, but a statement of a willingness towards sacrifice.
    
*   [Examine the pens and the plaques.]
    You are one of the few who stops to examine the memorials. To the locals they must be a common sight, but they are strange to your eyes. The text, laid out line by line in the five languages of the Plains, describes the thousands who perished here in the crash, as well as those who willingly gave their lives to strike the first and perhaps mightiest blow in the War. 
    
+   [Climb the Stair into the upper city.]
    Each of the original steps is twice your height, reminding you of the difference in scale between a human and a Conductor. From them, the people of Yl'Serrin have carved normal-sized intervals and slopes, allowing a slow but certain ascent to the upper city...
+   +   [Continue]
    -> upper_city_entrance
    
+   [Head eastward along the Avenue of Saints towards Solitude Street.]
    -> lower_city
    
-   -> market_choices

=== upper_city_entrance
//Location 4: The Avenue of Saints in the Upper City
The Avenue continues here, just as blindingly white as below, but everything is quieter, stiller, somehow more serene, as if being closer to the sky has calmed the city's heart. Having finally surmounted the island, you can at last make out several of the city's more famous landmarks on its surface, including the Red Cathedral, the island's original castrum and, before it, Yl'Serrin's common hall. Here the Avenue is not as claustrophobic, the close-pressed buildings of the lower city having given way to greenery, complete with what appears to be a local coven engaged in a working among a copse of trees.

+   [Enter the copse.]
    You stray from the Avenue and wander among the green...
+   +   [Continue]
    -> copse

+   [Head towards the cathedral.]
    {Halfway down the upper city's Avenue you find the Red Cathedral. As you slip through the crowds heading both in and out (Market Day being the only day there are no ceremonies, after all), you notice that it has been purposefully placed such that it never interacts with the castrum. No part of the castle can be seen from the cathedral's windows, nor will any part of it ever be touched by its shadow...|You slip back into shadowy depths of the Red Cathedral.}
+   +   [Continue]    
    -> narthex

+   [Head towards the castrum.]
    It takes some doing, but you finally cross the length of the island, reaching its far west side...
+   +   [Continue]    
    -> castrum_entrance

+ [Head towards the common hall.]
    The hall lies on the island's far side, near the ruined castrum...
+   +   [Continue]    
    -> castrum_entrance

=== copse
//Location 5: Copse of Trees and coven
The gathered group is a myriad of ages and backgrounds, all dressed in white, circling the pomegranate tree at the center and weaving among the ash at the edges, their shuffling feet kicking up clouds of white petals. You dare not step any closer, but from here you can almost make out their whispered chants. Their posture and seeming exhaustion would indicate their efforts on this particular operation might have gone on for days.   

-> copse_choices

=== copse_choices
*   [Listen to the chant.]
    Straining your hearing you think you make out several distinct words. Given the time of the year and the location, you would guess it a working of empowerment, though what forces the coven intends to gather you could only guess at.
    
*   [Interrupt the working.]
    An impulse, a perverse intention rises in you. What if you walked into the circle? Spoke to the practitioners? Simply scattered their grasping attention to the winds and let whatever forces they have been calling down simply land where they may?
    
    Then, thankfully, you think better of it and step away.
    
+   [Return to the Avenue.]
    You turn from the practitioners and head back the way you came...
+   +   [Continue]    
    -> upper_city_entrance
    
-   -> copse_choices

=== narthex
//Location 6: The Narthex of the Red Cathedral
Just beyond the Cathedral's engraved and filigreed porch lies the narthex, from which you can see down the whole of the grand building's length, though its far windows will not be lit until sunset. The deep ox-blood red of the outer stone gives way within to a thousand different shades, ranging from a pale poppy through carmine and geranium to wine and a deep maroon. Nearby, a group of praying penitents prostrate themselves on the ground below the lower statio, near the passage to the nave.

-> narthex_choices

=== narthex_choices
*   [Examine the penitents.]
    Elven and human. The former is unsurprising, given the Faith's rejection of any of the blood of traitors. The latter, however... Unless one checks, who is to say if one's distant family assisted the Conductors?

    Still, the church's stance on one's father's sins is quite clear. For one of unclean blood to step beyond the narthex is unforgiveable.

*   [Read the lower statio.]

    The Via Dolorosa begins with the Conductors being called home by some unknownable longing. Later revealed to be a trap, they are imprisoned beneath the sky of what had since become our own world. The stained glass depicts gigantic, four-armed creatures bringing pain and misery to the men of Parea as they flail against the walls of the gaol.

+   [Proceed into the nave.]
    You slip past the penitents, deeper into the Cathedral..
+   +   [Continue]    
    -> nave

+   [Return to the Avenue of Saints.]
    You slip past the penitents, back into the sunshine...
+   +   [Continue]    
    -> upper_city_entrance

-   -> narthex_choices

=== nave
//Location 7: The Nave of the Red Cathedral
The laiety gather here today for social, rather than religious, purposes. The city's upper echelons gather here to whisper and gossip and grin beneath the light of the middle statio. Beyond can be seen the cathedral's transept, domain of the carnelians.

-> nave_choices

=== nave_choices

*   [Examine the gathered nobles.]
    As a poor country relation, none of them will meet your eye. You recognize one or more distant limbs of the family tree, but no one you'd care to speak to. Still, a few moments of listening gives you enough gossip to last for days back home.

*   [Read the middle statio.]
    The Via Dolorsa continues as the War of the Conductors is played out upon the surface of Parea with the planar powers acting as puppetmasters. Though imprisoned, the giants manage to outwit Asmodeus himself, their promised souls trapped in a cycle of reincarnation. Humanity is split into a myriad of species due to this same process: elf, dwarf, gnome, and more. The planar powers plot with humanity and demi-humanity to end the Conductor threat. The surface elves throw in with the enemy, which the drow never forgive them for.

+   [Proceed into the transept.]
    One or two of the nobility lift their noses haughtily as you pass...
+   +   [Continue]    
    -> transept

+   [Step back into the narthex.]
    You step back towards the exit...
+   +   [Continue]
    -> narthex

-   -> nave_choices

=== transept
//Location 8: The Transept of the Red Cathedral
This is as far as you may go. Before you lies the chancel, where the Holy Orchestra plays during mass. A small group of musicians are practicing even now as a group of carnelians are involved in some whispered debate in the far corner. Above you lies the last and highest of the statio.

-> transept_choices

=== transept_choices
*   [Examine the orchestra.]
    The music is the part you've always hated about mass. Yes, it is traditional. Yes, it was necessary. Your own family has a long and glorious tradition in the military melodic troops, with your great, great grandfather claiming that he played on the frontlines of the War itself. 
    
    Still, anyone with any sort of ear must agree that the counter-charm music --  based on the melodies of the Conductors themselves -- is a dissonant and ugly thing. 
    
*   [Listen to the carnelians.]
    Unable to continue further into the cathedral, you are unable to make out what they are saying, but clearly the youngest of them -- a woman with her back to you -- has noted some point of doctrine that has set the others into a tizzy.
    
*   [Read the high statio.]
    The Via Dolorsa ends with the War. The ascension of Rezek's hellknights, the work of the likes of Saint Ernst in understanding the musical and magical technology of the Conductors. The central image, the midpoint of the statio, centers on the crashing of the magical floating island into the heart of Yl'Serrin's slave market.

+   [Leave, back towards the nave.]
    You head back towards the entrance of the cathedral...
+   +   [Continue]
    -> nave
    
-   -> transept_choices

=== castrum_entrance
//Location 9: Before the Castrum -- outside the Hall
The Castrum remains purposefully untouched and unchanged. Built on a scale that dwarfs the imagination, the ruined pile is now left to gather dust, with travellers within the city only reaching this point to enter the nearby Common Hall.

-> castrum_entrance_choices

=== castrum_entrance_choices

*   [Examine the castrum.]
    The massive pile once housed the headquarters of the Conductor's network in this part of the world, from which they sent out their armies and agents, the shadow of their flying island capable of appearing anywhere on the continent. By law, no part of it may be used or repurposed, a reminder of what once went before.

*   [Examine the common hall.]
    Compared to the grand scale of the castrum, Yl'Serrin's common hall seems a child's toy. Yet standing before it, you realize that it, in turn, dwarfs you. Purposefully made of wood to differentiate it from both of its neighbors, its carved filigrees depict the rebuilding of the city in the wake of the War.
    
*   [Enter the castrum.]
    If the signs that lead to the main gate are unclear, the guards set before it make certain that you understand that none may enter.

+   [Enter the common hall.]
    You step through the hall's main doors...
+   +   [Continue]    
    -> common_hall

+   [Head eastward towards the Stair.]
    -> upper_city_entrance
    
-   -> castrum_entrance_choices

=== common_hall
//Location 10: Common Hall
Even on Market Day, the work of the city must continue, as evidenced by the diet meeting going on in Yl'Serrin's common hall. Some sort of budgetary or plenary issue seems to be before the body, or at least you hope  that's the case. A single figure is yelling from the center of the crowd, which in turn hisses, cheers or shouts back responses following some process that you cannot easily identify. 
-> common_hall_choices

=== common_hall_choices

*   [Listen to the speaker.]
    You occasionally can make out a phrase or a word here and there, but even then you still cannot make heads nor tails of what the diet is even debating, much less which side the gentleman bloviating from the center supports. 
    
+   [Leave the hall.]
    You head back out into the sunshine...
+   +   [Continue]    
    -> castrum_entrance
    
-   -> common_hall_choices

=== end
//Interestingly, not having a way to reach the END is still considered valid as long as the loops go on forever...
-> END