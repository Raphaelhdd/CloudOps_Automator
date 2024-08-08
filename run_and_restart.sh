#!/bin/bash

# Google Cloud Project ID
PROJECT_ID="your_project_id"

# List of instances in the format "INSTANCE_NAME ZONE"
# You can have it from the command gcloud compute instances list
instances=(
      "INSTANCE_NAME ZONE"
      "INSTANCE_NAME ZONE"
      "INSTANCE_NAME ZONE"
)

# Reset each instance and run the Bash script
for instance in "${instances[@]}"; do
  set -- $instance
  INSTANCE_NAME=$1
  ZONE=$2

  echo "Resetting instance $INSTANCE_NAME in zone $ZONE..."

  # Reset the instance
  gcloud compute instances reset $INSTANCE_NAME --zone=$ZONE --project=$PROJECT_ID

  echo "Instance $INSTANCE_NAME in zone $ZONE has been reset."

  echo "Executing script on $INSTANCE_NAME in zone $ZONE..."

  # Execute the Bash script on the instance
  gcloud compute ssh $INSTANCE_NAME --zone=$ZONE --command="bash -s" < ./run_scripts.sh

  echo "Script executed on $INSTANCE_NAME in zone $ZONE."
done
