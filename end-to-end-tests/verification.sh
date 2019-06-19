#!/bin/sh

#alias wapm=target/debug/wapm
wapm config set registry.url "https://registry.wapm.dev"
# redirect stderr to /dev/null so we can capture important stderr
yes no 2> /dev/null | wapm install mark2/dog2@0.0.0
# wc because the date changes
wapm keys list -a
yes 2> /dev/null | wapm install mark2/dog@0.0.4
wapm keys list -a | wc -l
wapm uninstall mark2/dog
wapm install mark2/dog@0.0.4
wapm install mark2/dog2@0.0.0