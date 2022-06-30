/* Replace with your SQL commands */
CREATE TABLE blog.user (
  id serial PRIMARY KEY,
  name text NOT NULL,
  email text NOT NULL UNIQUE,
  password text NOT NULL,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);