#!/bin/bash

compose_file="docker-compose.yml"
ecr_repo=$1

get_latest_image() {
    latest_image=$(aws ecr describe-images --repository-name $ecr_repo --query 'sort_by(imageDetails,& imagePushedAt)[-1].imageTags[0]' --output text)
    echo "$ecr_repo:$latest_image"
}

replace_ecr_tag() {
    local compose_file="$1"
    local ecr_repo="$2"
    local latest_image="$3"

    sed -i "s/$ecr_repo:[^ ]*/$latest_image/g" "$compose_file"
}

latest_image=$(get_latest_image)
echo "Latest image in ECR: $latest_image"

replace_ecr_tag "$compose_file" "$ecr_repo" "$latest_image"
echo "Updated Docker Compose file with latest image tag."
