/* Replace with your SQL commands */
CREATE TABLE auth.user_auth (
  id serial PRIMARY KEY,
  user_id integer NOT NULL REFERENCES blog.user(id) ON DELETE CASCADE,
  email text NOT NULL UNIQUE,
  password_hash text NOT NULL,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);