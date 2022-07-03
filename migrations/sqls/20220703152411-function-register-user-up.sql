/* Replace with your SQL commands */
CREATE OR REPLACE FUNCTION register_user(name TEXT, email TEXT, password TEXT, title TEXT, description TEXT) RETURNS blog.user AS 
$$
DECLARE
    user = blog.user;;
BEGIN
    BEGIN
        INSERT INTO blog.user (name, title, description) VALUES (name, title, description) RETURNING * INTO user;

        INSERT INTO auth.user_auth (user_id, email, password) VALUES (user.id, email, crypt(password, gen_salt('bf')));
        RETURN user;
    EXCEPTION WHEN unique_violation THEN
        RAISE WARNING 'User with this email already exists';
        RETURN NULL;
    END;
END;
$$ LANGUAGE plpgsql;
