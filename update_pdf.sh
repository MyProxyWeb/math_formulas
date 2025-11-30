#!/bin/bash
# update_pdf.sh
# Replaces final.pdf with out.pdf

# Check if out.pdf exists
if [ ! -f "out.pdf" ]; then
    echo "Error: out.pdf does not exist!"
    exit 1
fi

# Replace final.pdf with out.pdf
mv -f out.pdf final.pdf
echo "final.pdf has been updated with out.pdf"
