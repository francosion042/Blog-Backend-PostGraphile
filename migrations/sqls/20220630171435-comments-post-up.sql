/* Replace with your SQL commands */
COMMENT ON TABLE blog.post IS 'Posts for the blog created by users';
COMMENT ON COLUMN blog.post.id IS 'Post ID - Primary key';
COMMENT ON COLUMN blog.post.user_id IS 'Foreign key to user.id';
COMMENT ON COLUMN blog.post.title IS 'Title of the post';
COMMENT ON COLUMN blog.post.content IS 'Content of the post';
COMMENT ON COLUMN blog.post.created_at IS 'Date and time the post was created';
COMMENT ON COLUMN blog.post.updated_at IS 'Date and time the post was last updated';