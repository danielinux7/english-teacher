sed -r 's/(.*)/\L\1/g' en.txt | sed -r "s/'|[ ]+/ /g" | sed -e "s/[[:punct:][:digit:]]//g" -e '/^$/d' | \
awk '{print tolower($0)}' | tr ' ' '\n'| LC_ALL=C sort | uniq -c | \
LC_ALL=C sort -nr | sed -r 's/^[ ]+//g' | sed -r '/^[0-9] $/d'> wordfreq-en
