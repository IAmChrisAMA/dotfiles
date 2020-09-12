#!/usr/bin/env zsh

# Compile and run LaTeX files from the command line
# make_run_latex [OPTION] <FILENAME>

function x() {
    [[ -z "$@" ]] && (xdg-open "$PWD" > /dev/null 2>&1)
    for item in "$@"; do
        
    done
}

[[ ! -f "$1" ]] && (echo "[-] Cannot open file at: $1, cowardly refusing";exit)
[[ ! -d exported ]] && mkdir exported
filename="$1:t:r"
#pdflatex "$1" "$filename".pdf
rubber -vvvv --unsafe -d "$1"
latexmk -silent -c
mv "$filename".pdf exported
process_count="$(ps aux | grep "$filename.pdf" | grep -v "grep" | awk '{print $2}')"
 #| while read process; do kill -SIGTERM "$process"; done
if [[ -z "$process_count" ]]; then
        xreader exported/"$filename".pdf > /dev/null 2>&1 & disown
else
        PID="$(echo "$process_count" | head -n1)"
        wmctrl -ia "$(wmctrl -lp | awk -vpid="$PID" '$3==pid {print $1; exit}')"
fi

GREEN="\033[1;32m"
NOCOLOR="\033[0m"
echo "$GREEN"'Word count: '"$(textcount $1 | awk '/Words in text/ {print $4}')""$NOCOLOR"
