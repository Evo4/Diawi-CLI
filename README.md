# Diawi-CLI

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://vshymanskyy.github.io/StandWithUkraine/)
[![StandWithUkraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)
![platform](https://img.shields.io/badge/platform-iOS%20%7C%20macOS-green?style=flat)

Upload your app to [diawi](https://diawi.com) throuth your console.

- [Features](#features)
- [Bootstrap](#bootstrap)
- [Usage](#usage)
- [Authentication](#authentication)

## Features
- Upload single app
- Upload multiple apps

## Bootstrap

```sh
# Run this script to install dependencies:

bash bootstrap.sh
```

## Usage
1. Move apps to `build` folder
2. Run script to upload apps ``` bash uploadToDiawi.sh ``` or double click on `uploadToDiawi` file.

Options:

- **-t**: Used to set diawi token.
- **-h**: Used to get help.

## Authentication
By default, the script downloads applications as Self-service (without logging into your Diawi account). It has some restrictions related to the [price list](https://www.diawi.com/features-services): the size of the app download should not exceed 50 MB.

To use your account to download apps, copy your token from [this link](https://dashboard.diawi.com/profile/api).