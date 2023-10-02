CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE articles (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    author_id INT REFERENCES users(id),
    category_id INT REFERENCES categories(id)
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    text TEXT,
    user_id INT REFERENCES users(id),
    article_id INT REFERENCES articles(id)
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
