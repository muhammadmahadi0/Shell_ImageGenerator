# Shell_ImageGenerator
# OpenAI DALL-E Image Generator

This is a Bash script that generates images using the [OpenAI DALL-E API](https://openai.com/dall-e/). With this tool, you can generate high-quality images from textual prompts.

## Prerequisites

To use this tool, you need to have `Bash` and `curl` installed on your system. Most Unix-based systems like macOS and Linux come with `Bash` and `curl` pre-installed. If you're using Windows, you can install `Git Bash` to get `Bash` and install `curl` separately.

You also need to have an OpenAI API key. If you don't have one yet, you can sign up for OpenAI's Beta program to get an [API key](https://platform.openai.com/account/api-keys).

## Usage

Clone or download the repository to your local machine.

Open a terminal and navigate to the directory where the generate.sh script is located.

Run the following command to set up your OpenAI API credentials:

```bash
export OPENAI_API_KEY=YOUR_API_KEY
```
Replace `YOUR_API_KEY` with your actual OpenAI [API key](https://platform.openai.com/account/api-keys).

Run the following command to generate an image:

```bash
./generate.sh
```
The script will prompt you to enter a textual prompt for the image. Type your prompt and press Enter.

The script will then call the OpenAI DALL-E API to generate an image based on your prompt. The image will be saved to `~/Pictures/from_ai/` with the prompt as the filename (e.g., if your prompt is `a cat on a couch`, the filename will be `a cat on a couch.jpg`).

The script will also print the URL of the generated image.

(Optional) You can uncomment the `read -p "Enter a filename for the image: " filename` line in the script to prompt the user for a custom filename for the image.



## License

This tool is released under the MIT License. See the [LICENSE](https://chat.openai.com/LICENSE) file for details.

---


