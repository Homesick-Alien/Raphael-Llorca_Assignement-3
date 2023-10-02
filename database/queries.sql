SELECT * FROM users;

SELECT articles.title, users.username AS author
FROM articles
INNER JOIN users ON articles.author_id = users.id;

SELECT comments.text, users.username AS commenter, articles.title AS article_title
FROM comments
INNER JOIN users ON comments.user_id = users.id
INNER JOIN articles ON comments.article_id = articles.id;

SELECT categories.name, COUNT(articles.id) AS article_count
FROM categories
LEFT JOIN articles ON categories.id = articles.category_id
GROUP BY categories.name;
