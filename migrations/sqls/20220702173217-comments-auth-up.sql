/* Replace with your SQL commands */
COMMENT ON SCHEMA auth IS 'Authentication Schema';
COMMENT ON TABLE auth.user_auth IS 'Authentication details of Users of the Application';
COMMENT ON COLUMN auth.user_auth.email IS 'Users Email Address - Unique';
COMMENT ON COLUMN auth.user_auth.password IS 'Users Password';
COMMENT ON COLUMN auth.user_auth.created_at IS 'Users Created Date';
COMMENT ON COLUMN auth.user_auth.updated_at IS 'Users Updated Date';