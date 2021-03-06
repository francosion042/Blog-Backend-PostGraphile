/* Replace with your SQL commands */
CREATE FUNCTION blog.register_user(
    name TEXT,
    email TEXT,
    password TEXT,
    title TEXT,
    description TEXT
) RETURNS blog.user AS 
$$ 
DECLARE 
    userRec blog.user;

BEGIN 
    INSERT INTO
        blog.user (name, title, description)
    VALUES
        (name, title, description) RETURNING * INTO userRec;

    INSERT INTO
        auth.user_auth (user_id, email, password_hash)
    VALUES
        (
            userRec.id,
            email,
            crypt(password, gen_salt('bf'))
        );

    RETURN userRec;

    EXCEPTION
    WHEN unique_violation THEN RAISE 'User with this email already exists';

END;
$$ 
LANGUAGE plpgsql 
STRICT 
SECURITY DEFINER;

--  🍲 By Anthony