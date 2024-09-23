#!/bin/bash

API_KEY="iFu3xOdMe5jAMFbDFEZBlzHvZkscJOaWSxTnfU4g"
API_URL="https://api.nasa.gov/planetary/apod"
IMAGE_PATH="/tmp/image.jpg"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/i3-picture-of-the-day"
CONFIG_FILE="$CONFIG_DIR/config"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "No config file found"
    echo "Creating config file in: $CONFIG_FILE" 
    mkdir -p "$CONFIG_DIR"
    touch "$CONFIG_FILE"
    cat <<EOF >"$CONFIG_FILE"
# default config 
feh_options=--bg-fill
save=false
save_location=~/Pictures/picture-of-the-day/nasa/
EOF
fi

source "$CONFIG_FILE"

function get_api_data() {
    curl -s "${API_URL}?api_key=${API_KEY}&date=$(date +%Y-%m-%d)"
}

API_RESPONSE=$(get_api_data)
IMAGE_TITLE=$(echo "$API_RESPONSE" | grep -o '"title":"[^"]*' | cut -d'"' -f4)
IMAGE_URL=$(echo "$API_RESPONSE" | grep -o '"hdurl":"[^"]*' | cut -d'"' -f4)

if [ -z "$IMAGE_URL" ]; then
    echo "Faild to fetch image"
    exit 1
fi

curl -s "$IMAGE_URL" -o "$IMAGE_PATH"
feh $feh_options "$IMAGE_PATH"

if [ "$save" == "true" ]; then
    SAVE_DIR=$(eval echo "$save_location")
    mkdir -p "$SAVE_DIR"

    FINAL_IMAGE_PATH="$SAVE_DIR/$(date +%Y-%m-%d)-${IMAGE_TITLE// /_}.jpg"
    cp "$IMAGE_PATH" "$FINAL_IMAGE_PATH"
fi
