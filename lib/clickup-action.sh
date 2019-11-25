#!/usr/bin/env bash

#Used to send the proper post request to ClickUp API to change
#the status of the task that a PR is referencing.

TASK_ID=$(echo ${INPUT_HEAD_REF} | sed -E 's#^([a-z0-9]+)-.*$#\1#')
curl --include \
     --request PUT \
     --header "Authorization: ${INPUT_CLICKUP_SECRET}" \
     --header "Content-Type: application/json" \
     --data-binary "{\"status\":\"${INPUT_STATUS}\"}" \
"https://api.clickup.com/api/v2/task/${TASK_ID}"

