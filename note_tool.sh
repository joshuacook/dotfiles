name=$1
log_file="Logone.txt"

if [[ -n "$name" ]]; then
    pdftk $name burst
else
    echo "argument error"
fi

for f in pg*.pdf
do
    echo "Removing password for pdf file - $f"
done

rm pg*.pdf
