#!/bin/bash

# The collection of bad-functions.txt names is shamelessly ripped from CURL
# https://daniel.haxx.se/blog/2025/04/07/writing-c-for-curl/
# https://github.com/curl/curl
# https://github.com/curl/curl/blob/master/scripts/checksrc.pl


# -F means look for "fixed strings" (not regex)
# -f means read the fixed strings from the file (bad-functions.txt)
# -r means search recursively
# -n means print file names and line numbers where fixed strings are found
# --color=always is necessary so that the colors appear even though grep is being called in a script
# --binary-files=without-match means that binary files are not searched
# $1 first command line argument passed in (e.g., /path/to/some/codebase/)


grep -F -f bad-functions.txt -r -n --binary-files=without-match --color=always $1