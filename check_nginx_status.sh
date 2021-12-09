#!/bin/bash

if !(pgrep nginx > /dev/null); then
	echo "----------------------------------------------------"
	echo "Service nginx is not running. Starting nginx service"
	echo "----------------------------------------------------"
	service nginx start
fi