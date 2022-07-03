postgraphile \
-c postgres://blog_admin:AdminPassword@localhost:5432/blog_postgraphile \
--schema blog \
--enhance-graphiql \
--allow-explain \
--append-plugins @graphile-contrib/pg-simplify-inflector \
--owner-connection postgres://postgres:ElsTony24@localhost:5432/blog_postgraphile \
--default-role blog_guest \
--watch \