VAR truth = 0

BRANDBURG, 1462
After a long journey in the old coach, you finally arrived in the center of Brandburg, the capitol city. This comfort traveling is a really nice feature to your new position the family courier. You stretch your limbs and try to orientate yourself.
+ [Look around] -> centralsquare

=== centralsquare
{|Central square [location]}
{You arrived directly at the central square. It seems from here | From here}, you can reach almost every place easily by foot. The street is {~filled | buzzing} with people going after their day work, children playing and some people linger around  { to take a look on newcomers | to gossip}. 

+[Go to the town hall right next to the central square] -> townhall
+[Discover the marketplace] -> marketplace
+[Try to pick up some gossip] -> gossip
+{gossip}{not pass}[Go to the castle] -> castlegate
*{castlegate} You try to ask the locals how to get to the castle -> A38
+{pass} [With the allowance, you can now enter through the gate] -> castle

=== townhall
The town hall [location]
The old red brick stones shine bright in the sun, giving the surrounding a special glow. The small but high windows make it even more impressive. 
{not A38: Other than that, nothing seems noteworthy of your time.}
+{not A38} [Back to the central square] -> centralsquare
*{A38}  [You enter the tall building.]->inside
+{inside} [Back to the central square] -> centralsquare

=inside
Although it's a lovely sunny day outside, its really dark inside. The high architecture and the small windows make this place even darker. Compared to outside, it is also almost quiet in here, making you wonder if it is open at all. On top of that it is real cold inside. The whole atmosphere is giving you goosebumps. 
After your eyes adjust to the low light, you find out, that there are indeed people working here. You ask around for some time to find someone who can help you, until eventually find the official in charge. An slender, dark haired lady asking about your reason for the visit. 
+[You lie to her]  
    ~truth = 0
    -> pass
+[You tell her the truth]
    ~truth = 1
    -> pass

===pass
{truth: You told her about the letter.}
{not truth: You made up a story on the fly.}
She gazes at you, but her expression remains somehow undecipherable. An eternal awkward silence later, she gives you a temporary entry allowance. 
* You take the allowance
-On your way out, you have a strange feeling about that woman.
+ [Back to the central square] -> centralsquare

=== marketplace
The marketplace [location]
{Out of the big mass of people, two people in an intense debate stand out. A large, blonde, well muscled blacksmith with a big mustache is accusing smaller, also blond, well-fed fish merchant. Something about the quality of products. This can easily escalate, but other people already try to calm both. | There seem to be an accident with carts. Local guards trying to clear up the traffic, but one of the carts had loaded bad apples and they are now scattered all over the street. The smell is awful. | As you walk through the center of the market, merchants left and right praise their products and try to sell them to you very aggressively. Wait, did someone really shout, they would sell their grandmother? | You see nothing that sparkles you interest any more.}
+ [Back to the central square] -> centralsquare

=== castlegate
Castle gate [location]
{The castle is an impressive sight to behold. It looks so clean and well maintained like it was not built 300 years ago. The castle walls look impenetrable and hide, what marvels may lie behind it.| The old castle is waiting for you to enter it. Only the walls are between you and your duty.}
{You can hear the bells of the cathedral inside the castle walls. Suddenly, you remember the reason why you are here at all! The duke of Barling gave you an important letter. Your task is to give it to the archbishop of Brandburg personally. He made it clear, that failure is not an option and to be secretive about it!<br><br>But there is a problem ahead. Today the gate seems closed, as the guards are sending almost all people away with only a very few allowed to enter. Unfortunately, they also send you away. No one from outside Brandburg is allowed to enter today. Your protest, that you have important business inside is futile. The old, stoic guards look grim and you choose not to test you luck.|The guards are still refusing you entry to the castle. You need to find a way to get inside.}
+ [Back to the central square] -> centralsquare

=== gossip
Gossip
{Your coach is the current talk around. Many are speculating, what all the people from Barling are doing here. Surely they want to visit the castle!|{Martha, a higher official, who is all alone since her husband died last year, was seen with a well-dressed man. Who was it? People are guessing wildly. This Martha must be well known.|The crop this year is going to be very good. Finally, after the last bad years.| You hear nothing interesting, maybe tomorrow there will be more?}}
+ [Back to the central square] -> centralsquare

=== A38
<br>
There are many people on the street today, but only a few look like they can enter the castle and the cathedral from there. You talk to some and it seems, you first need an official permission. Your goal should be the town hall. 
+ [Back to the central square] -> centralsquare

===castle
Henrik Castle [location]
{After leaving the gates you see the impressive inside of the castle walls. The high cathedral, the fancy houses of the rich merchants and aristocrats, the tavern and the castle itself. The streets are full of people in noble dresses like you never have seen before. There seems to be a parade or something, as the main street to the castle is blocked with people. From the gates, you only have two choices. | After the visit in tavern, you feel starving but you have a duty to fulfill, otherwise the duke will throw you out before you could even prove yourself of this position.}
+[Go straight to the cathedral]-> cathedral
*[Visit the famous Red Boar Tavern]-> tavern

=== tavern
Red Boar tavern [location]
You have not even entered the tavern, as a delicious smell almost enthralls you. You heard about the exquisite cuisine of the capitol, but you never imagined something like this. The tavern is quite big and really well visited. You look through the whole tavern for a place, but its bursting with people enjoying the food and company. You will have to visit it maybe a bit later. On your way out you heard some people talk about the archbishop. They do praise his kindness, and his fashion style. Also, they are always amazed how well informed he is.  
+[Back to the castle] ->castle

=== cathedral
The old castle cathedral [location]
The inside of the building is even more stunning. Like the town hall, the small windows block out most of the sun, but here the amount of burning candles on all sorts of candleholder, sticks and chandelier let the interior shine like in broad daylight. Even the high ceiling with its golden paintings reflect the light back, making it even more impressive. On the walls you see pictures as tall as man, with big wooden frames in all colors. 
Right next to the altar, you see a well-dressed man standing. You look around and see no other person in the room facing a artful silver sculpture. He turns to you to examine you. "Do you seek guidance? If so, please visit me back tomorrow, today I am preparing the prayers for the week. Or is something else on your mind?".  
You found the archbishop. Your job is done for now, it seems.
+ Give the letter to the archbishop
{truth: Suddenly, you hear a familiar voice behind you. "You should have been more secretively about your mission, as you were ordered to." You see the lady from the town hall, she is again starring at you with a chilling gaze. "You are not worthy of our interest. Here, take this letter back to the duke of Barlington. And stay there!". You are shocked, but you have no time to comprehend what just happened as the 2 guards from before are bringing you back outside the city. Just as you started to enjoy this big city, you are cast away and you have a feeling, that the letter you have gotten might bring even more bad news. Its not your lucky day...}
{not truth: Behind the archbishop, a familiar face emerges out of the shadows. "Well, you managed to get your job done. Could have been more professional, but okay for the first lesson. Welcome to Brandburg, your new home!" You are trying to keep your countenance, but this just hit you out of nowhere. "Stop looking like a scared calf, you have much to learn about this city!" You have a feeling, that things start to get really interesting soon!}
<br>
The END ... for now!
-> END