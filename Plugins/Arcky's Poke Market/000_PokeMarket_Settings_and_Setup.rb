module APMSettings
  # By default these are set to the Pocket names, you can name them anything you want but you should respect the Pocket Order.
  # Unless you've modified this. Not all Categories are shown each time, for example, "Key Items" would probably never be shown (these are filtered out by the script by default).
  CategoryNames = PokemonBag.pocket_names.map { |pocket| pocket.to_s }

  CustomCategoryNames = {
    "Evolution Stones" => {
      :items => [:FIRESTONE, :THUNDERSTONE, :WATERSTONE, :LEAFSTONE, :MOONSTONE, :SUNSTONE, :DUSKSTONE, :DAWNSTONE, :SHINYSTONE, :ICESTONE],
      :order => 11
    },
    "Type Plates" => {
      :items => [:FLAMEPLATE, :SPLASHPLATE, :ZAPPLATE, :MEADOWPLATE, :ICICLEPLATE, :FISTPLATE, :TOXICPLATE, :EARTHPLATE, :SKYPLATE, :MINDPLATE, :INSECTPLATE, :STONEPLATE, :SPOOKYPLATE, :DRACOPLATE, :DREADPLATE, :IRONPLATE, :PIXIEPLATE],
      :order => 12
    },
    "Type Gems" => {
      :items => [:FIREGEM, :WATERGEM, :ELECTRICGEM, :GRASSGEM, :ICEGEM, :FIGHTINGGEM, :POISONGEM, :GROUNDGEM, :FLYINGGEM, :PSYCHICGEM, :BUGGEM, :ROCKGEM, :GHOSTGEM, :DRAGONGEM, :DARKGEM, :STEELGEM, :FAIRYGEM, :NORMALGEM],
      :order => 13
    },
    "Held Items" => {
      :items => [
  :BRIGHTPOWDER, :MACHOBRACE, :QUICKCLAW,
  :SOOTHEBELL, :CHOICEBAND, :KINGSROCK, :SILVERPOWDER,
  :AMULETCOIN, :CLEANSETAG, :SMOKEBALLBALL, :EVERSTONE, :LUCKYEGG, :SCOPELENS,
  :METALCOAT, :LEFTOVERS, :LIGHTBALL, :SOFTSAND,
  :HARDSTONE, :MIRACLESEED, :BLACKGLASSES, :BLACKBELT, :MAGNET,
  :MYSTICWATER, :SHARPBEAK, :POISONBARB, :NEVERMELTICE, :SPELLTAG,
  :TWISTEDSPOON, :CHARCOAL, :DRAGONFANG, :SILKSCARF,
  :SHELLBELL, :WIDELENS, :MUSCLEBAND, :WISEGLASSES, :EXPERTBELT,
  :LIGHTCLAY, :LIFEORB, :POWERHERB, :TOXICORB, :FLAMEORB,
  :ZOOMLENS, :METRONOME, :IRONBALL, :LAGGINGTAIL, :DESTINYKNOT,
  :BLACKSLUDGE, :ICYROCK, :SMOOTHROCK, :HEATROCK, :DAMPROCK,
  :CHOICESCARF, :STICKYBARB, :SHEDSHELL, :BIGROOT,
  :CHOICESPECS, :RAZORCLAW, :RAZORFANG,
  :EVIOLITE, :ROCKYHELMET, :RINGTARGET,
  :PUNCHINGGLOVE, :COVERTCLOAK, :LOADEDDICE, :ABILITYSHIELD, :CLEARAMULET, :BERRYJUICE, :WHITEHERB, :MENTALHERB,
  :POWERHERB, :ABSORBBULB, :CELLBATTERY, :LUMINOUSMOSS, :SNOWBALL,
  :WEAKNESSPOLICY, :BLUNDERPOLICY, :THROATSPRAY, :EJECTBUTTON, :EJECTPACK,
  :REDCARD, :FOCUSSASH, :AIRBALLOON, :ELECTRICSEED, :GRASSYSEED,
  :MISTYSEED, :PSYCHICSEED, :ROOMSERVICE, :MIRRORHERB
],
      :order => 2
},
    "General Items" => {
      :items => [
  :SUPERREPEL, :MAXREPEL, :POTION, :SUPERPOTION, :HYPERPOTION, :MAXPOTION, :FULLRESTORE, :SACREDASH,
  :AWAKENING, :ANTIDOTE, :BURNHEAL, :PARALYZEHEAL, :ICEHEAL, :FULLHEAL,
  :PEWTERCRUNCHIES, :RAGECANDYBAR, :LAVACOOKIE, :OLDGATEAU, :CASTELIACONE,
  :LUMIOSEGALETTE, :BIGMALASADA, :REVIVE, :MAXREVIVE,
  :SWEETHEART, :FRESHWATER, :SODAPOP, :LEMONADE, :MOOMOOMILK,
  :ETHER, :MAXETHER, :ELIXIR, :MAXELIXIR, :HEALTHFEATHER, :MUSCLEFEATHER, :RESISTFEATHER, :GENIUSFEATHER, :CLEVERFEATHER, :SWIFTFEATHER,
  :LONELYMINT, :ADAMANTMINT, :NAUGHTYMINT, :BRAVEMINT, :BOLDMINT, :IMPISHMINT,
  :LAXMINT, :RELAXEDMINT, :MODESTMINT, :MILDMINT, :RASHMINT, :QUIETMINT,
  :CALMMINT, :GENTLEMINT, :CAREFULMINT, :SASSYMINT, :TIMIDMINT, :HASTYMINT,
  :JOLLYMINT, :NAIVEMINT, :SERIOUSMINT, :HPUP, :PROTEIN, :IRON, :CALCIUM, :ZINC, :CARBOS,
  :ABILITYCAPSULE, :ABILITYPATCH
],
      :order => 3
    },
"TM's" => {
      :items => [
  :TM001, :TM002, :TM003, :TM004, :TM005, :TM006, :TM007, :TM008, :TM009, :TM010,
  :TM011, :TM012, :TM013, :TM014, :TM015, :TM016, :TM017, :TM018, :TM019, :TM020,
  :TM021, :TM022, :TM023, :TM024, :TM025, :TM026, :TM027, :TM028, :TM029, :TM030,
  :TM031, :TM032, :TM033, :TM034, :TM035, :TM036, :TM037, :TM038, :TM039, :TM040,
  :TM041, :TM042, :TM043, :TM044, :TM045, :TM046, :TM047, :TM048, :TM049, :TM050,
  :TM051, :TM052, :TM053, :TM054, :TM055, :TM056, :TM057, :TM058, :TM059, :TM060,
  :TM061, :TM062, :TM063, :TM064, :TM065, :TM066, :TM067, :TM068, :TM069, :TM070,
  :TM071, :TM072, :TM073, :TM074, :TM075, :TM076, :TM077, :TM078, :TM079, :TM080,
  :TM081, :TM082, :TM083, :TM084, :TM085, :TM086, :TM087, :TM088, :TM089, :TM090,
  :TM091, :TM092, :TM093, :TM094, :TM095, :TM096, :TM097, :TM098, :TM099, :TM100,
  :TM101, :TM102, :TM103, :TM104, :TM105, :TM106, :TM107, :TM108, :TM109, :TM110,
  :TM111, :TM112, :TM113, :TM114, :TM115, :TM116, :TM117, :TM118, :TM119, :TM120,
  :TM121, :TM122, :TM123, :TM124, :TM125, :TM126, :TM127, :TM128, :TM129, :TM130,
  :TM131, :TM132, :TM133, :TM134, :TM135, :TM136, :TM137, :TM138, :TM139, :TM140,
  :TM141, :TM142, :TM143, :TM144, :TM145, :TM146, :TM147, :TM148, :TM149, :TM150,
  :TM151, :TM152, :TM153, :TM154, :TM155, :TM156, :TM157, :TM158, :TM159, :TM160,
  :TM161, :TM162, :TM163, :TM164, :TM165, :TM166, :TM167, :TM168, :TM169, :TM170,
  :TM171, :TM172
],
      :order => 4
    }
  }

  BadgesForItems = {
    1 => [:GREATBALL, :SUPERPOTION, :ANTIDOTE, :PARALYZEHEAL, :AWAKENING, :BURNHEAL, :ICEHEAL, :REPEL, :ESCAPEROPE],
    3 => [:HYPERPOTION, :SUPERREPEL, :REVIVE],
    5 => [:ULTRABALL, :FULLHEAL, :MAXREPEL],
    7 => [:MAXPOTION],
    8 => [:FULLRESTORE]
  }

  Discounts = {
    :COUPONA => {
      27 => [0, 3, 6, 8, -10],
      28 => [0, -2, -5]
    },
    26 => [0, 1, 4, 7, 11],
    165 => [0, -50],
    172 => [0, 94],
    :COUPONB => {
      29 => [0, -50]
    }
  }

  BonusItems = {
    :POKEBALL => {
      :amount => 5,
      :item => :PREMIERBALL
    },
    :GREATBALL => {
      :amount => 10,
      :item => [
        [:GREATBALL, 80],
        [:PREMIERBALL, 20]
      ]
    },
    :ULTRABALL => {
      :amount => 5,
      :item => {
        :PREMIERBALL => {
          :amount => 3
        },
        :MASTERBALL => {
          :chance => 0.1
        },
        :ULTRABALL => {
          :amount => 2,
          :chance => 5
        }
      }
    },
    :POTION => {
      :amount => 5,
      :item => {
        :ANTIDOTE => {
          :amount => 2
        },
        :PARALYZEHEAL => {
          :amount => 2,
          :chance => 20
        },
        :ICEHEAL => {
          :amount => 2,
          :chance => 20
        },
        :BURNHEAL => {
          :amount => 2
        },
        :FULLHEAL => {
          :chance => 5
        }
      }
    },
    :FULLHEAL => {
      :amount => 10,
      :item => {
        :FULLHEAL => {
          :amount => 3
        }
      }
    }
  }

  BillSwitch = 99

  ProSeller = {
    # Text when talking to them. This is the default one.
    IntroText: [],
    # Text when choosing to buy item. (optional: If you make this empty( [] ), you'll go to the buy screen directly.)
    CategoryText: [], # or CategoryText: [],
    # Text when choosing amount of item. {1} = item name.
    BuyItemAmount: ["So how many {1}?", "How many {1} would you like?"],
    # Text when choosing amount of item with discount. {1} = item name {2} = discount price {3} = original price.
    BuyItemAmountDiscount: ["There's a discount on {1}, they're {2} instead of {3}. How many would you like?"],
    # Text when choosing amount of item with overcharge. {1} = item name {2} = overcharge price {3} = original price.
    BuyItemAmountOvercharge: ["There's overcharge on {1}, you must pay {2} instead of {3}. So how many?"],
    # Text when buying 1 of an item. {1} = item vowel {2} = item name {3} = price.
    BuyItem: ["So you want {1} {2}?\nIt'll be {3}. All right?", "So you would like to buy {1} {2}?\nThat's going to cost you {3}!"],
    # Text when buying 2 or more of an item. {1} = amount {2} = item name (plural) {3} = price.
    BuyItemMult: ["So you want {1} {2}?\nThey'll be {3}. All right?"],
    # Text when buying important item (that you can only buy 1 off). {1} = item name {2} = price.
    BuyItemImportant: ["So you want {1}?\nIt'll be {2} . All right?"],
    # Text when wanted item is out of stock. {1} = item name (plural) {2} = time in days (tomorrow, in 2 days, in x days, in a week, next week etc.)
    BuyOutOfStock: ["We're really sorry, this item is currently out of stock. Come back {2}!", "We're sorry but we don't have any {1} left. Come back {2}!", "Come back {2} when we have more {1}."],
    # Text when bought item.
    BuyThanks: ["Here you are! Thank you!"],
    # Text when x or more of a kind of item is bought and is defined in BonusItems Setting. {1} = Bonus Item(s) name(s).
    BuyBonusMult: ["And have {1} on the house!"],
    # Text when you don't have enough money to buy x item(s).
    NotEnoughMoney: ["You don't have enough money."],
    # Text when you don't have enough room in your bag. (Only used if you have an item limit).
    NoRoomInBag: ["You have no room in your Bag."],
    # Text when selecting an item to sell. {1} = item name
    SellItemAmount: ["How many {1} would you like to sell?"],
    # Text when confirming amount of selected item to sell. {1} = price
    SellItem: ["I can pay {1}.\nWould that be OK?"],
    # Text when unable to sell selected item. {1} = item name
    CantSellItem: ["Oh, no. I can't buy {1}."],
    # Text when returning to menu to choose either buying, selling or exit.
    MenuReturnText: ["Is there anything else I can do for you?"],
    # Text when the NPC is checking the items in the basket. {1} = list of each amount and item {2} = total price to pay.
    BillCheckOut: ["Your basket contains {1} which comes to a total of {2}, please."],
    # Text when exiting.
    OutroText: ["Do come again!", "Thank you, I hope to see you again.", "Thank you for your purchase, come again!"],
    OutroTextSaturday: ["Thank you for your purchase. \nEnjoy the rest of your Saturday."]
  }

  BPSeller = {
    # Text when talking to them. This is the default one.
    IntroText: ["Our shop refreshes daily! Anything catch your eye?"],
    # Text when choosing to buy item. (optional: If you make this empty( [] ), you'll go to the buy screen directly.)
    CategoryText: [], # or CategoryText: [],
    # Text when choosing amount of item. {1} = item name.
    BuyItemAmount: ["So how many {1}?", "How many {1} would you like?"],
    # Text when choosing amount of item with discount. {1} = item name {2} = discount price {3} = original price.
    BuyItemAmountDiscount: ["There's a discount on {1}, they're {2} instead of {3}. How many would you like?"],
    # Text when choosing amount of item with overcharge. {1} = item name {2} = overcharge price {3} = original price.
    BuyItemAmountOvercharge: ["There's overcharge on {1}, you must pay {2} instead of {3}. So how many?"],
    # Text when buying 1 of an item. {1} = item vowel {2} = item name {3} = price.
    BuyItem: ["So you want {1} {2}?\nIt'll be {3}. All right?", "So you would like to buy {1} {2}?\nThat's going to cost you {3}!"],
    # Text when buying 2 or more of an item. {1} = amount {2} = item name (plural) {3} = price.
    BuyItemMult: ["So you want {1} {2}?\nThey'll be {3}. All right?"],
    # Text when buying important item (that you can only buy 1 off). {1} = item name {2} = price.
    BuyItemImportant: ["So you want {1}?\nIt'll be {2} . All right?"],
    # Text when wanted item is out of stock. {1} = item name (plural) {2} = time in days (tomorrow, in 2 days, in x days, in a week, next week etc.)
    BuyOutOfStock: ["We're really sorry, this item is currently out of stock. Come back {2}!", "We're sorry but we don't have any {1} left. Come back {2}!", "Come back {2} when we have more {1}."],
    # Text when bought item.
    BuyThanks: ["Here you are! Thank you!"],
    # Text when x or more of a kind of item is bought and is defined in BonusItems Setting. {1} = Bonus Item(s) name(s).
    BuyBonusMult: ["And have {1} on the house!"],
    # Text when you don't have enough money to buy x item(s).
    NotEnoughMoney: ["You don't have enough money."],
    # Text when you don't have enough room in your bag. (Only used if you have an item limit).
    NoRoomInBag: ["You have no room in your Bag."],
    # Text when selecting an item to sell. {1} = item name
    SellItemAmount: ["How many {1} would you like to sell?"],
    # Text when confirming amount of selected item to sell. {1} = price
    SellItem: ["I can pay {1}.\nWould that be OK?"],
    # Text when unable to sell selected item. {1} = item name
    CantSellItem: ["Oh, no. I can't buy {1}."],
    # Text when returning to menu to choose either buying, selling or exit.
    MenuReturnText: ["Is there anything else you want?"],
    # Text when the NPC is checking the items in the basket. {1} = list of each amount and item {2} = total price to pay.
    BillCheckOut: ["Your basket contains {1} which comes to a total of {2}, please."],
    # Text when exiting.
    OutroText: ["Do come again!", "Thank you, I hope to see you again.", "Thank you for your purchase, come again!"],
    OutroTextSaturday: ["Thank you for your purchase. \nEnjoy the rest of your Saturday."]
  }

  GirlSeller = {
    # Text when talking to them. This is the default one.
    IntroText: ["You buyin' something?"],
    # Text when choosing to buy item. (optional: If you make this empty( [] ), you'll go to the buy screen directly.)
    CategoryText: ["Items are like, sorted or whatever. Pick a category, I guess."], # or CategoryText: [],
    # Text when choosing amount of item. {1} = item name.
    BuyItemAmount: ["How many {1}?"],
    # Text when choosing amount of item with discount. {1} = item name {2} = discount price {3} = original price.
    BuyItemAmountDiscount: ["Um... There's some like discount on {1}. They're {2} instead of {3}. How many you want?"],
    # Text when choosing amount of item with overcharge. {1} = item name {2} = overcharge price {3} = original price.
    BuyItemAmountOvercharge: [],
    # Text when buying 1 of an item. {1} = item vowel {2} = item name {3} = price.
    BuyItem: ["So you want {1} {2}? That'll be {3}."],
    # Text when buying 2 or more of an item. {1} = amount {2} = item name (plural) {3} = price.
    BuyItemMult: ["So you want {1} {2}?\nThey'll be {3}. You good with that?"],
    # Text when buying important item (that you can only buy 1 off). {1} = item name {2} = price.
    BuyItemImportant: ["{1} {2}? Fine. {3} total. You good with that?"],
    # Text when wanted item is out of stock. {1} = item name (plural) {2} = time in days (tomorrow, in 2 days, in x days, in a week, next week etc.)
    BuyOutOfStock: ["We're out of those. Come back {2} or something, I dunno."],
    # Text when bought item.
    BuyThanks: ["Here. Please come again or whatever."],
    # Text when x or more of a kind of item is bought and is defined in BonusItems Setting. {1} = Bonus Item(s) name(s).
    BuyBonusMult: ["Oh yeah, take {1} too. It's free or something."],
    # Text when you don't have enough money to buy x item(s).
    NotEnoughMoney: ["You're broke. Come back when you have money."],
    # Text when you don't have enough room in your bag. (Only used if you have an item limit).
    NoRoomInBag: ["You have no room in your Bag."],
    # Text when selecting an item to sell. {1} = item name
    SellItemAmount: ["How many {1} are you getting rid of?"],
    # Text when confirming amount of selected item to sell. {1} = price
    SellItem: ["Uh... I can give {1} for that."],
    # Text when unable to sell selected item. {1} = item name
    CantSellItem: ["It says I can't buy {1} from you. Don't ask me why."],
    # Text when returning to menu to choose either buying, selling or exit.
    MenuReturnText: ["You need something else or what?"],
    # Text when the NPC is checking the items in the basket. {1} = list of each amount and item {2} = total price to pay.
    BillCheckOut: ["Your total is... on the screen, I'm not, like, a calculator, you can read it."],
    # Text when exiting.
    OutroText: ["Come back soon... or don't..."],
    OutroTextSaturday: ["Come back soon... or don't... oh and <i>Have a good saterday</i> It says I'm supposed to read that to all my fucking customers today, can you believe it?"]
  }

  ShelfOne = {
    # Text when talking to a shelf in the mart.
    IntroShelf: ["Is there anything catching your eye?", "How nice, you can buy items from the shelf now too! :P"],
    # Text when selecting an item that you haven't added to your basket yet. {1} = item name
    ShelfAmountItem: ["How many {1} would you like to add to your basket?"],
    # Text when selecting an item that you have already x amount of in your basket. {1} = item name {2} = amount of that item.
    ShelfChangeAmountItem: ["You currently have {2} {1} in your basket, change it to how many?"],
    # Text when selecting an item that you have the max amount of in your basket (only when using item limits for that item). {1} item name
    ShelfLimitAmountItem: ["Your basket has all {1} in stock, change it to how many?"],
    # Text when selecting an item that is out of stock (after check out). {1} = item name (plural) {2} = time in days (tomorrow, in 2 days, in x days, in a week, next week etc.)
    ShelfOutOfStock: ["{1} are currently out of stock, come back {2}."],
    # Text when selecting an item that has a discount. {1} = item name
    ShelfItemAmountDiscount: ["There's a discount on {2}, how many would you like?"],
    # Text when selecting an item that has an overcharge. {1} = item name
    ShelfItemAmountOvercharge: ["There's an overcharge on {2}, how many would you like?"],
    # Text when selecting an item that you can't buy because you don't have enough money. {1} = currency {2} item name (plural)
    NotEnoughMoney: ["You don't have enough {1} to add any {2} to your basket."],
    # Text when selecting an item that you can't buy more off because you don't have enough money. {1} = currency {2} = item name (plural).
    NotEnoughMoneyItem: ["You are out of {1}. Change the quantity of {2} you have in your basket?"],
    # Text when changing amount of item that you couldn't buy more off because you don't have enough money. {1} = item name (plural)
    NotEnoughMoneyAmount: ["Change the amount of {1} in your basket to how many?"],
    # Text when increasing the amount of an item {1} = quantity {2} item name {3} bill increased by x amount.
    ShelfIncreaseAmountItem: ["You added {1} {2} to your basket. Your bill was increased by {3}", "{1} {2} have been added to your basket. Your bill was increased by {3}"],
    # Text when decreasing the amount of an item {1} = quantity {2} item name {3} bill decreased by x amount.
    ShelfDecreaseAmountItem: ["You took {1} {2} out of your basket. Your bill was decreased by {3}"],
    # Text when removing an item from your basket (changing the amount to 0). {1} = quantity {2} item name {3} bill decreased by x amount.
    ShelfRemoveAmountItem: ["You removed {1} {2} from you basket. Your bill was decreased by {3}", "{1} {2} were removed from your basket. Your bill has decrease by {3}"],
  }
