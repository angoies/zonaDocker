-- CREATE TABLE student
-- (
--     id bigint NOT NULL,
--     name text COLLATE pg_catalog."default",
--     CONSTRAINT student_pkey PRIMARY KEY (id)
-- );

-- INSERT INTO student(id, name) VALUES
--  (1, 'Ana'),
--  (2, 'Boris'),
--  (3, 'Carla');

CREATE TABLE "test" (
  "id" serial NOT NULL,
    PRIMARY KEY ("id"),
  "nombre" character varying(32) NOT NULL,
  "email" character varying(254) NOT NULL
);

INSERT INTO "test" ("nombre", "email")
VALUES
    ('Ana', 'ana@local.com'),
    ('Raul', 'raula@local.com'),
    ('Raquel', 'raquel@local.com');