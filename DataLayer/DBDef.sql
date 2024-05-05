DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors
(
    id            INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name          varchar(100),
    date_of_birth DATE
);

CREATE TABLE books
(
    id        INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title     VARCHAR(200),
    author_id INT REFERENCES authors (id)
);

INSERT INTO authors (name, date_of_birth)
VALUES ('Jon Skeet', '0001-01-01'),
       ('Andrew Stellman', '0001-01-01'),
       ('Nader Dabit', '0001-01-01'),
       ('Jaime Chan', '0001-01-01'),
       ('Mark Seemanm', '0001-01-01'),
       ('Miguel Angel Teheran Garcia', '0001-01-01'),
       ('Harrison Ferrone', '0001-01-01'),
       ('Matthias Biehl', '0001-01-01'),
       ('Jeffrey E. F. Friedl', '0001-01-01'),
       ('Robin Wieruch', '0001-01-01'),
       ('William Lyon', '0001-01-01'),
       ('Eve Porcello', '0001-01-01'),
       ('Mark J Price', '0001-01-01'),
       ('Samer Buna', '0001-01-01'),
       ('Francesco Abbruzzese', '0001-01-01');


INSERT INTO books (title, author_id)
VALUES ('C# In Depth', 1),
       ('Head First C#', 2),
       ('Full Stack Serverless', 3),
       ('Learn C# in One Day and Learn It Well', 4),
       ('Code That Fits In Your Head', 5),
       ('Hands On Visual Studio', 6),
       ('Learning C# by Developing Games with Unity', 7),
       ('Serverless GraphQL APIs with Amazon''s AWS AppSync', 8),
       ('Mastering Regular Expressions', 9),
       ('The Road to GraphQL', 10),
       ('Full Stack GraphQL Applications', 11),
       ('Learning GraphQL', 12),
       ('C# 10 and .NET 6', 13),
       ('GraphQL in Action', 14),
       ('Software Architecture with C# 10 and .NET 6', 15);