end

# If it would be easier to setup stores here then you only need to add an event script line saying pbStore1 or whatever you called the method.
# Since you're more limited in space in the event, it could be easier to manage your stores here (or you can make .rb files for each store)
# For the different option Arguments, check the guide as it's explained in detail in there.

def pbSomeMart
  pbPokemonMart(["daily",
    [:POKEBALL, 10, 20], :GREATBALL, :ULTRABALL,
    :POTION, [:SUPERPOTION, 8, 12], [:HYPERPOTION, 5, 8], [:MAXPOTION, 2, 5],
    :FULLRESTORE, [:REVIVE, 1, 4],
    [:ANTIDOTE, 5], :PARALYZEHEAL, :AWAKENING, :BURNHEAL, :ICEHEAL,
    :FULLHEAL,
    :REPEL, :SUPERREPEL, :MAXREPEL,
    :ESCAPEROPE
  ], speech: "ProSeller", useCat: true)
end

def pbSomeMartGirl
  pbPokemonMart(["daily",
    [:POKEBALL, 10, 20], :GREATBALL, :ULTRABALL,
    :POTION, [:SUPERPOTION, 8, 12], [:HYPERPOTION, 5, 8], [:MAXPOTION, 2, 5],
    :FULLRESTORE, [:REVIVE, 1, 4],
    [:ANTIDOTE, 5], :PARALYZEHEAL, :AWAKENING, :BURNHEAL, :ICEHEAL,
    :FULLHEAL,
    :REPEL, :SUPERREPEL, :MAXREPEL,
    :ESCAPEROPE
  ], speech: "GirlSeller", useCat: false)
end

def pbBPMart
  pbPokemonMart($game_variables[154], speech: "BPSeller", discount: 172, useCat: true, currency: "bp", cantSell: true)
end

def pbBPMartPeramItemsLyra
  pbPokemonMart([:EXPSHARE, :CHARCOAL, :MIRACLESEED, :MYSTICWATER], speech: "BPSeller", discount: 172, useCat: true, currency: "bp", cantSell: true)
end


def pbSomeShelf
  pbShelfMart((141..146).map { |var_id| $game_variables[var_id] }, discount: 165)
end

def pbSomeShelf2
  pbShelfMart((147..152).map { |var_id| $game_variables[var_id] }, discount: 165)
end
