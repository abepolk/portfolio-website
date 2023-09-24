# The second variable is the storage location pulled from metadata
# TODO Check the ability of this to be interactive  if run in a subshell
terraform apply -var="project_id=$(gcloud config get-value project)" -var="location=$(gcloud compute project-info describe --format="value(commonInstanceMetadata.items[location])")"
