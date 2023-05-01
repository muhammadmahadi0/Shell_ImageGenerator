#!/bin/bash

# Set up OpenAI API credentials
export OPENAI_API_KEY=YOUR_API_KEY

# Prompt user for input
read -p "Enter a prompt for the image: " prompt

# Generate image using OpenAI's DALL-E API
response=$(curl https://api.openai.com/v1/images/generations \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
        "prompt": "'"$prompt"'",
        "num_images": 1,
        "size": "1024x1024",
        "response_format": "url"
      }')

# Save image to file
#read -p "Enter a filename for the image: " filename

url=$(echo $response | jq -r '.data[0].url')
echo "Extracted URL: $url"

#curl -L -o "$filename.jpg" "$url"
curl -o ~/Pictures/from_ai/"$prompt.jpg" "$url"

echo "Image saved as $prompt.jpg"
