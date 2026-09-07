-- Lookups: collections, types, stages
-- Run after db_scripts/tables/001_card_table.sql

INSERT INTO tbl_collection (collectionsSetName, releaseDate, totalCardNumberInCollection)
VALUES
    ('Base Set', '1999-01-09', 102),
    ('Jungle',   '1999-06-16', 64),
    ('Fossil',   '1999-10-10', 62);

INSERT INTO tbl_type (typeName)
VALUES
    ('Grass'),
    ('Fire'),
    ('Water'),
    ('Lightning'),
    ('Psychic'),
    ('Fighting'),
    ('Colorless');

INSERT INTO tbl_stage (stageName)
VALUES
    ('Basic'),
    ('Stage 1'),
    ('Stage 2');

-- Base Set, Jungle and Fossil sample cards
-- collection_id: 1 Base Set, 2 Jungle, 3 Fossil
-- type_id: 1 Grass, 2 Fire, 3 Water, 4 Lightning, 5 Psychic, 6 Fighting, 7 Colorless
-- stage_id: 1 Basic, 2 Stage 1, 3 Stage 2

INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
    -- Base Set
    (120, 'Charizard',   'Flame Pokémon',        'Fire Spin',      '100',  'Water',     NULL,       '3',  4,  1, 2, 3),
    (100, 'Blastoise',   'Shellfish Pokémon',    'Hydro Pump',     '40+',  'Lightning', NULL,       '3',  2,  1, 3, 3),
    (60,  'Venusaur',    'Seed Pokémon',         'Solarbeam',      '60',   'Fire',      'Water',    '2',  15, 1, 1, 3),
    (40,  'Bulbasaur',   'Seed Pokémon',         'Leech Seed',     '20',   'Fire',      'Water',    '1',  44, 1, 1, 1),
    (50,  'Ivysaur',     'Seed Pokémon',         'Vine Whip',      '30',   'Fire',      'Water',    '2',  30, 1, 1, 2),
    (40,  'Charmander',  'Lizard Pokémon',       'Ember',          '30',   'Water',     NULL,       '1',  46, 1, 2, 1),
    (60,  'Charmeleon',  'Flame Pokémon',        'Flamethrower',   '50',   'Water',     NULL,       '2',  24, 1, 2, 2),
    (40,  'Squirtle',    'Tiny Turtle Pokémon',  'Bubble',         '20',   'Lightning', NULL,       '1',  63, 1, 3, 1),
    (60,  'Wartortle',   'Turtle Pokémon',       'Withdraw',       '30',   'Lightning', NULL,       '1',  42, 1, 3, 2),
    (40,  'Pikachu',     'Mouse Pokémon',        'Thunder Jolt',   '30',   'Fighting',  'Metal',    '1',  58, 1, 4, 1),

    -- Jungle
    (90,  'Snorlax',     'Sleeping Pokémon',     'Body Slam',      '30',   'Fighting',  NULL,       '4',  11, 2, 7, 1),
    (70,  'Kangaskhan',  'Parent Pokémon',       'Comet Punch',    '20x',  'Fighting',  NULL,       '3',  5,  2, 7, 1),
    (60,  'Scyther',     'Mantis Pokémon',       'Slash',          '30',   'Fire',      'Fighting', '1',  10, 2, 1, 1),
    (70,  'Electrode',   'Ball Pokémon',         'Explosion',      '80',   'Fighting',  NULL,       '1',  2,  2, 4, 2),
    (60,  'Jigglypuff',  'Balloon Pokémon',      'Lullaby',        '—',    'Fighting',  NULL,       '1',  54, 2, 7, 1),
    (70,  'Wigglytuff',  'Balloon Pokémon',      'Do the Wave',    '10+',  'Fighting',  NULL,       '2',  16, 2, 7, 2),
    (60,  'Nidoqueen',   'Drill Pokémon',        'Boyfriends',     '20+',  'Psychic',   NULL,       '3',  7,  2, 6, 3),
    (80,  'Nidoking',    'Drill Pokémon',        'Thrash',         '30+',  'Psychic',   NULL,       '3',  32, 2, 6, 3),
    (50,  'Eevee',       'Evolution Pokémon',    'Tackle',         '20',   'Fighting',  NULL,       '1',  55, 2, 7, 1),
    (70,  'Flareon',     'Flame Pokémon',        'Flamethrower',   '60',   'Water',     NULL,       '2',  3,  2, 2, 2),

    -- Fossil
    (80,  'Aerodactyl',  'Fossil Pokémon',       'Wing Attack',    '30',   'Lightning', 'Fighting', '2',  1,  3, 6, 1),
    (90,  'Kabutops',    'Shellfish Pokémon',    'Slash',          '30',   'Grass',     NULL,       '2',  9,  3, 6, 2),
    (60,  'Kabuto',      'Shellfish Pokémon',    'Scratch',        '20',   'Grass',     NULL,       '1',  50, 3, 6, 1),
    (70,  'Omastar',     'Spiral Pokémon',       'Hydro Pump',     '30+',  'Grass',     NULL,       '2',  20, 3, 3, 2),
    (60,  'Omanyte',     'Spiral Pokémon',       'Water Gun',      '10+',  'Grass',     NULL,       '1',  52, 3, 3, 1),
    (70,  'Hitmonlee',   'Kicking Pokémon',      'Stretch Kick',   '30',   'Psychic',   NULL,       '1',  7,  3, 6, 1),
    (60,  'Hitmonchan',  'Punching Pokémon',     'Special Punch',  '40',   'Psychic',   NULL,       '2',  8,  3, 6, 1),
    (80,  'Lapras',      'Transport Pokémon',    'Water Gun',      '10+',  'Lightning', NULL,       '2',  10, 3, 3, 1),
    (70,  'Ditto',       'Transform Pokémon',    'Transform',      '—',    'Fighting',  NULL,       '1',  3,  3, 7, 1),
    (60,  'Moltres',     'Flame Pokémon',        'Wildfire',       '—',    'Water',     NULL,       '2',  12, 3, 2, 1);

INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
    -- Base Set
    (60,  'Gyarados',    'Atrocious Pokémon',    'Dragon Rage',     '50',   'Grass',     NULL,  '3',  6,  1, 3, 2),
    (70,  'Alakazam',    'Psi Pokémon',          'Confuse Ray',     '30',   'Psychic',   NULL,  '3',  1,  1, 5, 3),
    (50,  'Gastly',      'Gas Pokémon',          'Lick',            '10',   'Psychic',   NULL,  '1',  50, 1, 5, 1),
    (60,  'Haunter',     'Gas Pokémon',          'Nightmare',       '10',   'Psychic',   NULL,  '1',  29, 1, 5, 2),
    (40,  'Abra',        'Psi Pokémon',          'Psyshock',        '10',   'Psychic',   NULL,  '1',  43, 1, 5, 1),
    (50,  'Machop',      'Superpower Pokémon',   'Low Kick',        '20',   'Psychic',   NULL,  '1',  52, 1, 6, 1),
    (80,  'Machoke',     'Superpower Pokémon',   'Karate Chop',     '50',   'Psychic',   NULL,  '2',  34, 1, 6, 2),
    (100, 'Machamp',     'Superpower Pokémon',   'Seismic Toss',    '60',   'Psychic',   NULL,  '3',  8,  1, 6, 3),
    (60,  'Electabuzz',  'Electric Pokémon',     'Thunder Shock',   '30',   'Fighting',  NULL,  '2',  20, 1, 4, 1),
    (70,  'Zapdos',      'Electric Pokémon',     'Thunderstorm',    '60',   'Fighting',  NULL,  '3',  16, 1, 4, 1),

    -- Jungle
    (70,  'Vaporeon',    'Bubble Jet Pokémon',   'Water Gun',       '30+',  'Lightning', NULL,  '2',  12, 2, 3, 2),
    (70,  'Jolteon',     'Lightning Pokémon',    'Pin Missile',     '20x',  'Fighting',  NULL,  '1',  4,  2, 4, 2),
    (80,  'Mr. Mime',    'Barrier Pokémon',      'Meditate',        '10+',  'Psychic',   NULL,  '1',  6,  2, 5, 1),
    (60,  'Clefable',    'Fairy Pokémon',        'Metronome',       '—',    'Fighting',  NULL,  '2',  1,  2, 7, 2),
    (50,  'Meowth',      'Scratch Cat Pokémon',  'Pay Day',         '10',   'Fighting',  NULL,  '1',  56, 2, 7, 1),

    -- Fossil
    (70,  'Articuno',    'Freeze Pokémon',       'Blizzard',        '50',   'Metal',     NULL,  '2',  2,  3, 3, 1),
    (70,  'Zapdos',      'Electric Pokémon',     'Thunderstorm',    '60',   'Fighting',  NULL,  '3',  15, 3, 4, 1),
    (80,  'Dragonite',   'Dragon Pokémon',       'Slam',            '40x',  'Colorless', NULL,  '2',  4,  3, 7, 3),
    (60,  'Mew',         'New Species Pokémon',  'Psywave',         '10+',  'Psychic',   NULL,  '1',  19, 3, 5, 1),
    (70,  'Mewtwo',      'Genetic Pokémon',      'Psychic',         '40+',  'Psychic',   NULL,  '2',  10, 1, 5, 1);

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

