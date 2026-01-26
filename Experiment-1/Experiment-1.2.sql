INSERT INTO books (book_id, book_name, author_name, book_count) 
VALUES (3, 'Pyschology of Money', 'Morgan Housel', 5);

SELECT 
    table_name, 
    privilege_type 
FROM 
    information_schema.table_privileges 
WHERE 
    grantee = 'librarian';