#!/bin/bash
inotifywait -mrq --timefmt '%d/%m/%y %H:%M' --format '%T %w%f' -e modify,delete,create,attrib /tmp/app_source/ | while read file
do
rsync -avPz --progress /tmp/app_source/ /tmp/app/
echo "${file} was synchronized"
done
