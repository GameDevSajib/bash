#!/bin/bash

while true; do
    read -p "Enter URL: " url
    wget -qO- "$url" | lynx -stdin
done
