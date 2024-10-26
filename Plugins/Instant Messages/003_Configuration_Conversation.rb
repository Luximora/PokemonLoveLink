#===============================================================================
# Conversation registrations
#
# The main conversations used in the game. These can be anything from one-off
# messages to the player to involved group conversations between multiple
# contacts.
#===============================================================================
# Parameters:
#   - :id => Symbol - The ID of the specific conversation
#   - :group => Symbol - The ID of the group the conversation is housed in
#   - :messages => Array - Contains each message used in the conversation. See
#                  Messages Setup format below.
#   - :important => (Optional) Boolean - If true, the messages are required to be 
#                   viewed before doing anything else in the game. Will force 
#                   open the Instant Messages app.
#   - :instant => (Optional) Boolean - If true, the messages will appear instantly
#                 when opened, instead of being real-time.
#
# Messages Setup format:
#   [<Contact ID>, <Message Type>, <Parameter>, <(Optional) Delay Time/Variable>]
#
# Contact ID => The ID number of member of the group will be speaking, as defined in the Group's members hash.
#                Set to 0 for the Player. Set to -1 for a System Message.
# Message Type => Symbol defining the type of the message. Available options:
#               - :Text => A basic text message.
#               - :RedoText => Same as text, except it will make it look like the contact typed out a message, reconsidered it, and typed out a new one.
#               - :Leave => A system message stating that a contact has left the chat.
#               - :Enter => A system message stating that a contact has entered the chat.
#               - :GroupName => Used to change the group name. Shows a system message stating that the group name has changed.
#               - :Picture => Used to show a picture as a message.
# Parameter => Enter a parameter value based on the Message Type:
#               - :Text => A string representing the text of the message. For a Player Message that show choices to make, or NPC responses that change
#                           based on the Player's choice, use an array of strings.
#               - :RedoText => Same as :Text.
#               - :Leave => The Contact ID of the contact that left.
#               - :Enter => The Contact ID of the contact that entered.
#               - :GroupName => A string representing the new group name. Set to nil to revert it back to the original group name.
#               - :Picture => A string representing the file name of a picture saved in Graphics/UI/Instant Messages/Pictures.
# Delay Time/Variable => Optional. For messages other than a Player message, set an integer to delay the message by a number of frames.
#                        For Player messages:
#                       - Set to an integer representing the ID of a Game Variable that you want to be set to the index value of the choice made.
#                       - Set to a string representing a code snippet to run, where {VALUE} will be replaced the by index value
#                         of the choice made. For example, "$player.party[0].gender = {VALUE}"
#

