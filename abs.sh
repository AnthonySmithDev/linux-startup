#!/usr/bin/env bash

sudo apt install build-essential

bash -c "$(curl https://www.abs-lang.org/installer.sh)"

sudo mv ./abs /usr/local/bin


