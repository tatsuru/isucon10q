DROP DATABASE IF EXISTS isuumo;
CREATE DATABASE isuumo;

DROP TABLE IF EXISTS isuumo.estate;
DROP TABLE IF EXISTS isuumo.chair;

CREATE TABLE isuumo.estate
(
    id          INTEGER             NOT NULL PRIMARY KEY,
    name        VARCHAR(64)         NOT NULL,
    description VARCHAR(4096)       NOT NULL,
    thumbnail   VARCHAR(128)        NOT NULL,
    address     VARCHAR(128)        NOT NULL,
    latitude    DOUBLE PRECISION    NOT NULL,
    longitude   DOUBLE PRECISION    NOT NULL,
    rent        INTEGER             NOT NULL,
    door_height INTEGER             NOT NULL,
    door_width  INTEGER             NOT NULL,
    door_height_range INTEGER               ,
    door_width_range  INTEGER               ,
    features    VARCHAR(64)         NOT NULL,
    popularity  INTEGER             NOT NULL,

    KEY `by_door_width` (door_width),
    KEY `by_door_height` (door_height),
    KEY `by_rent` (rent),
    KEY `by_popularity` (popularity),
    KEY `by_door_width_range` (door_width_range),
    KEY `by_door_height_range` (door_height_range),
);

CREATE TABLE isuumo.chair
(
    id          INTEGER         NOT NULL PRIMARY KEY,
    name        VARCHAR(64)     NOT NULL,
    description VARCHAR(4096)   NOT NULL,
    thumbnail   VARCHAR(128)    NOT NULL,
    price       INTEGER         NOT NULL,
    height      INTEGER         NOT NULL,
    height_range INTEGER                ,
    width       INTEGER         NOT NULL,
    width_range INTEGER                 ,
    depth       INTEGER         NOT NULL,
    depth_range INTEGER                 ,
    color       VARCHAR(64)     NOT NULL,
    features    VARCHAR(64)     NOT NULL,
    kind        VARCHAR(64)     NOT NULL,
    popularity  INTEGER         NOT NULL,
    stock       INTEGER         NOT NULL,

    KEY `by_price` (price),
    KEY `by_height` (height),
    KEY `by_width` (width),
    KEY `by_depth` (depth),
    KEY `by_color` (color),
    KEY `by_kind` (kind),
    KEY `by_popularity` (popularity),
    KEY `by_stock` (stock),
    KEY `by_height_range` (height_range),
    KEY `by_width_range` (width_range),
    KEY `by_depth_range` (depth_range)
);
