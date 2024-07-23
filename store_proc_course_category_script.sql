DELIMITER //

-- Create stored procedure to read messages
CREATE PROCEDURE GetCourseCategory()
BEGIN
    SELECT * FROM CourseCategory;
END //

-- Create stored procedure to insert a new message
CREATE PROCEDURE InsertCourseCategory(IN course_id_content INT, IN category_id_content INT)
BEGIN
    INSERT INTO CourseCategory (course_id, category_id) 
    VALUES (course_id_content, category_id_content);
END //

-- Create stored procedure to update a message by ID
CREATE PROCEDURE UpdateCourseCategory(IN course_id_content INT, IN category_id_content INT)
BEGIN
    UPDATE CourseCategory 
    SET category_id = category_id_content
    WHERE course_id = course_id_content AND category_id = category_id_content;
END //

-- Create stored procedure to delete a message by ID
CREATE PROCEDURE DeleteCourseCategory(IN course_id_content INT, IN category_id_content INT)
BEGIN
    DELETE FROM CourseCategory 
    WHERE course_id = course_id_content AND category_id = category_id_content;
END //

DELIMITER ;