# Helpful Git Shortcuts : 
Function gits { git status -sb }
Function ga ( $Arguments ){ git add "$Arguments" }
Function gcan ( $Message ) { git add --all ; git commit -m "$Message" }
Function gcam ( $Message ) { git add --all ; git commit -m "$Message" ; git push -u origin master }
Function gra ( $URL ) { git remote add origin $URL }
Function grv { git remote -v }
Function grr { git remote remove origin }
Function gd { git diff }
Function gcg { git config --global -e }
Function ginit ( $URL ) { git init ; git remote add origin $URL }
