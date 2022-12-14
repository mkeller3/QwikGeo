-- upgrade --
CREATE TABLE IF NOT EXISTS "group" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL,
    "users" JSONB NOT NULL
);
CREATE TABLE IF NOT EXISTS "table" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "username" VARCHAR(50) NOT NULL,
    "table_id" VARCHAR(50) NOT NULL UNIQUE,
    "title" VARCHAR(500) NOT NULL,
    "created_time" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "modified_time" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "tags" JSONB NOT NULL,
    "description" TEXT NOT NULL,
    "read_access_list" JSONB NOT NULL,
    "write_access_list" JSONB NOT NULL,
    "views" INT NOT NULL,
    "searchable" BOOL NOT NULL  DEFAULT True,
    "geometry_type" VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS "user" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "username" VARCHAR(50) NOT NULL UNIQUE,
    "password_hash" VARCHAR(300),
    "first_name" VARCHAR(300) NOT NULL,
    "last_name" VARCHAR(300) NOT NULL,
    "photo_url" VARCHAR(1000),
    "email" VARCHAR(500) NOT NULL,
    "created_time" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "modified_time" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS "aerich" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "version" VARCHAR(255) NOT NULL,
    "app" VARCHAR(100) NOT NULL,
    "content" JSONB NOT NULL
);
