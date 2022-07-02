/* Replace with your SQL commands */
CREATE TABLE blog.user (
  id serial PRIMARY KEY,
  name text NOT NULL,
  title text,
  description text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);