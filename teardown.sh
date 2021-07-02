set -x

MY_INSTANCE_NAME="sendgrid-flask-instance"
ZONE=us-east1-c

gcloud compute instances delete $MY_INSTANCE_NAME \
    --zone=$ZONE --delete-disks=all --quiet

gcloud compute firewall-rules delete default-allow-http-8080 --quiet