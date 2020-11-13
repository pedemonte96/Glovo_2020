#!/bin/bash
cd $TRAVIS_BUILD_DIR/backend_deployment
dotnet ef migrations script --idempotent --project $TRAVIS_BUILD_DIR/server/glovo_webapi/glovo_webapi -o migration.sql
heroku pg:psql --app ub-es2020-glovo-webapi < migration.sql
git add .
git commit -m "deploy"
git push heroku master
