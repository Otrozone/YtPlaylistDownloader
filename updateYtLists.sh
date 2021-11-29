#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
while IFS="" read -r p || [ -n "$p" ]
do
  IFS='|' read var1 var2 <<< $p
  mkdir -p "${SCRIPT_DIR}/${var1}"
  cd "${SCRIPT_DIR}/${var1}"
  ${SCRIPT_DIR}/updateYtList.sh $var2
done < lists.txt
