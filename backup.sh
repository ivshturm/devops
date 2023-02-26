#!/bin/bash

dir_backup="$1"
comp_alg="$2"
output_file="$3"

password="password"

error_log="error.log"
exec 2> "$error_log"
tar -c "$dir_backup" | "$comp_alg" -c | openssl enc -aes256 -pass pass:"$password" -out "$output_file"
