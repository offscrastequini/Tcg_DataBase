# db_copilot

PostgreSQL database for a Pokémon Trading Card Game (TCG) catalog. Cards belong to an expansion set and are classified by energy type and evolution stage.

This repo holds the schema, sample seed data from the original Wizards of the Coast sets (**Base Set**, **Jungle**, **Fossil**), and a PowerShell helper that concatenates seed scripts into one SQL file.

## Stack

| Piece | Used for |
| --- | --- |
| **PostgreSQL** | Database engine (`SERIAL`, `DATE`, `SMALLINT`, `TEXT`, foreign keys) |
| **SQL scripts** | DDL in `db_scripts/tables`, DML in `db_scripts/seeds` |
| **PowerShell** | `to_migration.ps1` — merge numbered seed files into `to_migration.sql` |
| **psql** | Apply schema and data (`DATABASE_URL`) |

No application layer, ORM, or Docker setup is included. This is a schema-and-data repository.

## Data model

Four tables. Lookups are normalized so type and stage are not free-text on every card.

```
tbl_collection 1 ──< tbl_cards >── n tbl_type
                         │
                         └── n tbl_stage
```

- **`tbl_collection`** — expansion set (name, release date, printed card count).
- **`tbl_type`** — energy type (`Grass`, `Fire`, `Water`, `Lightning`, `Psychic`, `Fighting`, `Colorless`). Names are unique.
- **`tbl_stage`** — evolution stage (`Basic`, `Stage 1`, `Stage 2`). Names are unique.
- **`tbl_cards`** — one row per cataloged card, with FKs to the three tables above.

### `tbl_cards` columns

| Column | Type | Notes |
| --- | --- | --- |
| `id` | `SERIAL` | Primary key |
| `hp` | `SMALLINT` | Hit points (nullable) |
| `name` | `VARCHAR(80)` | Card name |
| `info` | `TEXT` | Pokédex-style category (e.g. Flame Pokémon) |
| `attack` | `VARCHAR(100)` | Sample attack name |
| `damage` | `VARCHAR(20)` | Printed damage (`100`, `40+`, `20x`, `—`) |
| `weak` | `VARCHAR(30)` | Weakness |
| `resis` | `VARCHAR(30)` | Resistance (nullable) |
| `retreat` | `VARCHAR(20)` | Retreat cost |
| `cardNumberInCollection` | `SMALLINT` | Number in the set |
| `collection_id` | `INT` | FK → `tbl_collection(id)` |
| `type_id` | `INT` | FK → `tbl_type(id)` |
| `stage_id` | `INT` | FK → `tbl_stage(id)` |

### Foreign keys

| Constraint | From | To | On delete |
| --- | --- | --- | --- |
| `fk_collection` | `tbl_cards.collection_id` | `tbl_collection.id` | `CASCADE` (removing a set removes its cards) |
| `fk_type` | `tbl_cards.type_id` | `tbl_type.id` | `RESTRICT` |
| `fk_stage` | `tbl_cards.stage_id` | `tbl_stage.id` | `RESTRICT` |

Type and stage started as columns on the card table in the original prompt (`pro/tcg-card.txt`) and were split into lookup tables so values stay consistent.

## Seed data

Lookups in `db_scripts/seeds/001_initial_seeds.sql`:

| Collection | Release date | Cards in set |
| --- | --- | --- |
| Base Set | 1999-01-09 | 102 |
| Jungle | 1999-06-16 | 64 |
| Fossil | 1999-10-10 | 62 |

Card inserts (`002`–`004`) add **80 sample cards** across those three sets (Kanto-era names, HP, attacks, weakness/resistance, retreat, collector number). IDs in the inserts assume seeds run on an empty database so `SERIAL` values line up (`collection_id` 1–3, `type_id` 1–7, `stage_id` 1–3).

`to_migration.sql` is the concatenated seeds file (same content as `migration/001_migration.sql`). It does **not** include `CREATE TABLE`; run the table script first.

## Repository layout

```
db_copilot/
├── README.md
├── pro/
│   └── tcg-card.txt              # original table requirements
├── db_scripts/
│   ├── tables/
│   │   └── 001_card_table.sql    # CREATE TABLE + FKs
│   └── seeds/
│       ├── 001_initial_seeds.sql # collections, types, stages
│       ├── 002_more_cards.sql
│       ├── 003_more_cards.sql
│       ├── 004_more_cards.sql
│       ├── to_migration.ps1      # concatenates seed .sql files
│       └── to_migration.sql      # generated combined seeds
└── migration/
    └── 001_migration.sql         # copy of combined seeds
```

## Apply

Requires PostgreSQL and `psql`. Create an empty database, then from the repo root:

```powershell
psql $env:DATABASE_URL -f db_scripts/tables/001_card_table.sql
psql $env:DATABASE_URL -f db_scripts/seeds/001_initial_seeds.sql
psql $env:DATABASE_URL -f db_scripts/seeds/002_more_cards.sql
psql $env:DATABASE_URL -f db_scripts/seeds/003_more_cards.sql
psql $env:DATABASE_URL -f db_scripts/seeds/004_more_cards.sql
```

Or, after tables exist, apply the combined seed file:

```powershell
psql $env:DATABASE_URL -f db_scripts/tables/001_card_table.sql
psql $env:DATABASE_URL -f db_scripts/seeds/to_migration.sql
```

Example `DATABASE_URL`:

```text
postgresql://USER:PASSWORD@localhost:5432/db_copilot
```

### Rebuild the combined seed file

From the repo root (Windows PowerShell):

```powershell
.\db_scripts\seeds\to_migration.ps1
```

The script deletes `to_migration.sql` if it exists, then appends every other `*.sql` in `db_scripts/seeds`, sorted by file name.

## Example query

```sql
SELECT
    c.name,
    t.typeName,
    s.stageName,
    col.collectionsSetName,
    c.cardNumberInCollection,
    c.hp,
    c.attack,
    c.damage
FROM tbl_cards c
JOIN tbl_type t ON t.id = c.type_id
JOIN tbl_stage s ON s.id = c.stage_id
JOIN tbl_collection col ON col.id = c.collection_id
ORDER BY col.releaseDate, c.cardNumberInCollection;
```

## License / data

Pokémon and Pokémon TCG names and card text are property of Nintendo / Game Freak / The Pokémon Company / Wizards of the Coast (original sets). This project is a personal catalog schema with sample rows for learning SQL, not an official product.
