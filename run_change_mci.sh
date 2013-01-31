#!/bin/bash
for i in *.json
do
 ./change_json_key.rb $i
done
