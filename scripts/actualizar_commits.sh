#!/bin/bash

# Ir al directorio raíz del proyecto si estás en otro lugar
cd "$(git rev-parse --show-toplevel)" || exit 1

# Iterar sobre todas las carpetas dentro de LEETCODE/SQL/
for dir in LEETCODE/SQL/*/ ; do
  # Saltar si no es un directorio
  [ -d "$dir" ] || continue

  cd "$dir" || continue

  # Obtener el último commit para esa carpeta
  last_commit=$(git log -1 --pretty=format:"%H" -- .)
  last_message=$(git log -1 --pretty=format:"%s" "$last_commit")

  if [ "$last_message" = "a" ]; then
    # Obtener la fecha del commit (formato corto)
    commit_date=$(git log -1 --pretty=format:"%cd" --date=format:"%Y-%m-%d %H:%M" "$last_commit")

    echo "📂 $dir → Reemplazando 'a' con timestamp $commit_date"

    # Crear nuevo commit vacío con solo la fecha como mensaje
    git commit --allow-empty -m "$commit_date"
  fi

  cd - > /dev/null
done

echo "✅ Listo. Puedes hacer 'git push' para subir los nuevos commits."
