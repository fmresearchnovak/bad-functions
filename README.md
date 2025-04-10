# bad-functions
A very simple shell script that searches for "bad" functions in a code base using `grep`.  These functions are problematic from a security point of view as they have frequent buffer-overrun issues.

The collection of bad-functions.txt names is shamelessly ripped from CURL
[https://daniel.haxx.se/blog/2025/04/07/writing-c-for-curl/](https://daniel.haxx.se/blog/2025/04/07/writing-c-for-curl/)


## Usage
Run the script by providing the path to the codebase you want to scan as an argument:

`./bad-functions.sh /path/to/codebase`


## Limitations
This script searches in a very blunt way.  It returns occurences that appear as part of words (e.g., "Targets") and within comments etc.  It is not clear if there is a way to filter out super-string matches, occurrences that appear in comments, etc. in way that is completely programming language agnostic.

