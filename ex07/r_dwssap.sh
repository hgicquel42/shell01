cat /etc/passwd | grep -v '#' | awk 'NR%2<2' | awk -F ':' '{print $1}' | rev | sort -r | head -n ${FT_LINE1} | tail -n ${FT_LINE2} | awk 'ORS=", "' | rev | cut -c 3- | rev | sed "s/$/./"
