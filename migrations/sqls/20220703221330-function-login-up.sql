/* Replace with your SQL commands */
CREATE FUNCTION blog.login(email TEXT, password TEXT) RETURNS blog.jwt AS
$$
DECLARE
    userAuth auth.user_auth;
BEGIN
    BEGIN
        SELECT * INTO userAuth FROM auth.user_auth WHERE user_auth.email = login.email;

        IF userAuth.password_hash = crypt(password, userAuth.password_hash) THEN
            RETURN ('blog_user', userAuth.user_id, extract(epoch from (now() + interval '3 days')))::blog.jwt;
        ELSE
            RAISE 'Wrong Password';
        END IF;
        
    END;
END;
$$
LANGUAGE plpgsql
STRICT
SECURITY DEFINER;