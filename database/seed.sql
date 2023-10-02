INSERT INTO users (username, email, password_hash)
VALUES
    ('john_doe', 'john@example.com', 'hashed_password_1'),
    ('jane_smith', 'jane@example.com', 'hashed_password_2');

INSERT INTO articles (title, content, author_id)
VALUES
    ('Introduction to SQL', 'This is a great project using SQL basics.', 1),
    ('Web Development Trends 2023', 'Exploring the latest trends in web development.', 2);

INSERT INTO comments (text, user_id, article_id)
VALUES
    ('Great project!', 1, 1),
    ('Interesting insights!', 2, 2);

INSERT INTO categories (name)
VALUES
    ('Database'),
    ('Web Development');
