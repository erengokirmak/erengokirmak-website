+++
date = '{{ .Date }}'
draft = true
title = '{{ replace .File.ContentBaseName "-" " " | title }}'
description = ""
tags = []

[cover]
image = ""
alt = "Descriptive alt text"
caption = "Optional caption text"
relative = false
hidden = false
+++
