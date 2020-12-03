#!/usr/bin/env zsh

# support for Java, CPP, C, zsh/sh/bash, Python
# more will be added when I use more file types
# requires: enscript, ps2pdf (might be poppler-utils)

function find_extension(){
        header="$(head -n1 "$1")"
        [[ "$(grep "env" "$1")" ]] && file_extension="$(echo "$header" | awk '{print $2}')"
        [[ "$(grep "\#\!\/bin" "$1")" ]] && file_extension="$(basename "$1")"
        [[ "$file_extension" == "zsh" ]] && file_extension="bash"
}

for file in "$@"; do
        [[ ! -f "$file" ]] && break
        filename="$file:t:r"
        file_extension="$file:t:e"
        [[ -z "$file_extension" ]] && find_extension "$file"
        [[ "$file_extension" == "py" ]] && file_extension="python"

        enscript -rG --word-wrap --line-numbers -p - --highlight="$file_extension" --color=1 -f Courier8 -c "$file"\
        | ps2pdf - "$filename".pdf
done
