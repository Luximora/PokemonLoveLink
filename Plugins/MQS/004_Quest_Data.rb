module QuestModule
  
  # You don't actually need to add any information, but the respective fields in the UI will be blank or "???"
  # I included this here mostly as an example of what not to do, but also to show it's a thing that exists
  DRACOHUNT = {
    :ID => "13",
    :Name => "[Side Quest] Draconic Hunt!",
    :QuestGiver => "Odd Scientist",
    :Stage1 => "Help the scientist find a Gible.",
    :Location1 => "Orion Mine",
    :QuestDescription => "A troubled scientist is trying to study the rare dragon baby pokemon Gible, but can't do it on her own, help her out!",
    :RewardString => "Something Secret, EXP Candy S (x3), Great Ball (x4), 100 BP, 300 PokeDollars"
  }
  BFFS = {
    :ID => "16",
    :Name => "[Side Quest] Best Friends Forever!",
    :QuestGiver => "Old Man",
    :Stage1 => "Show the old man a pokemon with max friendship.",
    :Location1 => "Orion Mine",
    :QuestDescription => "An old man my the pond in Orion Mine said he'd give me a prize if I showed him a pokemon I'm really close with.",
    :RewardString => "Something Secret, EXP Candy S (x5), Friend Balls (x5) Soothe Bell (x1), 100 BP, 5000 PokeDollars"
  }
  SEWING = {
    :ID => "17",
    :Name => "[Side Quest] Sewing Inspiration!",
    :QuestGiver => "Clothier Sandra",
    :Stage1 => "Catch and gift a Sewaddle to the Clothier.",
    :Location1 => "Lyra Clothier",
    :QuestDescription => "A Clothier in Lyra town is having artists block and heard that a fashion designer from Unova uses a Sewaddle. Catch one and gift it to her!",
    :RewardString => "Rare Candy(x2), Great Balls (x3), Silk Scarf (x1), 100 BP, 2000 PokeDollars"
  }
  CLEANUP = {
    :ID => "18",
    :Name => "[Side Quest] Campus Clean Up Crew!",
    :QuestGiver => "Groundskeeper",
    :Stage1 => "Get rid of those darn Trubish and Grimers! (0/5)",
    :Stage2 => "Get rid of those darn Trubish and Grimers! (1/5)",
    :Stage3 => "Get rid of those darn Trubish and Grimers! (2/5)",
    :Stage4 => "Get rid of those darn Trubish and Grimers! (3/5)",
    :Stage5 => "Get rid of those darn Trubish and Grimers! (4/5)",
    :Stage5 => "Talk to the groundskeeper.",
    :Location1 => "Cassiopia Academy",
    :QuestDescription => "The academy groundskeeper is trying to keep the area clean but it seems like litter-causing Pokémon have made a mess of the campus. Help the groundskeeper clean up by catching or defeating these Pokémon.",
    :RewardString => "Gold Nugget (x1), 100 BP, 300 PokeDollars"
  }
  MEMORY = {
    :ID => "19",
    :Name => "[Side Quest] It's just a burning memory...",
    :QuestGiver => "The old man grandson",
    :Stage1 => "Help the old mans grandson recreate his grandpas old photos.",
    :Location1 => "Lyra Town",
    :QuestDescription => "Old man Jenkin's is losing his memories and his grandson wants to recreate a photo album of his history. With Jenkin's grandson, Jhonny, photograph a specific battle in Jenkin's life that match his old, faded photos.",
    :RewardString => "Stardust (x3), Great Ball (x2), 100 BP, 300 PokeDollars"
  }
  SEASONS = {
    :ID => "20",
    :Name => "[Lass Quest (Part 1)] Oh Dear, my Dear Deer!",
    :QuestGiver => "Lass Janet",
    :Stage1 => "Help Janet gather data on pokemon that can change forms.",
    :Location1 => "Cassiopia Academy",
    :QuestDescription => "A student at Cassiopia Academy is trying to write a paper on pokemon that change thier forms depending on their environment, catch a deerling of at least two different forms then show her your Pokedex data.",
    :RewardString => "???, Quick Ball (x3), 100 BP, 300 PokeDollars"
  }
  PPBOO = {
    :ID => "21",
    :Name => "[Side Quest] Pompous Pumpkaboo",
    :QuestGiver => "Smug boy Allen",
    :Stage1 => "Catch a bigger Pumpkaboo then Peter",
    :Location1 => "Lyra Town",
    :QuestDescription => "This smug dick head named <i>Peter</i> has a pretty big Pumpkaboo and keeps bragging about it. It's time to put that Pompous, Pea-brained, Pathetic, Putrid, Pitiful, Pungent PETER back in his place by catching a bigger Pumkaboo..",
    :RewardString => "Pride, Ego, Spell Tag (x1), 100 BP, 9000 PokeDollars"
  }
  STRONG = {
    :ID => "21",
    :Name => "[Side Quest] Mini Macho Miner",
    :QuestGiver => "Scientist Jill",
    :Stage1 => "Catch and gift a Machop to Jill",
    :Location1 => "Orion Cave",
    :QuestDescription => "Jill is a scientist having trouble digging for minerals in the cave on her own and wants to recruit a Machop, a pokemon she seems to be strongly infatuated with... Anyways, catch one for her to help her out.",
    :RewardString => "Moon Stone (x1), Dusk Ball (x3), Gold Nugget (x1), 800 BP, 100 PokeDollars"
  }
  LASSPROM = {
    :ID => "22",
    :Name => "[Side Quest] Prom-ises to Keep...",
    :QuestGiver => "Lass Lucy",
    :Stage1 => "Pretend to be Lucy's prom date.",
    :Location1 => "Cassiopeia Academy",
    :QuestDescription => "Through a series of lies you've ended up as Lucy's prom date! Help me keep up the charade until prom.",
    :RewardString => "???"
  }
  GOTOLAB = {
    :ID => "14",
    :Name => "Got to the lab",
    :QuestGiver => "Professor Ivy",
    :Stage1 => "Go to the professors lab.",
    :Location1 => "Professor Ivy's Lab",
    :QuestDescription => "The professor called you, Willow and Lara for \"something\", go to the lab to check it out.",
    :RewardString => "???"
  }
  GOTOMOM = {
    :ID => "15",
    :Name => "Show mom your new pokemon!",
    :QuestGiver => "Professor Ivy",
    :Stage1 => "Talk to mom and tell her about your new pokemon.",
    :Location1 => "Professor Ivy's Lab",
    :QuestDescription => "You got a new pokemon and are going to go on your very own Pokemon adventure! But you should probobly tell mom about it before you go.",
    :RewardString => "???"
  }
  
  # Here's the simplest example of a single-stage quest with everything specified
  Quest1 = {
    :ID => "1",
    :Name => "Introductions",
    :QuestGiver => "Professor Ivy",
    :Stage1 => "Look for clues.",
    :Location1 => "Lappet Town",
    :QuestDescription => "Some wild Pokémon stole a little boy's favourite toy. Find those troublemakers and help him get it back.",
    :RewardString => "Something shiny!"
  }
  
  # Here's an extension of the above that includes multiple stages
  Quest2 = {
    :ID => "2",
    :Name => "Introductions",
    :QuestGiver => "Little Boy",
    :Stage1 => "Look for clues.",
    :Stage2 => "Follow the trail.",
    :Stage3 => "Catch the troublemakers!",
    :Location1 => "Lappet Town",
    :Location2 => "Viridian Forest",
    :Location3 => "Route 3",
	:StageLabel1 => "1",
	:StageLabel2 => "2",
    :QuestDescription => "Some wild Pokémon stole a little boy's favourite toy. Find those troublemakers and help him get it back.",
    :RewardString => "Something shiny!"
  }
  
  # Here's an example of a quest with lots of stages that also doesn't have a stage location defined for every stage
  Quest3 = {
    :ID => "3",
    :Name => "Last-minute chores",
    :QuestGiver => "Grandma",
    :Stage1 => "A",
    :Stage2 => "B",
    :Stage3 => "C",
    :Stage4 => "D",
    :Stage5 => "E",
    :Stage6 => "F",
    :Stage7 => "G",
    :Stage8 => "H",
    :Stage9 => "I",
    :Stage10 => "J",
    :Stage11 => "K",
    :Stage12 => "L",
    :Location1 => "nil",
    :Location2 => "nil",
    :Location3 => "Dewford Town",
    :QuestDescription => "Isn't the alphabet longer than this?",
    :RewardString => "Chicken soup!"
  }
  
  # Here's an example of not defining the quest giver and reward text
  Quest4 = {
    :ID => "4",
    :Name => "A new beginning",
    :QuestGiver => "nil",
    :Stage1 => "Turning over a new leaf... literally!",
    :Stage2 => "Help your neighbours.",
    :Location1 => "Milky Way",
    :Location2 => "nil",
    :QuestDescription => "You crash landed on an alien planet. There are other humans here and they look hungry...",
    :RewardString => "nil"
  }
  
  # Other random examples you can look at if you want to fill out the UI and check out the page scrolling
  Quest5 = {
    :ID => "5",
    :Name => "All of my friends",
    :QuestGiver => "Barry",
    :Stage1 => "Meet your friends near Acuity Lake.",
    :QuestDescription => "Barry told me that he saw something cool at Acuity Lake and that I should go see. I hope it's not another trick.",
    :RewardString => "You win nothing for giving in to peer pressure."
  }
  
  Quest6 = {
    :ID => "6",
    :Name => "The journey begins",
    :QuestGiver => "Professor Oak",
    :Stage1 => "Deliver the parcel to the Pokémon Mart in Viridian City.",
    :Stage2 => "Return to the Professor.",
    :Location1 => "Viridian City",
    :Location2 => "nil",
    :QuestDescription => "The Professor has entrusted me with an important delivery for the Viridian City Pokémon Mart. This is my first task, best not mess it up!",
    :RewardString => "nil"
  }
  
  Quest7 = {
    :ID => "7",
    :Name => "Close encounters of the... first kind?",
    :QuestGiver => "nil",
    :Stage1 => "Make contact with the strange creatures.",
    :Location1 => "Rock Tunnel",
    :QuestDescription => "A sudden burst of light, and then...! What are you?",
    :RewardString => "A possible probing."
  }
  
  Quest8 = {
    :ID => "8",
    :Name => "These boots were made for walking",
    :QuestGiver => "Musician #1",
    :Stage1 => "Listen to the musician's, uhh, music.",
    :Stage2 => "Find the source of the power outage.",
    :Location1 => "nil",
    :Location2 => "Celadon City Sewers",
    :QuestDescription => "A musician was feeling down because he thinks no one likes his music. I should help him drum up some business."
  }
  
  Quest9 = {
    :ID => "9",
    :Name => "Got any grapes?",
    :QuestGiver => "Duck",
    :Stage1 => "Listen to The Duck Song.",
    :Stage2 => "Try not to sing it all day.",
    :Location1 => "YouTube",
    :QuestDescription => "Let's try to revive old memes by listening to this funny song about a duck wanting grapes.",
    :RewardString => "A loss of braincells. Hurray!"
  }
  
  Quest10 = {
    :ID => "10",
    :Name => "Singing in the rain",
    :QuestGiver => "Some old dude",
    :Stage1 => "I've run out of things to write.",
    :Stage2 => "If you're reading this, I hope you have a great day!",
    :Location1 => "Somewhere prone to rain?",
    :QuestDescription => "Whatever you want it to be.",
    :RewardString => "Wet clothes."
  }
  
  Quest11 = {
    :ID => "11",
    :Name => "When is this list going to end?",
    :QuestGiver => "Me",
    :Stage1 => "When IS this list going to end?",
    :Stage2 => "123",
    :Stage3 => "456",
    :Stage4 => "789",
    :QuestDescription => "I'm losing my sanity.",
    :RewardString => "nil"
  }
  
  Quest12 = {
    :ID => "12",
    :Name => "The laaast melon",
    :QuestGiver => "Some stupid dodo",
    :Stage1 => "Fight for the last of the food.",
    :Stage2 => "Don't die.",
    :Location1 => "A volcano/cliff thing?",
    :Location2 => "Good advice for life.",
    :QuestDescription => "Tea and biscuits, anyone?",
    :RewardString => "Food, glorious food!"
  }

end
