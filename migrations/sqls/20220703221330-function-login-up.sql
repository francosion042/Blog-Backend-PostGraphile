/* Replace with your SQL commands */
CREATE OR REPLACE FUNCTION blog.login(email TEXT, password TEXT) RETURNS blog.jwt AS
$$
DECLARE
    userAuth auth.user_auth;
BEGIN
    BEGIN
        SELECT * INTO userAuth FROM auth.user_auth WHERE userAuth.email = login.email AND password = crypt(password, userAuth.password);
        
        RETURN ('Bearer ', userAuth.user_id, extract(epoch from (now() + interval '1 day')))::blog.jwt;
        EXCEPTION WHEN no_data_found THEN
            RAISE WARNING 'User with this email and password does not exist';
        RETURN NULL;
    END;
END;
$$
LANGUAGE plpgsql
STRICT
SECURITY DEFINER;