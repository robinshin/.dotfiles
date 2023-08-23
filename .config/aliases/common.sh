alias ll="ls -al"
alias cd="cd -P"

# Terraform
alias tf="terraform"

alias notebook_venv="source $HOME/.venv_jupyter/bin/activate && jupyter notebook --port=8889"

alias gcswitch='gcloud container clusters get-credentials $CLUSTER_NAME --zone $GCP_ZONE --project $GCP_PROJECT_ID'

gswitch() {
  gcloud config configurations activate $1
  export GOOGLE_APPLICATION_CREDENTIALS=$HOME/.config/gcloud_env/application_default_credentials_$1.json
}
