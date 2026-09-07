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
