#!/bin/bash

for var in *.*;do mv "${var}" "${var%%.*}"; done                                                      #to remove already present extensions 

for var in *; do                                                                                      #to add extensions
    type="$( file -bi -- "${var}" )"
    case "${type%%;*}" in
        image/jpeg) extension=jpg;;
        text/plain) extension=txt;;
		text/x-c)   extension=c;;                                                                     #extensions for each type of file
		text/x-shellscript) extension=sh;;
		text/html)  extension=html;;
		application/gzip) extension=gzip;;
    esac
    if [ -n "$extension" ]; then mv -n -- "${var}" "${var}.${extension}"; fi                          #moving var to var.extension
done