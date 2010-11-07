#!/bin/bash

wget -A htm,html,jpg,jpeg,gif,png,txt,js,css --wait=1 --random-wait -e robots=off --mirror --no-parent --page-requisites --convert-links --html-extension $1
