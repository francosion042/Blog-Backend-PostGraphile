postgraphile \
-c postgres://postgres:ElsTony24@localhost:5432/blog_postgraphile \
--schema blog \
--watch \
--enhance-graphiql \
--allow-explain \
--append-plugins @graphile-contrib/pg-simplify-inflector \