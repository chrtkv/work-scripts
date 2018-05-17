ws() {
if [[ "$1" =~ https?:\/\/[a-zA-Z0-9]+\.[a-zA-Z]+(\.[a-zA-Z]{2,3})?(\/)?$ || "$1" =~ ^[a-zA-Z0-9]+\.[a-zA-Z]+(\.[a-zA-Z]{2,3})?/?$ ]]; then
        echo "$(whois `echo $1 | grep -oP '[a-zA-Z0-9]+\.[a-zA-Z]+(\.[a-zA-Z]{2,3})?'`)";
elif [[ "$1" =~ ^[a-zA-Z0-9]+\.[a-zA-Z]+(\.[a-zA-Z]{2,3})?\/ ]]; then
        echo "$(whois `echo $1 |  grep -oP '[a-zA-Z0-9]+\.[a-zA-Z]+(\.[a-zA-Z]{2,3})?(?=\/)'`)";
else
        echo "$(whois `echo $1 | grep -oP '(?<=\/\/)[a-zA-Z0-9]+\.[a-zA-Z]+(\.[a-zA-Z]{2,3})?(?=\/)'`)"
fi
}
