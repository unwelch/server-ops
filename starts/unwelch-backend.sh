docker stop unwelch-backend
docker rm unwelch-backend
docker pull unwelch/backend

docker run -d \
  --name=unwelch-backend \
  --restart=always \
  --network=intranet \
  -e DB_HOST="db.unwel.ch" \
  -e DB_PORT="2200" \
  -e DB_PASSWORD=$UNWELCH_DB_PASSWORD \
  -e OAUTH_GOOGLE_SECRET=$UNWELCH_OAUTH_GOOGLE_SECRET \
  -e DB_USER="postgres" \
  unwelch/backend
