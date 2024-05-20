#!/bin/bash

compose_file="docker-compose.yml"
ecr_repo=$1

get_latest_image() {
    latest_image=$(aws ecr describe-images --repository-name $ecr_repo --query 'sort_by(imageDetails,& imagePushedAt)[-1].imageTags[0]' --output text)
    echo "$latest_image"
}

replace_ecr_tag() {
    local compose_file="$1"
    local ecr_repo="$2"
    local new_tag="$3"
    
    local current_image="${aws_tag}${ecr_repo}:"

    # Use sed to replace only the tag part of the image
    sed -i "s|${current_image}[^ ]*|${current_image}${new_tag}'|g" "$compose_file"
}

latest_tag=$(get_latest_image)
echo "Latest tag in ECR: $latest_tag"
aws_tag="079711632559.dkr.ecr.ap-south-2.amazonaws.com/"

replace_ecr_tag "$compose_file" "$ecr_repo" "$latest_tag"
echo "Updated Docker Compose file with latest image tag."
