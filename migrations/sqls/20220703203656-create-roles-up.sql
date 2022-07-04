/* Replace with your SQL commands */
CREATE ROLE blog_admin LOGIN PASSWORD 'AdminPassword';

CREATE ROLE blog_user;

CREATE ROLE blog_guest;

GRANT blog_user TO blog_admin;
GRANT blog_guest TO blog_admin;
