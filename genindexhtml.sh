#!/bin/bash

function genIndexHtml() {
  curtime=`date +%s`
  index_html=`cat $1`
  index_html_ts=${index_html//GOCASTTIMESTAMP/$curtime}
  echo "$index_html_ts" > index.html
}

echo "Generating index.html..."
genIndexHtml indexsrc.html
echo "Generating index.html... DONE"

