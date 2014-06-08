#!/bin/bash

file=$(date +%Y-%m-%d)-$1.md
touch $file
sublime  $file