/* Replace with your SQL commands */
CREATE TABLE blog.post (
  id serial NOT NULL PRIMARY KEY,
  user_id integer NOT NULL REFERENCES blog.user (id) ON DELETE CASCADE,
  title varchar(255) NOT NULL,
  content text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
)