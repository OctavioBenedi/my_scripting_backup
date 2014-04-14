#!/bin/bash
IFS=$'\n'
	for SRC in `find . -depth`
	do
		DST=`dirname "${SRC}"`/`basename "${SRC}" | tr '[A-Z]' '[a-z]' |tr -dc '[:print:]' | tr ' ' '_' `
		if [ "${SRC}" != "${DST}" ]
		then
			[ ! -e "${DST}" ] && mv -vT "${SRC}" "${DST}" || echo "${SRC} was not renamed"
		fi
	done
unset IFS

