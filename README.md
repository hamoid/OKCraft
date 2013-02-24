# OkCraft

### Simple game created at the Processing Code Jam organized by the Open Tech School in Berlin

Saturday 23rd, February 2013.

By Kay and aBe

Event meetup URL: http://www.meetup.com/opentechschool-berlin/events/105194682/

Of the three proposed topics, this game deals with two: "I don't read, I just click Ok" and "Typo".

The background animated text shown during the game is the Google Search Terms of Service. The sentences you must agree with to continue alive in the game are remixed from the Facebook Legal Terms.

The game won't win too many prizes, but the structure can be useful for building other games or story telling Processing programs in which there are different states (for example intro screen, instructions, game, end screen), each state having a different fixed duration or user controlled behavior.

### Extends and implements
The code makes use of "extends" and "implements" to allow storing objects of different types in one variable, and be able to call state.draw(), state.mousePressed(), state.keyPressed() and state.done(), even if we don't know if state refers to StateWait, StateIntro, StateGame or StateEnd (see that in CodeJam.pde). This is not-so-basic object oriented programming. 

To give a simple example of this concept, imagine we have an array of animals. The animals could be cats, dogs or ants. Cat, Dog and Ant are three classes. But if you declare an array of Cat, you can not store Dog in that array! So the trick is to tell processing that Cat, Dog, and Ant implement Animal, which is an "interface". Then, your array will not be an array of Dog or an array of Cat, but an array of Animal instead. This allows to have mixed animals in the array. With one caveat: the animals must implement the same methods specified in the interface, for example eat(), move(), or draw().

(end)

