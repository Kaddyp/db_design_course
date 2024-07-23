DELIMITER //

-- Create stored procedure to read messages
CREATE PROCEDURE GetCourse()
BEGIN
    SELECT * FROM Course;
END //

-- Create stored procedure to insert a new message
CREATE PROCEDURE InsertCourse(IN title_content VARCHAR(255), IN description_content TEXT, IN start_date_content DATE, IN end_date_content Date, In instructor_content VARCHAR(255))
BEGIN
    INSERT INTO Course 
    (title, description, start_date, end_date, instructor) 
    VALUES (title_content, description_content, start_date_content, end_date_content, instructor_content);
END //

-- Create stored procedure to update a message by ID
CREATE PROCEDURE UpdateCourse(IN id INT, IN title_content VARCHAR(255), IN description_content TEXT, IN start_date_content DATE, IN end_date_content Date, In instructor_content VARCHAR(255))
BEGIN
    UPDATE Course 
    SET title = title_content, description = description_content, start_date = start_date_content, end_date = end_date_content, instructor = instructor_content
    WHERE course_id = id;
END //

-- Create stored procedure to delete a message by ID
CREATE PROCEDURE DeleteCourse(IN id INT)
BEGIN
    DELETE FROM Course WHERE course_id = id;
END //

DELIMITER ;