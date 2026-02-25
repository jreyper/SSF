#!/usr/bin/bash
mkdir -p IMGS DOCS TXTS PDFS VACIOS
IMGS=0
DOCS=0
TXTS=0
PDFS=0
VACIOS=0
for archivo in "Descargas"/*; do
  if [ -f "$archivo" ]; then
    case "$archivo" in
      (*.jpg|*.png|*.gif)
	mv "$archivo" IMGS/
	((IMGS++))
	;;
      (*.docx|*.odt)
	mv "$archivo" DOCS/
	((DOCS++))
	;;
      (*.txt)
	mv "$archivo" TXTS/
	((TXTS++))
	;;
      (*.pdf)
	mv "$archivo" PDFS/
	((PDFS++))
	;;
	esac
	fi
	done

find . -type f -empty -exec mv {} VACIOS/ \;
