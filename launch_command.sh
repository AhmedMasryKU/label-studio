gcloud run deploy label-studio-1 \
  --image us-central1-docker.pkg.dev/gemini-paid-api-424403/cloud-run-source-deploy/label-studio \
  --platform managed \
  --region us-central1 \
  --cpu 2 \
  --memory 4Gi \
  --allow-unauthenticated \
  --port 8080 \
  --timeout 300 \
  --add-cloudsql-instances gemini-paid-api-424403:us-central1:label-studio-db \
  --project gemini-paid-api-424403 \
  --set-env-vars LABEL_STUDIO_DISABLE_SIGNUP_WITHOUT_LINK=true,\
LABEL_STUDIO_USERNAME='',\
LABEL_STUDIO_PASSWORD='',\
LABEL_STUDIO_USER_TOKEN='myusertoken',\
DJANGO_DB='default',\
CSRF_TRUSTED_ORIGINS='',\
POSTGRE_NAME='postgres',\
POSTGRE_USER='postgres',\
POSTGRE_PASSWORD='666666',\
POSTGRE_HOST='/cloudsql/gemini-paid-api-424403:us-central1:label-studio-db',\
POSTGRE_PORT='5432',\
STORAGE_PERSISTENCE=true,\
DEPLOY_NOTES='placeholder for label studio deployment'
