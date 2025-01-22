/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional


-> cave_mouth

== cave_mouth ==
You've entered a cave. {not torch_pickup: There's a torch} and a tunnel each east and west.
+ [Take east tunnel] -> east_tunnel
+ [Take west tunnel] -> west_tunnel
* [Pick up torch] -> torch_pickup


== east_tunnel ==
You are in the east tunnel. It's pitch black.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have the torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light from your torch glints off the thousands of coins in the room.
-> END

prizes
    

*/

-> intro

== intro ==
"Hello viewers and welcome back to..."
"THIRTY DOORS!!!"
"I'm your host, Jeremiah Sispariah, and we have made it down to our last contestant. Do you want to tell the audience a little about yourself?"
* [I'd love to]
"Well that's too bad there's no time we've got to quickly go over these rules."
-> rules
* [Sure]
"Well that's too bad there's no time we've got to quickly go over these rules."
-> rules
* [Not really]
"OK... who does this guy think he is haha"
"ON TO THE RULES"
-> rules

== rules ==
"As you can see in front of you are eleven closed doors and ninteen previously opened ones. Behind each door is a different prize that YOU can take home tonight." 
"The big prize tonight is a CYBERTRUCK! It has yet to be discovered so there's still a chance to win it"
"To make things a little more interesting you can reveal a bonus door before opening another door IF you answer a trivia question. How does that sound?"
* [sounds good] -> trivia
* [I'm ready to pick a door Jeremiah] -> doors

== trivia ==
"What do butterflies use their antennae for?"
"Balance? Navigation? Or Smelling?"
*[balance] -> wrong_triv
*[navigation] -> wrong_triv
*[smelling] -> right_triv
-> END

== wrong_triv ==
"Ah so close! The right answer was smelling"
"Don't worry though, you'll still have a chance at the doors"
-> doors



== right_triv ==
"Congratulations you are correct!"
"Behind the bonus door is..."
"Airpods"
"You will have the option to pick the airpods at the doors stage"
-> doors

== doors ==
"Let's get straight into it"
*{right_triv} [Airpods] -> bonus_door_end
*[Door 2] -> door_2
*[Door 5] -> door_5
*[Door 6] -> door_6
*[Door 8] -> door_8
*[Door 11] -> door_11
*[Door 13] -> door_13
*[Door 16] -> door_16
*[Door 18] -> door_18
*[Door 22] -> door_22
*[Door 27] -> door_27
*[Door 28] -> door_28
*[Door 30] -> door_30
-> END

== door_2 ==
"You won a singular goat"
"Congratulations"
-> END

== door_5 ==
"You won a $50 starbucks gift card"
"Congratulations"
-> END

== door_6 ==
"You won 12 pieces of sliced ham"
"Congratulations"
-> END

== door_8 ==
"You won a brand new toolbox"
"Congratulations"
-> END

== door_11 ==
"You won a brand new microwave"
"Congratulations"
-> END

== door_13 ==
"You won the Cybertruck!"
"Congratulations"
-> END

== door_16 ==
"You won an all expenses paid trip to Vegas!"
"Congratulations"
-> END

== door_18 ==
"You won a bonsai tree"
"Congratulations"
-> END

== door_22 ==
"You won a new iPhone 16"
"Congratulations"
-> END

== door_27 ==
"You won a kitchen set"
"Congratulations"
-> END

== door_28 ==
"You won a shoe for only your right foot"
"Congratulations"
-> END

== door_30 ==
"You won a couple sheets of stickers"
"Congratulations"
-> END

== bonus_door_end ==
"Congratulations on winning your new airpods"
-> END