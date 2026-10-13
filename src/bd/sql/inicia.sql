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