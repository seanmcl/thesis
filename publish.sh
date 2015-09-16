#!/bin/bash
DATE=$(date +%Y-%m-%d)

function pdf-pages {
  gs -q -dNODISPLAY -c "($1) (r) file runpdfbegin pdfpagecount = quit"
}


# Make thesis.pdf
pdflatex thesis
bibtex thesis
pdflatex thesis
pdflatex thesis

# Publish to S3
echo "Publishing thesis.pdf"
aws s3 cp thesis.pdf s3://www.seanmcl.com/content/thesis/thesis.pdf

# Page count
if ! grep $DATE pages.json; then
  echo "Publishing pages.json"
  echo "{\"date\": \"$DATE\", \"pages\": $(pdf-pages thesis.pdf)}" >> pages.json
  aws s3 cp pages.json s3://www.seanmcl.com/content/thesis/pages.json
fi

# Publish completely drafted chapters
#xargs -L1 ./one-publish.sh < to-publish
