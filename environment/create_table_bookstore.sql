CREATE TABLE bookstore.books(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY
title VARCHAR(100),
Price INT,
cretated_at TIMESTAP NOT NULL DEFAULT CURRENT_TIMESTAMP
);