-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "title_akas" (
    "titleId" varchar   NOT NULL,
    "ordering" int   NOT NULL,
    "title" varchar   NOT NULL,
    "region" varchar   NOT NULL,
    "language" varchar   NOT NULL,
    "types" varchar   NOT NULL,
    "attributes" varchar   NOT NULL,
    "isOriginalTitle" boolean   NOT NULL
);

CREATE TABLE "title_basics" (
    "tconst" varchar   NOT NULL,
    "titleType" varchar   NOT NULL,
    "primaryType" varchar   NOT NULL,
    "originalTitle" varchar   NOT NULL,
    "isAdult" boolean   NOT NULL,
    "startYear" date   NOT NULL,
    "endYear" date   NOT NULL,
    "runtimeMinutes" int   NOT NULL,
    "genres" varchar   NOT NULL,
    CONSTRAINT "pk_title_basics" PRIMARY KEY (
        "tconst"
     )
);

CREATE TABLE "title_crew" (
    "tconst" varchar   NOT NULL,
    "directors" varchar   NOT NULL,
    "writers" varchar   NOT NULL
);

CREATE TABLE "title_episode" (
    "tconst" varchar   NOT NULL,
    "parentTconst" varchar   NOT NULL,
    "seasonNumber" int   NOT NULL,
    "episodeNumber" int   NOT NULL
);

CREATE TABLE "title_principals" (
    "tconst" varchar   NOT NULL,
    "ordering" int   NOT NULL,
    "nconst" varchar   NOT NULL,
    "category" int   NOT NULL,
    "job" varchar   NOT NULL,
    "characters" int   NOT NULL
);

CREATE TABLE "title_rating" (
    "tconst" varchar   NOT NULL,
    "averageRating" float   NOT NULL,
    "numVotes" int   NOT NULL
);

CREATE TABLE "name_basics" (
    "nconst" varchar   NOT NULL,
    "primaryName" varchar   NOT NULL,
    "birthYear" date   NOT NULL,
    "deathYear" date   NOT NULL,
    "primaryProfession" varchar   NOT NULL,
    "knownForTitles" varchar   NOT NULL,
    CONSTRAINT "pk_name_basics" PRIMARY KEY (
        "nconst"
     )
);

ALTER TABLE "title_akas" ADD CONSTRAINT "fk_title_akas_titleId" FOREIGN KEY("titleId")
REFERENCES "title_basics" ("tconst");

ALTER TABLE "title_crew" ADD CONSTRAINT "fk_title_crew_tconst" FOREIGN KEY("tconst")
REFERENCES "title_basics" ("tconst");

ALTER TABLE "title_episode" ADD CONSTRAINT "fk_title_episode_tconst" FOREIGN KEY("tconst")
REFERENCES "title_basics" ("tconst");

ALTER TABLE "title_principals" ADD CONSTRAINT "fk_title_principals_tconst" FOREIGN KEY("tconst")
REFERENCES "title_basics" ("tconst");

ALTER TABLE "title_principals" ADD CONSTRAINT "fk_title_principals_nconst" FOREIGN KEY("nconst")
REFERENCES "name_basics" ("nconst");

ALTER TABLE "title_rating" ADD CONSTRAINT "fk_title_rating_tconst" FOREIGN KEY("tconst")
REFERENCES "title_basics" ("tconst");

