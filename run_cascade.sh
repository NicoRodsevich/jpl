#!/bin/bash
ROOT=/Users/nicolas.rodsevich/src/jpl/packages
LOG=/Users/nicolas.rodsevich/src/jpl/.cascade.log
LIST="$1"
: > "$LOG"
while read -r d; do
  [ -z "$d" ] && continue
  [ "$d" = "jpl_json_class" ] && { echo "SKIP $d (canary ya publicado)" >> "$LOG"; continue; }
  cd "$ROOT/$d" || { echo "FAIL $d (no dir)" >> "$LOG"; continue; }
  out=$(dart pub publish --force 2>&1)
  if echo "$out" | grep -q "Successfully uploaded"; then
    echo "OK $d" >> "$LOG"
  else
    echo "FAIL $d :: $(echo "$out" | grep -iE 'error|denied|already|failed' | head -2 | tr '\n' ' ')" >> "$LOG"
  fi
done < "$LIST"
echo "=== CASCADA COMPLETA ===" >> "$LOG"
