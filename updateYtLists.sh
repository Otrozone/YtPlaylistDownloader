#!/bin/bash
OUTPUT_PATH=/media/Media/Audio/Youtube
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
while IFS="" read -r p || [ -n "$p" ]
do
  IFS='|' read var1 var2 <<< $p
  mkdir -p "${OUTPUT_PATH}/${var1}"
  cd "${OUTPUT_PATH}/${var1}"
  ${SCRIPT_DIR}/updateYtList.sh $var2
done < lists.txt
