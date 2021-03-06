CREATE TABLE IF NOT EXISTS "HumanoidCharacterProfiles" (
	"Id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"Player"	INTEGER NOT NULL,
	"Slot"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Age"	INTEGER NOT NULL,
	"Sex"	TEXT NOT NULL,
	"HairStyleName"	TEXT NOT NULL,
	"HairColor"	TEXT NOT NULL,
	"FacialHairStyleName"	TEXT NOT NULL,
	"FacialHairColor"	TEXT NOT NULL,
	"EyeColor"	TEXT NOT NULL,
	"SkinColor"	TEXT NOT NULL,
	FOREIGN KEY("Player") REFERENCES "PlayerPreferences"("Id")
);
CREATE TABLE IF NOT EXISTS "PlayerPreferences" (
	"Id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"Username"	TEXT NOT NULL UNIQUE,
	"SelectedCharacterIndex"	INTEGER NOT NULL
);
