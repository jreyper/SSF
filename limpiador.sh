#!/usr/bin/bash
mkdir -p IMGS DOCS TXTS PDFS VACIOS
ContIMGS=0
ContDOCS=0
ContTXTS=0
ContPDFS=0
ContVACIOS=0
for archivo in "/home/oem/SSF"/*; do
  if [ -f "$archivo" ]; then
    case "$archivo" in
      *.jpg|*.png|*.gif)
        mv "$archivo" IMGS/
        ((ContIMGS++))
        ;;
      *.docx|*.odt)
        mv "$archivo" DOCS/
        ((ContDOCS++))
        ;;
      *.txt)
        mv "$archivo" TXTS/
        ((ContTXTS++))
        ;;
      *.pdf)
        mv "$archivo" PDFS/
        ((ContPDFS++))
        ;;
    esac
  fi
done
find "/home/oem/SSF"  -type f -size 0 -exec mv {} VACIOS/ \;
((ContVACIOS++))
echo "Archivos movidos:"
echo "Imágenes: "$ContIMGS
echo "Documentos: "$ContDOCS
echo "Textos: "$ContPDFS
echo "PDFS: "$ContPDFS
echo "Archivos vacíos: "$ContVACIOS
