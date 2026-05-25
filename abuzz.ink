Blinded by a cool sun,

Glinting off of icy crags and golden domes,

As I hug tight at my mandrill hides, against the alpine winds,

I arrive at my destination, rugged but triumphant.

+ [Cross the threshold] -> threshold

=== threshold

Dragging myself up what feels like my millionth set of stairs,

I am bathed by the tingle of little bells,

hanging off of an ancient wooden portal that refreshes my spirits.

+ [Emerge in the plaza] -> plaza

=== exit

True, I am afraid, heart abuzz.

I was told: only the Queenpriest will sooth thee.

Soothing answers to lost questions. Questions to the lost.

I shoudln't have come here. Left the loved living for the loved dead.

But the questions will keep buzzing, undying...

+ I don't need this. -> haunted
+ [No, I must!] -> plaza

=== haunted

I cannot do this. I do not want to let her go.

Defeated? Illuminated?

I walk down, as I see them, I see home. Distant but present, future.

I walk downhill. Finally downhill. As a bee buzzes by.

-> END

=== plaza

{I am welcomed by a|A} marketplace abuzz.

Abuzz with pilgrims, like myself, 

Abuzz with locals and monks.

Abuzz with friendly bumblebees!

{!Sacred bumblebees, famed for their soothing honeys.}

+ [Peruse the stalls] -> marketstalls
+ [Into the Gliding Monkey] -> inn
+ [Continue towards the summit] -> mainstairs
+ [Down through the threshold] -> exit

=== marketstalls

{!I idly round the plaza, enchanged but distracted, a higher aim in mind.}

Behind a richly gilded stall, a richly gilded man, grinning, pronounces the holiness of his wax idols.

On a floating cloud of wool, samples of rotund cheeses are given away, by a rotund farmgirl.

An old master sits on the bare stone, an old orangutan beside, guarding the delicate accordions of his craft.

+ [Back to what I came for] -> plaza

=== inn

A roudy bunch freely taps giant barrels of mead, singing never-written songs.

Academic and labourer alike, cares at the door, honeyed heads abuzz.

The back opens to a backyard, somehow even noisier.

+ {not hostman} [Approach the hostman] -> hostman
+ [Check the upstairs] -> dormitory
+ [Out back] -> tentfield
+ [I should resume my path] -> plaza

=== hostman

"Greetings", I mutter.

"Ah, what'll be then?", enthuses the hostman. 

"Mei tempt ya to a buzzy mead? A specialty 'tis, memade!", proudly.

* "Ah yes, thirsty stairs!"
<>, I acclaim.
"Accord! A freshing mug!", joyfully landing before me, spilling half of it.

"But I do not come just for your delicacies", I say delighted.

* "I come for a soothing of a different kind", apologetically.

- "Ah... Dreamer are we?", darkening slightly.

"Toeach theirown, mesay. But lathering our sweet honeys aint forme."

"Come looking for their soul, 'nstead loose it!", huffs.

Indeed... People travel far and wide for the honey that sooths their sorrows.

But not all need the same soothing.

Some wish to joyfully forget their pains, with sweet meads, like those gathered here.

Others forget by immersing themselves on their journey to mastery, be it strength, craft or intellect.

But others still, cover themselves in melted honey, dissolving, dissapearing, into their dreams.

Not me.

* "Oh no goodsir, I climb to witness the Queen".

- "Mesee, mesee...", with renewed respect, and some pity.

"Our Queenpriest, shellundo your buzzing questions, certain. But the answers? Uncertain".

* "That's what I heard. Any advice?", hopeful, afraid.

- "Mafraid not, welocals... Wedo support, protect, our Queen. But hermysteries remain hermysteries".

"Methank that I never had cause to witnesser".

"But mebest to you!", bright again.

* "My thanks, good day then, well met."

"May you find accord and be soothed", he ends, smiling kindly.

 -> inn

=== dormitory

{not hostman: "Mefriend! May I sooth thee?" -> hostman}

{!My first thought: library?}

Ailes flanked by tall wooden shelves.

{!Shelves with matresses? Ah...}

The shelves are divided into honeycomb hexagons.

Each niche housing a moneyed traveler, a legacied student.

Not what they are used to, but space is at a premium up here.

The rest makes do out back.

+ [Back down the stairs] -> inn

=== tentfield

First is the smell: mutton, sweet and spiced.

A massive cauldron boils at the center of the field, stewing day and night.

The people need to be fed, people a'plenty!

A wide fenced field, flowers, bees, tents and pilgrims, as far as the eye can see.

Joyful? Sure. Comfortable? Not in the least. I thank that my visit will be short.

The monks and locals already crowd in their living quarters, the droves of visitors need to get creative.

+ [Back inside] -> inn

=== mainstairs

As I climb the stairs towards the summit, yet again, I buzz, nervous.

I come to see the Queenpriest, I come for answers.

Well, rather, I come to erase the questions that won't leave my head.

So I can focus on those living, rather than the dead.

But the answers, I fear.

I'm here now, let's see what awaits.

+ [Emerge onto a wide road] -> mainroad

=== mainroad

Here's the beating heart.

A greystone road, flanked by greystone abodes.

Shops below, and homes above. Golden brass roofs, glinting.

Which way is up?

VAR stairs_location = ""
{stairs_location == "": 
    ~ stairs_location = "{~bazaar|academy|seminary|dreamden}"
}

+ [Explore the alleys] -> crossing -> bazaar
+ [Enter the walled arena] -> crossing -> academy
+ [Walk the gardens] -> crossing -> seminary
+ [Back down to the plaza] -> plaza

