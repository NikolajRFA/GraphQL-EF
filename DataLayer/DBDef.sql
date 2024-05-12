DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS publishers;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors
(
    id            INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name          varchar(100),
    date_of_birth DATE
);

CREATE TABLE publishers
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100),
    since INT
);

CREATE TABLE books
(
    id        INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title     VARCHAR(200),
    author_id INT REFERENCES authors (id),
    publisher_id INT REFERENCES publishers (id)
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


INSERT INTO publishers (name, since) 
VALUES ('Books R Us', 2000),
       ('We Publish Books', 1999);
                                         

INSERT INTO books (title, author_id, publisher_id)
VALUES ('C# In Depth', 1, 1),
       ('Head First C#', 2, 1),
       ('Full Stack Serverless', 3, 1),
       ('Learn C# in One Day and Learn It Well', 4, 2),
       ('Code That Fits In Your Head', 5, 1),
       ('Hands On Visual Studio', 6, 2),
       ('Learning C# by Developing Games with Unity', 7, 2),
       ('Serverless GraphQL APIs with Amazon''s AWS AppSync', 8, 2),
       ('Mastering Regular Expressions', 9, 1),
       ('The Road to GraphQL', 10, 1),
       ('Full Stack GraphQL Applications', 11, 1),
       ('Learning GraphQL', 12, 2),
       ('C# 10 and .NET 6', 13, 1),
       ('GraphQL in Action', 14, 2),
       ('Software Architecture with C# 10 and .NET 6', 15, 1);
