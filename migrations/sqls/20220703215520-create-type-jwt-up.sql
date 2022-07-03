/* Replace with your SQL commands */
CREATE TYPE blog.jwt AS (
    token TEXT,
    user_id INTEGER,
    expires_at BIGINT
);