=== crossing

{~ -> monk_procession | -> floating_sheep | -> gorilla_sled | -> jumping_race | -> solemn_funeral | -> hive_litter}

->->

=== monk_procession

In bright yellow shawls, a procession of Monks of the Accord walks the road.

I wait respecfully.

Their hands clasped, their wrists tied, by the sacred red Chord that symbolizes their creed.

I cross the road when they pass.

->->

=== floating_sheep

As I attempt to cross the road, a shadow hovers over me, and I step back, startled.

But as I look up, I see the most placid scene.

A shephard drives his flock of famed floating sheep, from the high flatlands.

With a coat of lighter-than-air wool, the sheep bounce and bumble, unconcerned of the earth's pull.

I cross forward delighted.

->->

=== gorilla_sled

A massive sled crosses my path, taking up the full width of the road, dragged by a pair of gorillas, uphill.

It carries all kinds of foodstuffs from the fertile lowlands, to feed the crowds here at the barren peaks.

I cross the road after it.

->->

=== jumping_race

The jolly chords of an accordions pull my eye towards the street corner.

Before I realize, the road is conquered by lightning youngsters.

A Race of the Peaks!

Aided by floating wool jumpers, they jump and hop downhill, frenetically, chasing the holden laurels.


I continue in my path, bemused.

->->

=== solemn_funeral

Before I can cross the road, I respecfully wait for a solemn procession.

A large crowd of friends and family carry the body of someone gone.

Wrapped in floating wools, it hovers magically between them.

Their faces are bittersweet, a life well lived it seems.

I wish for the same one day.

->->

=== hive_litter

A majestic litter is carried along the road.

Ornate and gilded. A thousand bees buzzing. Honeycomb walls reflecting the sun.

The locals clamour in balconies, waving colorful cloths.

I assume they carry a queen bee, not the queen I'm after, but almost as holy.

I cross ahead as the crowd abates.

->->

=== bazaar

I am hugged by industry.

Streets of a single man's breadth fit three at a time.

To the sides, the clamor of hammers and haggling.

Artisans, merchants and traders, in a joyful battle of craft and profits.

They ignore me, I ignore them. I have places to be.

+ [Walk deeper into the streetmaze] -> dreamden_entrance
+ [Back to the mainroad] -> mainroad
+ {stairs_location == "bazaar"} [Ah, I see some stairs climing up!] -> laststairs

=== dreamden_entrance

I side and wind, I dodge and swerve.

And emerge at... A dead end.

The harsh cliffs of the icy mountain face me.

Although it is not bare, steam raises from a narrow crack.

On the side, a discoloured sign: The Dreamden

+ [Enter] -> dreamden
+ [I see a way back to the mainroad] -> mainroad
+ {stairs_location == "dreamden"} [Ah, some stairs climing up!] -> laststairs

=== dreamden

Blinded by steam, I stumble, arms forward.

An oppresive contrast to the brisk summer-cold outside.

Eventually it widens, lantern lights, a gloomy cavern.

Men and women, sit and lie back. Melting in honey.

Some lather themselves, some lather each other.

All dream, soothing, away.

I am tempted by the promise, an escape. But I sense a darkness,

not sure if I'd find my way back.

+ [I walk back out before I change my mind] -> dreamden_entrance

=== academy

Sunbaked sand, hot under my feet even in the alpine breeze.

Students spar under the harsh eyes of the Chordmaster.

The famed Chord that binds the monks wrists, is, indeed, a symbol of their holy creed.

But it has also a more earthly purpose: their weapon of choice.

Nowadays though, few true monks train in the battle arts.

Drawn towards more intellectual pursuits, the Chordmasters class is instead full of tourists,

looking for exotic escape and adventure.

At least their donations fill the temple's coffers to the brim.

+ [Back to the mainroad] -> mainroad
+ {stairs_location == "academy"} [Ah, I see some stairs climing up!] -> laststairs

=== seminary

Like philosophers of old, eager priests-to-be follow their teachers along the placid orchards.

They endlessly expell on the intricacies of the Accord. Bald and long-bearded.

I had my time of this, long back, and I found it was not my path.

I have no interest in revisiting that past.

+ [Back to the mainroad] -> mainroad
+ {stairs_location == "seminary"} [Ah, I see some stairs climing up!] -> laststairs

=== laststairs

I tremble as I climb the stairs, the last set of stairs, hugging the wall.

I tremble due to the glacial breeze.

I tremble at the sight at the exposed cliff beside the narrow steps.

I tremble at what awaits.

An end to the endless questions, with answers I do not want.

I distract myself by watching the apiaries, dangling off the cliff.

Massive stalactites of honey and wax, intrepid monks on thin red ropes, harvesting.

+ [The temple courtyard, at last] -> temple

=== temple

Flanked by living quarters and contemplation halls, golden domed all, I finally see what I came for.

I mindlessly give a few coins to the kindly monk, reveiving a candle in return.

I am entranced, in the presence of the Queenpriest.

She is no woman.

A tall gleaming cylinder is in front of me.

Wrapped in a honeycomb of hexagonal mirrors.

The mirrors reflect what they see, the endless landscape of valleys and rivers below.

But they reflect faces too, faces of all kinds, faces that are not there.

The monk explains:

I must tug at the lever, and when the structure slows, I must talk to the mirror in front.

They will sooth the endless questions, they will bring me back to the living.

I hope.

+ [I close towards it, steeling myself, heart abuzz] -> END
