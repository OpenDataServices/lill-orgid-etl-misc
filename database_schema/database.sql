
CREATE TABLE list (
	"id"	VARCHAR(100) NOT NULL,
	"field_title_en"	TEXT,
	"field_title_local"	TEXT,
	"field_url"	TEXT,
	"field_description_en"	TEXT,
	"field_coverage"	TEXT,
	"field_subnationalCoverage"	TEXT,
	"field_structure"	TEXT,
	"field_sector"	TEXT,
	"field_confirmed"	INTEGER,
	"field_deprecated"	INTEGER,
	"field_listType"	TEXT,
	"field_access_availableOnline"	INTEGER,
	"field_access_onlineAccessDetails"	TEXT,
	"field_access_publicDatabase"	TEXT,
	"field_access_guidanceOnLocatingIds"	TEXT,
	"field_access_exampleIdentifiers"	TEXT,
	"field_access_languages"	TEXT,
	"field_data_availability"	TEXT,
	"field_data_dataAccessDetails"	TEXT,
	"field_data_features"	TEXT,
	"field_data_licenseStatus"	TEXT,
	"field_data_licenseDetails"	TEXT,
	"field_meta_source"	TEXT,
	"field_meta_lastUpdated"	TEXT,
	"field_links_opencorporates"	TEXT,
	"field_links_wikipedia"	TEXT,
	"field_formerPrefixes"	TEXT,
	PRIMARY KEY("id")
);

CREATE TABLE data_standard (
	"id"	VARCHAR(100) NOT NULL,
	PRIMARY KEY("id")
);

INSERT INTO data_standard(id) VALUES ('iati');
INSERT INTO data_standard(id) VALUES ('ocds');
INSERT INTO data_standard(id) VALUES ('indigo');

CREATE TABLE data (
    list VARCHAR(100) NOT NULL,
    id VARCHAR(200) NOT NULL,
    data_standard VARCHAR(100) NOT NULL,
    scraper VARCHAR(100) NOT NULL,
    source_id VARCHAR(300) NOT NULL,
    url TEXT NULL,
    meta JSON,
	PRIMARY KEY("list", "id", "data_standard", "source_id"),
    FOREIGN KEY(list) REFERENCES list(id),
    FOREIGN KEY(data_standard) REFERENCES data_standard(id)
);

