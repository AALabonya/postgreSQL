-- Active: 1729443357593@@127.0.0.1@5432@test@public
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    tittle text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)

INSERT INTO "user"(username) VALUES ('akash'),('batash'),('sagor'),('nodi')

-- Sample Insert Values
INSERT INTO post (tittle, user_id) VALUES
    ('Introduction to Python🐍', 1),
    ('Understanding SQL Joins🔗', 2),
    ('Frontend Design Tips🎨', 3),
    ('Database Optimization💾', 1),
    ('Learning Machine Learning🤖', 4),
    ('Cybersecurity Basics🔒', 2);