/* Replace with your SQL commands */
REASSIGN OWNED BY blog_admin TO postgres;
DROP OWNED BY blog_admin;
REASSIGN OWNED BY blog_user TO postgres;
DROP ROLE blog_admin;
DROP ROLE blog_user;
DROP ROLE blog_guest;