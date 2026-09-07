INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
    -- Base Set
    (70,  'Ninetales',   'Fox Pokémon',          'Fire Blast',     '80',   'Water',     NULL,       '2',  12, 1, 2, 2),
    (50,  'Vulpix',      'Fox Pokémon',          'Confuse Ray',    '10',   'Water',     NULL,       '1',  68, 1, 2, 1),
    (60,  'Poliwhirl',   'Tadpole Pokémon',      'Amnesia',        '20',   'Lightning', NULL,       '2',  39, 1, 3, 2),
    (90,  'Poliwrath',   'Tadpole Pokémon',      'Water Gun',      '30+',  'Lightning', NULL,       '3',  13, 1, 3, 3),
    (40,  'Poliwag',     'Tadpole Pokémon',      'Water Gun',      '10+',  'Lightning', NULL,       '1',  60, 1, 3, 1),
    (50,  'Caterpie',    'Worm Pokémon',         'String Shot',    '10',   'Fire',      NULL,       '1',  45, 1, 1, 1),
    (60,  'Metapod',     'Cocoon Pokémon',       'Stiffen',        '—',    'Fire',      NULL,       '2',  54, 1, 1, 2),
    (80,  'Butterfree',  'Butterfly Pokémon',    'Whirlwind',      '20',   'Fire',      NULL,       '1',  33, 2, 1, 3),
    (50,  'Pidgey',      'Tiny Bird Pokémon',    'Gust',           '10',   'Lightning', 'Fighting', '1',  57, 1, 7, 1),
    (80,  'Pidgeotto',   'Bird Pokémon',         'Whirlwind',      '20',   'Lightning', 'Fighting', '1',  22, 1, 7, 2),

    -- Jungle
    (70,  'Pinsir',      'Stag Beetle Pokémon',  'Guillotine',     '50',   'Fire',      NULL,       '2',  9,  2, 1, 1),
    (60,  'Oddish',      'Weed Pokémon',         'Stun Spore',     '20',   'Fire',      NULL,       '1',  58, 2, 1, 1),
    (70,  'Gloom',       'Weed Pokémon',         'Poisonpowder',   '30',   'Fire',      NULL,       '2',  36, 2, 1, 2),
    (80,  'Vileplume',   'Flower Pokémon',       'Petal Dance',    '40x',  'Fire',      NULL,       '2',  15, 2, 1, 3),
    (50,  'Cubone',      'Lonely Pokémon',       'Bone Attack',    '20',   'Grass',     NULL,       '1',  50, 2, 6, 1),
    (70,  'Marowak',     'Bone Keeper Pokémon',  'Bonemerang',     '30x',  'Grass',     NULL,       '2',  39, 2, 6, 2),
    (60,  'Rhyhorn',     'Spikes Pokémon',       'Horn Attack',    '30',   'Grass',     NULL,       '2',  61, 2, 6, 1),
    (100, 'Rhydon',      'Drill Pokémon',        'Horn Attack',    '50',   'Grass',     NULL,       '3',  45, 2, 6, 2),
    (60,  'Exeggcute',   'Egg Pokémon',          'Hypnosis',       '10',   'Fire',      NULL,       '1',  52, 2, 1, 1),
    (80,  'Exeggutor',   'Coconut Pokémon',      'Teleport',       '20',   'Fire',      NULL,       '2',  35, 2, 1, 2),

    -- Fossil
    (70,  'Graveler',    'Rock Pokémon',         'Rock Throw',     '40',   'Grass',     NULL,       '2',  37, 3, 6, 2),
    (100, 'Golem',       'Megaton Pokémon',      'Selfdestruct',   '100',  'Grass',     NULL,       '4',  36, 3, 6, 3),
    (60,  'Geodude',     'Rock Pokémon',         'Tackle',         '20',   'Grass',     NULL,       '1',  46, 3, 6, 1),
    (80,  'Magneton',    'Magnet Pokémon',       'Thunder Wave',   '30',   'Fighting',  NULL,       '2',  11, 3, 4, 2),
    (40,  'Magnemite',   'Magnet Pokémon',       'Thunder Wave',   '10',   'Fighting',  NULL,       '1',  53, 3, 4, 1),
    (70,  'Muk',         'Sludge Pokémon',       'Sludge',         '30',   'Psychic',   NULL,       '2',  13, 3, 5, 2),
    (50,  'Grimer',      'Sludge Pokémon',       'Poison Gas',     '10',   'Psychic',   NULL,       '1',  48, 3, 5, 1),
    (80,  'Hypno',       'Hypnosis Pokémon',     'Prophecy',       '—',    'Psychic',   NULL,       '2',  23, 3, 5, 2),
    (60,  'Drowzee',     'Hypnosis Pokémon',     'Pound',          '10',   'Psychic',   NULL,       '1',  49, 3, 5, 1),
    (90,  'Raichu',      'Mouse Pokémon',        'Thunder',        '60',   'Fighting',  NULL,       '2',  14, 3, 4, 2);
