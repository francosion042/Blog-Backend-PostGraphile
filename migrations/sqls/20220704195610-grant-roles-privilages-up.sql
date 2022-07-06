/* Replace with your SQL commands */
ALTER DEFAULT privileges REVOKE EXECUTE ON FUNCTIONS FROM public;

GRANT usage ON SCHEMA blog TO blog_user, blog_guest;

GRANT EXECUTE ON FUNCTION blog.register_user(TEXT, TEXT, TEXT, TEXT, TEXT) TO blog_guest;
GRANT EXECUTE ON FUNCTION blog.login(TEXT, TEXT) TO blog_user, blog_guest;

GRANT ALL privileges ON TABLE blog.user TO blog_user;
GRANT ALL privileges ON TABLE blog.post TO blog_user;

GRANT usage ON SEQUENCE blog.post_id_seq TO blog_user;

GRANT SELECT ON TABLE blog.user TO blog_guest;
GRANT SELECT ON TABLE blog.post TO blog_guest;

--  🍲 By Anthony