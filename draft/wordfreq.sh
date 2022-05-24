sed -r 's/(.*)/\L\1/g' $1 | sed -r "s/'|[ ]+/ /g" | sed -r "s/'-/ /g" | sed -r "s/[^[:alpha:] ]//g" | sed -r '/^$/d' | \
awk '{print tolower($0)}' | tr ' ' '\n'| LC_ALL=C sort | uniq -c | \
LC_ALL=C sort -nr | sed -r 's/^[ ]+//g' | sed -r '/^[0-9] $/d'> wordfreq-en-${1/.txt/}
