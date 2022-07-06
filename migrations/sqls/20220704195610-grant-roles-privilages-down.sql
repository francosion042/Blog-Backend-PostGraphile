/* Replace with your SQL commands */
ALTER DEFAULT privileges GRANT EXECUTE ON FUNCTIONS TO public;

REVOKE usage ON SCHEMA blog FROM blog_user, blog_guest;

REVOKE EXECUTE ON FUNCTION blog.register_user(TEXT, TEXT, TEXT, TEXT, TEXT) FROM blog_guest;
REVOKE EXECUTE ON FUNCTION blog.login(TEXT, TEXT) FROM blog_user, blog_guest;

REVOKE ALL privileges ON TABLE blog.user FROM blog_user;
REVOKE ALL privileges ON TABLE blog.post FROM blog_user;


REVOKE SELECT ON TABLE blog.user FROM blog_guest;
REVOKE SELECT ON TABLE blog.post FROM blog_guest;