#!/usr/bin/env bash
globalModules=(
  pep8
)

for i in ${globalModules[@]}
do
  echo $i
  sudo pip install -g $i
done