GameData::InstantMessageConversation.register({
    :id             => :ADVERTISEMENT_TEST_1,
    :group          => :ADVERTISEMENT_1,
    :instant        => true,
    :messages       => [
                        [1, :Text, _INTL("Please buy Potions!")]
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :ADVERTISEMENT_TEST_2,
    :group          => :ADVERTISEMENT_1,
    :instant        => true,
    :messages       => [
                        [1, :Text, _INTL("Please buy Super Potions!")]
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :ADVERTISEMENT_TEST_3,
    :group          => :ADVERTISEMENT_1,
    :instant        => true,
    :messages       => [
                        [1, :Text, _INTL("Please buy Hyper Potions!")]
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :ADVERTISEMENT_TEST_4,
    :group          => :ADVERTISEMENT_1,
    :instant        => true,
    :messages       => [
                        [1, :Text, _INTL("Please buy Max Potions!")]
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :ADVERTISEMENT_RANDOM_1,
    :group          => :ADVERTISEMENT_2,
    :instant        => true,
    :messages       => [
                        [1, :Text, _INTL("Come visit Pokémon Centers!")]
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :ADVERTISEMENT_RANDOM_2,
    :group          => :ADVERTISEMENT_2,
    :instant        => true,
    :messages       => [
                        [1, :Text, _INTL("Come visit Pokémon Marts!")]
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :ADVERTISEMENT_RANDOM_3,
    :group          => :ADVERTISEMENT_2,
    :instant        => true,
    :messages       => [
                        [1, :Text, _INTL("Come visit Pokémon Gyms!")]
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :CHATBOT_VARIABLE_TEST,
    :group          => :CHATBOT,
    :important      => true,
    :messages       => [
                        [1, :Text, _INTL("I'm a chat bot.")],
                        [1, :Text, _INTL("Your next choice will save to Game Variable 2"), 15],
                        [0, :Text, [_INTL("Set to 0"), _INTL("Set to 1"), _INTL("Set to 2")], 2],
                        [1, :Text, [_INTL("You chose choice 1."), _INTL("You chose choice 2."), _INTL("You chose choice 3.")]],
                        [1, :Text, [_INTL("Choice 1 was a good one."), _INTL("Choice 2 was alright."), _INTL("Choice 3 was not a good choice. You should have chosen another.")]],
                        [1, :RedoText, _INTL("Your next choice will execute code to change your first Pokémon's gender")],
                        [1, :Text, _INTL("Change your Pokémon's gender to what?")],
                        [0, :Text, [_INTL("Male"),_INTL("Female")],"$player.party[0].gender = {VALUE}"],
                        [1, :Text, [_INTL("You chose choice 1."),_INTL("You chose choice 2.")]],
                        [1, :Text, _INTL("That's it for now.")],
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :OAK_TEST,
    :group          => :PROFOAK,
    :important      => true,
    :messages       => [
                        [1, :Text, _INTL("Hello, this is Professor Oak")],
                        [1, :Text, _INTL("Did this message <b>reach</b> you?")],
                        [-1, :Text, _INTL("Please answer the question.")],
                        [0, :Text, [_INTL("Message received"), _INTL("No")]],
                        [1, :Text, [_INTL("<icon=emojiHappy> "), _INTL("<icon=emojiAngry> ")]],
                        [1, :Text, [_INTL("Very good"), _INTL("There is no time for jokes")]],
                        [1, :Text, _INTL("I'm going to try something")],
                        [-1, :Enter, 2, 80],
                        [-1, :GroupName, _INTL("Prof. Oak & Chatbot")],
                        [2, :Text, _INTL("Thank you for including me in your chat.")],
                        [1, :Text, _INTL("Oh no not that")],
                        [2, :Text, _INTL("I wish to stay.")],
                        [-1, :Leave, 2, 10],
                        [-1, :GroupName, nil],
                        [1, :Picture, "Pikachu"],
                        [1, :Text, _INTL("I meant to send you that Pikachu picture <icon=emojiPokeball> ")],
                        [1, :Text, _INTL("That's all for now")],
                    ]
})


GameData::InstantMessageConversation.register({
    :id             => :LASS_LUCY_INTRO,
    :group          => :LASS_LUCY,
    :important      => true,
    :messages       => [
                        [1, :Text, _INTL("Heyy, is this the right number? It’s Lucy.")],
                        [0, :Text, [_INTL("No, this is the local pizza place."), _INTL("Are you the girl with a fake boyfriend?")]],
                        [1, :Text, [_INTL("<icon=emojiAngry><icon=emojiAngry><icon=emojiAngry> Haha very funny. Do you take orders for prom dates too?"), _INTL("The one and only!")]],
                        [1, :Text, _INTL("Anyway, u free tmrw?")],
                        [0, :Text, [_INTL("Ya whats up?")]],
                        [1, :Text, _INTL("I was thinking what do real couples do before prom?")],
                        [0, :Text, [_INTL("Awkward family dinner?"), _INTL("Matching fits and cringey selfies?")]],
                        [1, :Text, [_INTL("lmaooo NOPE, no parents involved pls, that’s a whole other level of cringe <icon=emojiLaugh>"), _INTL("YES! well... minus the cringey selfies maybe  <icon=emojiLaugh>")]],
                        [1, :Text, _INTL("We should go shopping & find some matvhing outfits for prom make it look real <icon=emojiThumbsUp>")],
                        [1, :Text, _INTL("*matching")],
                        [1, :Text, _INTL("Theres this rly good clothier in lyratown")],
                        [1, :Text, _INTL("Kinda pricey but ill cover it dw")],
                        [0, :Text, [_INTL("U sure? i don mind payin my own stuff")]],
                        [1, :Text, _INTL("Nah its cool")],
                        [1, :Text, _INTL("Its the least i can do for u helping me out")],
                        [0, :Text, [_INTL("Aright, see u in a bit")]],
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :LASS_LUCY_TWO,
    :group          => :LASS_LUCY,
    :important      => true,
    :messages       => [
                        [1, :Text, _INTL("HEYYYYY")],
                        [0, :Text, [_INTL("WHAAAAT?")]],
                        [1, :Text, _INTL("PROMS IN AN HOUR")],
                        [0, :Text, [_INTL("ALREADY?!")]],
                        [1, :Text, _INTL("I know I forgot to tell u when it was, are you free?")],
                        [0, :Text, [_INTL("I dunno, its kinda short notice")]],
                        [1, :Text, _INTL("PLEAE")],
                        [1, :Text, _INTL("PLEAAASE")],
                        [1, :Text, _INTL("PLEASE DUDE")],
                        [1, :Text, _INTL("...")],
                        [1, :Text, _INTL("I promise I'll make it up to u")],
                        [0, :Text, [_INTL("What was that /'.../' for?")]],
                        [1, :Text, _INTL("Its embaressing but trust me ill make it up to you")],
                        [0, :Text, [_INTL("Hey dont worry about it")]],
                        [0, :Text, [_INTL("Im coming, u dont need to make it up to me")]],
                        [1, :Text, _INTL("...")],
                        [1, :Text, _INTL("Thanks I really appreciate it <icon=emojiHeart>")],
                        [1, :Text, _INTL("Ill be waiting for u at the big building at cassiopeia")],
                        [1, :Text, _INTL("Its the center one next to the gmy")],
                        [1, :Text, _INTL("*gym")],
                    ]
})
