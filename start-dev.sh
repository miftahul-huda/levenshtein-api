export GOOGLE_APPLICATION_CREDENTIALS=/Users/mhuda/Works/Credentials/levenshtein-dev-app.json
export APPLICATION_PORT=8181
gcloud config configurations activate levenshtein-dev
rm .env
cp .env-dev .env
rm Dockerfile
cp Dockerfile-dev Dockerfile
node app.js
