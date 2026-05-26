VAR Time = 12 // half hours, so 48 = whole day
// This is nicer to use in conditional descriptions than the numeric time
VAR TimeOfDay = MORNING 
VAR Weather = BLANK
// if this reaches 0, the weather changes
VAR WeatherCnt = 2
LIST Options_WeatherStates = BLANK, RAINY, CLOUDY
LIST Options_TimeOfDay = MORNING, NOON, AFTERNOON, EVENING, NIGHT

-> thesquare

=== thesquare

{-> full_desc ->|-> short_desc ->}
-> dynamic_desc ->
-> tick(true) ->
-> choices

= full_desc
    The central square is paved with cobblestone, worn smooth with age. 
    Amidst the open space you can see a statue of an animal, which you don't recognize.
   
   ->-> 
= short_desc
   The central square.
   ->->
= dynamic_desc
{
- TimeOfDay == MORNING: The place is passed mostly by people hurrying to work. {~The morning air is fresh.|||}
- TimeOfDay == NOON: A few merchants are selling food and spices. More people are here now than in the morning.
- TimeOfDay == AFTERNOON: A few merchants and some people are here. 
- TimeOfDay == EVENING: Some merchants are already wrapping up their things. Some people sit on the ground, talking.
- else: {~The square is empty.|It's quiet here.}
}
->->

= choices
+ [perceive] -> full_desc  -> 
         -> dynamic_desc ->
         -> describe_weather ->
         -> choices
+ [look at the statue] -> look_statue -> 
                       -> choices
+ [south] -> southern_street
+ [north] -> northern_street
+ [east] -> eastern_street
+ [wait] 
     You stay a while and watch the square.
    -> random_outside_city_event ->
    -> dynamic_desc ->
    -> tick(true) ->
    -> choices
    
= look_statue

You look at the statue.
It is built of rough, brown stone. 
Even upon closer inspection, you still don't recognize the animal depicted. 

->->

=== southern_street

{-> full_desc ->| ->short_desc ->}
-> dynamic_desc ->
-> tick(true) ->
-> options

= full_desc 
The southern street is lined by showy, large buildings. <>
Its cobblestone is worn off by the centuries. 
To the south, the cathedral is towering. 
{TimeOfDay == NIGHT: Although you cannot see much of it in the dark.}
->->
= short_desc 
You are on the southern street.
->->

= dynamic_desc 

{ 
    - TimeOfDay == NIGHT: Some torches are lit along the street.
    - TimeOfDay == MORNING: Many people are hurrying south.
    - TimeOfDay == NOON: The street is pretty quiet at this hour.
}
->->

= options

+ [perceive] -> full_desc -> 
          -> dynamic_desc ->
          -> describe_weather ->
          -> options
+ [north] -> thesquare 
+ [wait] 
     You stay a while and watch the street life.
    -> random_outside_city_event ->
    -> tick(true) ->
    -> options

=== northern_street

{-> full_desc ->| ->short_desc ->} // I am surprised this works, this way I can just show the full description on the first visit

-> tick(true) ->
-> options

= full_desc 
The castle can be seen towering to the north. The street seems to be mostly lined by administrative-looking buildings.
->->
= short_desc
The northern street.
->->

= options
+ [perceive] -> full_desc -> 
          -> describe_weather ->
          -> options
+ [south] -> thesquare 
+ [north] -> castle_gate
+ [wait] 
    You stay a while and watch the street life.
    -> random_outside_city_event ->
    -> tick(true) ->
    -> options
    
    
=== eastern_street

{-> full_desc ->| ->short_desc ->} 

-> tick(true) ->
-> options

= full_desc 

Stores are lining this street on both sides. 
{
- TimeOfDay == NIGHT: You can see the remains of food and animals on the cobblestone. The noise of the day is gone. 
- else: The street is busy and loud, filled with people and animals alike.
}
->->
= short_desc
The eastern street.
->->

= options
+ [perceive] -> full_desc -> 
          -> describe_weather ->
          -> options
+ [west] -> thesquare 
+ [east] -> market_place
+ [wait] 
    You stay a while and watch the street life.
    -> random_outside_city_event ->
    -> tick(true) ->
    -> options

=== market_place

{-> full_desc ->| ->short_desc ->} 

-> tick(true) ->
-> options

= full_desc 

A square surrounded by shady trees. 
Market stalls of various sizes are lined up in a haphazard pattern.
{
- TimeOfDay == NIGHT: You can see the remains of food and animals on the cobblestone. The noise of the day is gone. 
- TimeOfDay == MORNING: Some merchants are still setting up their stalls. 
- TimeOfDay == EVENING: The business of the day has toned down, few people are strolling by the stalls anymore. 
- else: The place is crowded, you can hear bargaining, laughter and the occasional cursing.
}
->->
= short_desc
The market place.
->->

= options
+ [perceive] -> full_desc -> 
          -> describe_weather ->
          -> options
+ [west] -> eastern_street 
+ [wait] 
    You stay a while and watch the market.
    -> random_outside_city_event ->
    -> tick(true) ->
    -> options
    
=== castle_gate

{-> full_desc ->| ->short_desc ->}
-> tick(true) ->
-> options

= full_desc
The castle is built out of a brown stone, of a sort that you have never seen before.
The gate is { Time >= 12 && Time <= 40: open|closed}.
->->
= short_desc 
The castle gates.
->->


= options
+ [perceive] -> full_desc -> 
          -> describe_weather ->
          -> options
+ [south] -> northern_street
+ {Time >= 12 && Time <= 40} [enter] -> castle_yard
+ [wait] 
    You stay a while and watch the castle gates.
    -> random_outside_city_event ->
    -> tick(true) ->
    -> options

=== castle_yard

{-> full_desc ->| ->short_desc ->}
-> tick(true) ->
-> options
{Time == 41: The gate has been shut.}

= full_desc
The tall walls make this a dark place. 
->->
= short_desc
The tall walls make this a dark place. 
->->

= options
+ [perceive] -> full_desc -> 
          -> describe_weather ->
          -> options
+ {Time >= 12 && Time <= 40} [exit] -> castle_gate
+ [wait] 
    You stay a while.
    -> random_outside_city_event ->
    -> tick(true) ->
    {Time == 41: The gate has been shut.}
    -> options

=== random_outside_city_event ===
    
    ~ temp roll = RANDOM(1,10)
    {
        - roll == 1:
            A pigeon lands close to you.
            * [pet the pigeon] The pigeon gurrs, then flies away. -> event_done
            * [shy the pigeon away] The pigeon flies away. -> event_done
        - roll == 3:
            {~You see a rat.|You hear a rat squeaking.}
        - roll == 5:
            {~Somewhere, a dog is barking.|A dog is barking somewhere.}
        - roll == 7:
            You hear a horse whinnying somewhere.
        - else: -> event_done
    }
    -> event_done
    = event_done
    ->->

// ======
// helpers, functions
// ======

=== tick(outside)
    ~ Time += 1
    {Time >= 49: 
        ~ Time = 1
    }
    ~ WeatherCnt -= 1
    
    // Print time at some specific points in the day
    {Time == 6:  It is very late.}
    {Time == 12: Morning has come.}
    {Time == 24: It is noon now.}
    {Time == 36: Evening has begun.}
    {Time == 40: It has turned dark.}
    {Time == 48: It is midnight now.}

    // update the TimeOfDay variable 
    {
        - Time > 10 && Time <= 22:  ~ TimeOfDay = MORNING
        - Time > 22 && Time <= 26:  ~ TimeOfDay = NOON
        - Time > 26 && Time <= 35:  ~ TimeOfDay = AFTERNOON
        - Time > 35 && Time <= 40:  ~ TimeOfDay = EVENING
        - else: ~ TimeOfDay = NIGHT
    }
    
    ~ temp should_update_weather = WeatherCnt == 0
    ~ temp is_dark = Time > 40 && Time <= 11
    {should_update_weather == true:
        ~ WeatherCnt = RANDOM(4, 7)
        ~ temp roll = RANDOM(1, 3)
        ~ temp new_weather = BLANK
        {
            - roll == 1: ~ new_weather = BLANK
            - roll == 2: ~ new_weather = RAINY
            - roll == 3: ~ new_weather = CLOUDY
        }
        // if we are not inside, we also print the weather change
        {outside:
            - is_dark: { describe_nighttime_weather_change(Weather, new_weather) }
            - not is_dark: { describe_daytime_weather_change(Weather, new_weather) }
        }
        ~ Weather = new_weather
    }
   
    ->->
=== function describe_daytime_weather_change(old, new) ===

{
// ======
// BLANK -> X
// ======
- old == BLANK && new == RAINY: ~ return "{&The sky clouds and rain starts to fall.|Rain clouds have appeared and it is starting to pour.}"
- old == BLANK && new == BLANK: ~ return "{&The sun keeps shining.|The sky is still blank.|It remains sunny.}"
- old == BLANK && new == CLOUDY: ~ return "{&Clouds have appeared.|It's getting cloudy.}"
// ======
// CLOUDY -> X
// ======
- old == CLOUDY && new == RAINY:  ~ return "{&The clouds have darkened and its starting to rain.|The clouds have turned into rain clouds and its starting to pour.}"
- old == CLOUDY && new == BLANK:  ~ return "{&The clouds have gone, the sky is blank.|The sky is free of clouds now.}"
- old == CLOUDY && new == CLOUDY: ~ return "{&The sky remains clouded.|The sky is still cloudy.}"
// ======
// RAINY -> X
// ======
- old == RAINY && new == RAINY: ~ return "{&It is still pouring.|It continues to rain.|Rain keeps falling.}"
- old == RAINY && new == BLANK: ~ return "{&The rain clouds have gone, the sky is blank.|It has stopped raining, the rain clouds have gone.}"
- old == RAINY && new == CLOUDY: ~ return "{&It has stopped to rain, the sky is still cloudy.|Rain has stopped, the sky is cloudy.}"
}
=== function describe_nighttime_weather_change(old, new) ===

{
// ======
// BLANK -> X
// ======
- old == BLANK && new == RAINY: ~ return "{&Although you cannot see the sky, you can feel rain starts to fall.|It is starting to pour.}"
- old == BLANK && new == BLANK: ~ return "{&The stars are still there.|You glance up at the stars, they are beautiful.}"
- old == BLANK && new == CLOUDY: ~ return "{&The stars have disappeared behind clouds.|Its must be cloudy now, because you cannot see the stars anymore.}"
// =====
// CLOUDY -> X
// =====
- old == CLOUDY && new == RAINY: ~ return "{&It's starting to rain.|It's starting to pour.}"
- old == CLOUDY && new == BLANK: ~ return "{&The clouds have gone, the stars are visible again.|The sky is free of clouds now, you can see the stars again.}"
- old == CLOUDY && new == CLOUDY: ~ return "{&The sky remains shrouded.|The sky is still cloudy.}"
// ======
// RAINY -> X
// ======
- old == RAINY && new == RAINY: ~ return "{&It is still pouring.|It continues to rain.|Rain keeps falling.}"
- old == RAINY && new == BLANK: ~ return "{&The rain clouds have gone, the stars are back.|It has stopped raining and the rain clouds are gone. You can see the stars.}"
- old == RAINY && new == CLOUDY: ~ return "{&Rain has stopped, the sky is cloudy.|Rain has stopped. The sky is shrouded and free of stars.}"
}
=== describe_weather
{
    - TimeOfDay == NIGHT:
        {
            - Weather == BLANK: The stars are shining.
            - Weather == CLOUDY: The night sky is clouded.
            - Weather == RAINY: It is raining, you cannot see the stars.
        }
    - else: 
        {
            - Weather == BLANK: The sky is clear.
            - Weather == CLOUDY: The sky is clouded.
            - Weather == RAINY: It is raining.
        }
}
->->



