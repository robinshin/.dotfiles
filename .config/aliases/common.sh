alias ll="ls -al"
function cd() {
    builtin cd "$@"
    if [ -d ".venv" ] && [ -f ".venv/bin/activate" ]; then
        source .venv/bin/activate
    elif [ "$VIRTUAL_ENV" != "" ]; then
        deactivate
    fi
}

alias tf="tofu"

alias notebook_venv="source $HOME/.venv_jupyter/bin/activate && jupyter notebook --port=8889"

alias gcswitch='gcloud container clusters get-credentials $CLUSTER_NAME --zone $GCP_ZONE --project $GCP_PROJECT_ID'

gswitch() {
  gcloud config configurations activate $1
  export GOOGLE_APPLICATION_CREDENTIALS=$HOME/.config/gcloud_env/application_default_credentials_$1.json
}

glogs() {
  source $HOME/.config/aliases/private.sh && config_env $1
  gcloud beta run services logs tail $APP --region=europe-west1 --project=$GCP_PROJECT
}

gsql() {
  source $HOME/.config/aliases/private.sh && config_env $1
  gcloud secrets versions access latest --secret=$APP-cloud-sql-password --project=$GCP_PROJECT | pbcopy && gcloud beta sql connect rocorp --database=$APP --user=$APP
}