CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "places" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "latitude" float, "longitude" float, "address" varchar, "description" text, "title" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "place_types_id" integer, "category_id" integer, "user_id" integer);
CREATE TABLE "place_types" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "body" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "body" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "admin" boolean);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE INDEX "index_places_on_user_id" ON "places" ("user_id");
CREATE TABLE "places_pics" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "body" text, "place_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_file_name" varchar, "image_content_type" varchar, "image_file_size" integer, "image_updated_at" datetime, "user_id" integer);
INSERT INTO schema_migrations (version) VALUES ('20150830060832');

INSERT INTO schema_migrations (version) VALUES ('20150831012649');

INSERT INTO schema_migrations (version) VALUES ('20150831013301');

INSERT INTO schema_migrations (version) VALUES ('20150831052834');

INSERT INTO schema_migrations (version) VALUES ('20150831053232');

INSERT INTO schema_migrations (version) VALUES ('20150910114440');

INSERT INTO schema_migrations (version) VALUES ('20150910114917');

INSERT INTO schema_migrations (version) VALUES ('20150911135453');

INSERT INTO schema_migrations (version) VALUES ('20150912001644');

INSERT INTO schema_migrations (version) VALUES ('20150912004127');

INSERT INTO schema_migrations (version) VALUES ('20150912164428');

