CREATE TABLE IF NOT EXISTS link (
    id            uuid            PRIMARY KEY NOT NULL    DEFAULT gen_random_uuid(),
    trip_id       uuid                        NOT NULL,
    title         VARCHAR(255)                NOT NULL,
    url           VARCHAR(255)                NOT NULL    DEFAULT FALSE,

    FOREIGN KEY (trip_id) REFERENCES trip(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

---- create above / drop below ----

DROP TABLE IF EXISTS link;
