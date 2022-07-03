/* Replace with your SQL commands */
CREATE ROLE blog_admin LOGIN PASSWORD 'AdminPassword';

CREATE ROLE blog_user;

CREATE ROLE blog_guest;


GRANT ALL PRIVILEGES ON DATABASE blog_postgraphile TO blog_admin;

GRANT blog_guest TO blog_user;