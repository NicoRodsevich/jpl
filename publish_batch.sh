#!/bin/bash
# Publica los paquetes pendientes (hasta tocar el límite diario de pub.dev de 12 nuevos/día).
# Reescribe .pending.txt con los que falten. Idempotente: re-ejecutar al día siguiente continúa.
ROOT=/Users/nicolas.rodsevich/src/jpl
PEND="$ROOT/.pending.txt"
LOG="$ROOT/.cascade.log"
[ -f "$PEND" ] || { echo "No hay .pending.txt — nada que publicar."; exit 0; }
remaining=()
done_count=0
limited=0
while read -r d; do
  [ -z "$d" ] && continue
  if [ "$limited" = "1" ]; then remaining+=("$d"); continue; fi
  out=$(cd "$ROOT/packages/$d" && dart pub publish --force 2>&1)
  if echo "$out" | grep -q "Successfully uploaded"; then
    echo "$(date '+%H:%M') OK $d" >> "$LOG"; done_count=$((done_count+1))
  elif echo "$out" | grep -qi "rate limit"; then
    echo "$(date '+%H:%M') RATELIMIT en $d — corto el lote" >> "$LOG"; limited=1; remaining+=("$d")
  elif echo "$out" | grep -qi "already.*exist\|same content"; then
    echo "$(date '+%H:%M') YA-EXISTE $d (ok)" >> "$LOG"; done_count=$((done_count+1))
  else
    echo "$(date '+%H:%M') FAIL $d :: $(echo "$out" | grep -iE 'error|denied|failed' | head -1)" >> "$LOG"; remaining+=("$d")
  fi
done < "$PEND"
printf '%s\n' "${remaining[@]}" > "$PEND"
echo "Lote: $done_count publicados | $(grep -c . "$PEND" 2>/dev/null || echo 0) pendientes"
[ ! -s "$PEND" ] && echo "=== TODOS PUBLICADOS ===" && rm -f "$PEND"
