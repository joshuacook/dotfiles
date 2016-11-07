file=$1
filename="${file%.*}_notes"

cp ~/stat/bin/note_tool.latex .

pdftk $1 burst
touch new_pdf.md

for f in pg*.pdf
do
    echo "![]($f)" >> new_pdf.md
    echo " " >> new_pdf.md
    echo " " >> new_pdf.md
    echo "\\pagebreak" >> new_pdf.md
done

docker run -v `pwd`:/source pandoc -f markdown new_pdf.md --template=note_tool.latex -o $filename.pdf

rm new_pdf.md
rm note_tool.latex
rm pg*.pdf
