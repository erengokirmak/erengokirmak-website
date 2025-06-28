---
title: "how"
date: 2025-06-28T00:10:33+02:00
toc: false
images:
tags:
  - meta
  - programming
description: explanation on how this site is compiled
---

I wanted to give a small explanation of how I'm generating this site and adding posts to it. As I said in [hello](./hello), I'm using [Hugo](https://gohugo.io/) to compile this static site. It's static, as there is no database or back-end this website is pulling information from. *All knowledge* about the website is known at *compile-time*. As I'm the only person making changes on the website and I know that they will all be independent of the outside world, I chose to use a tool like this. In the background, I have a [GitHub repository](https://github.com/erengokirmak/erengokirmak-website) that holds *almost* all the source code necessary to compile the latest version of the website. There are two things missing from this repository: The theme and the compilation script.

Hugo uses themes to make the website look *as it is*. There is an incredible amount of documentation for Hugo. It is genuinely a very powerful tool that shows you just how much you can do without ever needing a back-end. I'm using the theme [hello-friend-ng](https://themes.gohugo.io/themes/hugo-theme-hello-friend-ng/) and modifying it slightly to make it look a bit more to my liking. All the modifications can be found in the `archetypes`, `assets`, and `layouts` folders in the root directory.

The compilation script is a bash script I wrote to automate the recompilation and upload procedure to deploy the website. It resides in the root folder of the repository. It carries some sensitive information, which is why I show a slightly modified version of it in the following code-block:

```bash
#!/bin/bash

SERVER_USER=

# Read username to use in ssh for the server
read -p "Enter username: " -r SERVER_USER

# Check if the username is malformed
[[ "$SERVER_USER" =~ ^[a-zA-Z0-9._-]+$ ]] || {
  echo "[ERROR]: SERVER_USER: \"$SERVER_USER\" is invalid"
  exit
}

# Where the website files will be copied to
FINAL_PATH="server-ip-address:/path/to/your/webroot"

# Remove files from compilations before
rm -rf public/* || {
  echo "[ERROR]: There was an error deleting files from the public directory"
  exit
}

# Recompile the website
hugo --minify --ignoreCache --panicOnWarning --logLevel=info || {
  echo "[ERROR]: Recompilation failed"
  exit
}

printf "\n[INFO]: Recompilation complete\n\n"

cd public || {
  echo "[ERROR]: Could not find public directory"
  exit
}

# Replace the files with the newly generated files
echo "Syncing server content with local..."
rsync -azP --delete --progress ./ "$SERVER_USER@$FINAL_PATH" || {
  echo "[ERROR]: There was an error syncing the directory. Is rsync installed?"
  exit
}

printf "\n[INFO]: Sync complete! Enjoy the new version of your website :)\n"
```

Now, there is a bit to unpack in there. The user is expected to run this script while they are in the root directory of the repository. Afterwards, they will input the username that will be used to SSH into their server remotely to sync (more specifically `rsync`) the static website content. The script deletes the contents of the `public` directory, which is where the built files of the websites go. After recompiling the website with the `hugo` command, the script uses `rsync` to sync the content of the `public` directory with the directory specified by `FINAL_PATH`. This path is used by an Apache web server. After this (r)sync is complete, the new version of the website is up and running :)
