#!/bin/bash
cd /tmp/informatica-flow-viewer 2>/dev/null || {
  echo "重新建立工作目錄..."
  mkdir -p /tmp/informatica-flow-viewer
  cd /tmp/informatica-flow-viewer
  git init
  git remote add origin https://github.com/a167427/informatica-flow-viewer.git
  git pull origin main 2>/dev/null
}
cp /Users/yu/Documents/cluade/trinity_converter/informatica_flow_viewer.html /tmp/informatica-flow-viewer/index.html
cd /tmp/informatica-flow-viewer
git add .
git commit -m "v4.58: single upload populates all 3 tabs (infa/trinity/sqlgen cross-sync)"
git push origin main
