/* Replace with your SQL commands */
ALTER DEFAULT PRIVILEGES REVOKE EXECUTE ON FUNCTIONS FROM public;

GRANT usage ON SCHEMA blog TO blog_user, blog_guest;

GRANT EXECUTE ON FUNCTION blog.register_user(TEXT, TEXT, TEXT, TEXT, TEXT) TO blog_guest;
GRANT EXECUTE ON FUNCTION blog.login(TEXT, TEXT) TO blog_user, blog_guest;

GRANT ALL PRIVILEGES ON TABLE blog.user TO blog_user;
GRANT ALL PRIVILEGES ON TABLE blog.post TO blog_user;

GRANT SELECT ON TABLE blog.user TO blog_guest;
GRANT SELECT ON TABLE blog.post TO blog_guest;