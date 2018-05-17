ws () {
	echo "$(whois `echo $1 |  sed -r 's#(https?://)?(\w+\.\w+(\.\w+)?)/?.*#\2#'`)";
}
