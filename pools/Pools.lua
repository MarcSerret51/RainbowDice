local M = {}
M.RED_POOL = {
    554, --2Spooky
    647, -- 4.5 volts
    230, --abbadon
    706, --abyss
    641, --akeldama
    65, --anarchist coockbook
    214, --anemic
    511, --angry fly
    130, --a pony
    443, --apple
    672, --a pound of flesh
    699, --azazel rage
    272, --bbf
    506, --backstabber
    704, --berserk
    247, --bff
    391, --betrayal
    616, --birds eye
    119, --blood bag
    254, --blood clot
    614, --blood bombs
    565, --blood puppy
    157, --bloody lust
    509, --bloodshot eye
    186, --blood rights
    695, --bloody gust
    607, --boiled baby
    629, --bot fly
    513, --bozo
    646, --brimstone bombs
    514, --broken modem
    118, --brimstone
    412, --cambion conception
    671, --candy heart
    208, --champion belt
    73, --cube of meat
    644, --consolation price
    466, --contagion
    453, --compound fracture
    678, --C section
    48, --cupids arrow
    166, --D20
    705, --dark arts
    481, --dataminer
    373, --dead eye
    236, --e coli
    409, --empty vessel
    676, --empty heart
    558, --eye sore
    711, --flip
    654, --false PHD
    572, --eye of the ocultist
    700, --echo chamber
    462, --eye of the belial
    703, --Esau JR
    531, --haemolacria
    728, --Gello
    269, --headless baby
    724, --Hypercoagulation
    276, --isaacs heart
    440, --kidney stone
    421, --kidney bean
    40, --kamikaze
    520, --jumper cables
    560, --it hurts
    135, --IV bag
    694, --heartbreak
    573, --immaculate heart
    684, --hungry soul
    726, --Hemoptysis
    167, --arlequin baby
    637, --knockout drops
    611, --larynx
    435, --lil loki
    96, -- lil CHAD
    679, -- lil abbadon
    15, -- <3
    332, --lazarus rags
    82, --Lord of the Pit
    411, --lusty blood
    12, -- magic mushroom
    53, --magneto
    394, --marked
    399, --maw of the void
    193, --meat!
    483, --mama mega
    176, --stem cells
    49, --shoop da whoop
    64, --steam sale
    159, --spirit of the night
    196, --squeezy
    723, --spindown dice
    623, --sharp key
    9, --skatole
    67, --sister maggy
    292, --satanic bible
    669, --sausage
    253, --magic scab
    289, --red candle
    692, --sanguine blood
    536, --sacrifice altar
    182, --sacred heart
    172, --sac dagger
    541, --marrow
    441, --mega blast
    618, --rotten tomato
    72, --rosary
    137, --remote detonator
    621, --red stew
    223, --pyromaniac
    722, --anima sola
    360, --incubus
    580, --red key
    475, --plan C
    529, --Pop!
    177, --portable slot
    51, --pentagram
    650, --plum flute
    606, --oculus rift
    544, --pointy rib
    515, --mistery gift
    109, --money equals power
    31, --moms pipstick
    110, --moms contact
    262, --missing page 2
    402, --chaos
}
M.PINK_PURPLE_POOL = {
    191, --3 dollar bill
    493, --adrenaline
    369, --continuum
    497, --camo undies
    512, --black hole
    226, --black lotus
    78, --book of revelations
    469, --depression
    638, --eraser
    649, --fruity plum
    432, --glitter bombs
    70, --growth hormones
    133, --guppy pawn
    212, --guppy collar
    681, --lil portal
    439, --moms box
    312, --maggys bow
}
M.ORANGE_YELLOW_POOL = {
    491, --acid baby
    228, --moms perfume
    582, --rocket in a jar
    689, --glitched crown
    26, --rotten meat
    357, --box of friends
    665, --guppy eye
    202, --midas touch
    206, --the gillotine
    604, --moms bracalet
    546, --dadds ring
    4, --crickets head
    625, --mega mush
    201, -- mom bottle of pills
    555, -- golden razor
}
M.GRAY_WHITE_POOL = {
    245, --20/20
    359, --8 inch nails
    683, --bone spurs
    237, --death touch'
    347, --diplo
    113, --demons baby
    185, --dead dove
    489, -- D Infinity
    416, --deep pockets
    74, --quarter
    310, --eve mascara
    701, --isaac tomb
    311, --judash shadow
    548, --jaw bone
    434, --jar of flies
    10, --halo of flies
    201, -- iron bar
    87, --lokis horns
    5, --my reflection
    77, --my little unicorn
    298, --unnicorn stump
    3, --spoon bender
    708,--stapler
    562, --rock bottom

}
M.BROWN_FLESH_POOL = {
    354, --crackjacks
    427, --minecrafter
    510, --delirious
    173, --mitre
    234, --infestation 2
    577, --damocles
    688, --inner child
    729, --decap attack
    85, --deck of cards
    125, --dead sea scrolls
    574, --monstrance
    115, --ouija board
    123, --monster manuel
    680, --montezuma revenge
    370, --mr dolly
    281, --punching bag
    454, --polidactilia
    539, --mistery egg
    567, --paschal candle
    570, --playdough cookie
    636, --R key
    446, --dead tooth
    479, --smelter
    424, --sackhead
    143, --speed ball
    500, --sack of sacks
    534, --school bag
    691, --sacred orb
    24, --dessert
    530, --death list
    576, --dirty mind
    456, --midnight snack
    114, --moms knife
    39, --moms bra
    488, --metronome
    447, --linger bean
    22, --lunch
    46, --lucky foot
    537, --lil spewer
    384, --lil gurdy
    471, --lil monstro
    525, --leprosy
    615, --lil dumpy
    719, --keepers box
    538, --marbles
    88, --little chubby
    486, --dull razor
    658, --giant cell
    112, --guardian angel
    215, --goat head
    501, --greeds gullet
    398, --gods flesh
    418, --fruits cake
    187, --guppys hairball
    557, --fortune cookie
    168, --epic fetus
    23, --dinner
    52, --doctor fetus
    336, --dead onion
    224, --cricket body
    285, --D10
    241, --contract from below
    457, --cone head
    69, --chocolate milk
    154, --chemical peel
    480, --compost
    209, --butt bombs
    144, --bum friend
    362, --lil chest
    385, --bumbo
    518, --buddy in a box
    504, --brown nugget
    198, --box
    624, --booster pack
    7, --blood of the martir
    619, --birthright
    664, --binge eater
    279, --big fan
    710, --bag of crafting
    473, --big chubby
    217, --moms wig
    660, --card reading
    334, --match book
    401, --explosivo
    29, --moms underwear
    252, --little baggy
    685, --jar of wisps
    204, --fany pack
    250, --bogo bombs
    188, -- THE MADAFAKING ABEL!!!
    346, -- a snack
    725, -- IBS
    184, --holy grail
    256, --hot bombs
    203, --humble bundle
    601, --act of contriction
    322, --mongo baby
    229, --monstros lung
    221, --rubber cement
    121, --odd mushrom large
    120, --odd mushrom slim
    147, --notched axe
    487, --potato peeler
    171, --spider butt
    175, --dads key
    16, --raw liver
    523, --moving box
    251, --started deck
    642, --magic skin
    343, --latch key
    485, --crooked penny
    195, --moms coin purse
    148, --infestation
    527, --mr me
    207, --ball of bandages
    458, --belly button
    677, --astral projection
    136, --best friend
    467, --finger
    351, --mega bean
    227, --piggy bank
}
M.BLUE_POOL = {
    651, --bethelen
    516, --sprinkler
    588, --sol
    674, --spirit shakeless
    211, --spiderbaby
    643, --revelation
    306, --sagittarius
    376, --restock
    448, --shard of glass
    597, --neptunus
    425, --night light
    220, --sad bombs
    673, --redemption
    686, --soul locket
    553, --mucomircosis
    507, --sharp straw
    169, --poly
    280, --sissy long legs
    428, --pjs
    593, --mars
    318, --gemini
}
return M