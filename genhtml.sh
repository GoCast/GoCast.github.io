#!/bin/bash

function genHtml() {
  curtime=`date +%s`
  html=`cat $1`
  html_ts=${html//GOCASTTIMESTAMP/$curtime}
  echo "$html_ts" > $2
}

echo "Generating index.html..."
genHtml indexsrc.html index.html
echo "Generating index.html... DONE"

echo "Generating demo.html..."
genHtml demosrc.html demo.html
echo "Generating demo.html... DONE"
