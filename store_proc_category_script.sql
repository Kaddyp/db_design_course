DELIMITER //

-- Create stored procedure to read messages
CREATE PROCEDURE GetCategory()
BEGIN
    SELECT * FROM Category;
END //

-- Create stored procedure to insert a new message
CREATE PROCEDURE InsertCategory(IN name_content VARCHAR(255), IN description_content VARCHAR(255))
BEGIN
    INSERT INTO Category (name, description) VALUES (name_content, description_content);
END //

-- Create stored procedure to update a message by ID
CREATE PROCEDURE UpdateCategory(IN id INT, IN name_content VARCHAR(255), IN description_content VARCHAR(255))
BEGIN
    UPDATE Category 
    SET name = name_content, description = description_content 
    WHERE category_id = id;
END //

-- Create stored procedure to delete a message by ID
CREATE PROCEDURE DeleteCategory(IN id INT)
BEGIN
    DELETE FROM Category WHERE category_id = id;
END //

DELIMITER ;
