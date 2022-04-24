# reference: https://stackoverflow.com/questions/152514/how-do-i-rename-all-folders-and-files-to-lowercase-on-linux
find .  -type f -print0 | xargs -0n 1 bash -c \
's=$(dirname "$0")/$(basename "$0");
d=$(dirname "$0")/$(basename "$0"|tr "[A-Z]" "[a-z]"); mv -f "$s" "$d"'
