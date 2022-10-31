CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "age" int,
  "user" varchar NOT NULL,
  "password" varchar NOT NULL
);

CREATE TABLE "post" (
  "id" SERIAL PRIMARY KEY,
  "tag_id" int,
  "title" varchar NOT NULL,
  "description" varchar,
  "author" int NOT NULL,
  "content" varchar NOT NULL
);

CREATE TABLE "tag" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "comment" (
  "id" SERIAL PRIMARY KEY,
  "post_id" int,
  "comment" varchar NOT NULL
);

ALTER TABLE "post" ADD FOREIGN KEY ("author") REFERENCES "users" ("id");

ALTER TABLE "comment" ADD FOREIGN KEY ("post_id") REFERENCES "post" ("id");

ALTER TABLE "post" ADD FOREIGN KEY ("tag_id") REFERENCES "tag" ("id");

insert into users (name, email, age, "user", password) values ('pablo','em2@gmail.com', 24, 'user2', '3691');
insert into tag (name) values ('cocina'),('tecnologia');
insert into post (tag_id, title, description,author,content) values 
(1,'POST1','description1',1,'content1'),
(2,'POST2','description2',2,'content2');
insert into comment (post_id,"comment") values 
(1,'comment1'),
(1,'comment2'),
(2,'comment1');