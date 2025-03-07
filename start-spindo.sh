gcloud config configurations activate lv-saas
rm .env
cp .env-spindo .env
rm Dockerfile
cp Dockerfile-spindo Dockerfile
node app.js
