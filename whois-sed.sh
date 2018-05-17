ws () {
	echo "$(whois `echo $1 | sed -r 's#(https?://)?([^/]+)/?.*#\2#'`)";
}
