-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE vaccinations (
    location VARCHAR   NOT NULL,
    iso_code VARCHAR(3)   NOT NULL,
    date DATE   NOT NULL,
    total_vaccinations INT   NOT NULL,
    people_vaccinated INT   NOT NULL,
    people_fully_vaccinated INT   NOT NULL,
    CONSTRAINT pk_vaccinations PRIMARY KEY (
        iso_code
     )
);

CREATE TABLE region_metadata (
    Country_Region VARCHAR   NOT NULL,
    Province_State VARCHAR   NOT NULL,
    lat FLOAT   NOT NULL,
    lon FLOAT   NOT NULL,
    continent VARCHAR   NOT NULL,
    population FLOAT   NOT NULL,
    area FLOAT   NOT NULL,
    density FLOAT   NOT NULL,
    CONSTRAINT pk_region_metadata PRIMARY KEY (
        Country_Region
     )
);

ALTER TABLE region_metadata ADD CONSTRAINT fk_region_metadata_Country_Region FOREIGN KEY(Country_Region)
REFERENCES vaccinations (location);

