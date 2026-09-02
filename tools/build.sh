#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

pandoc ../rulebooks/operational-guidance-incident-handling.md --from=markdown+yaml_metadata_block+grid_tables+pipe_tables+footnotes+raw_tex-raw_attribute --sandbox --columns=10 --pdf-engine=xelatex --template=eisvogel --toc-depth=2 --dpi=96 --tab-stop=4 --wrap=auto --toc --lua-filter=filters/heading-level-2.lua --lua-filter=filters/table-column-widths.lua --metadata=table-width-mode:auto --lua-filter=filters/keep-headings-with-next.lua --metadata=keep-heading-min-level:2 --metadata=keep-heading-lines:6 --syntax-highlighting=idiomatic -V papersize=a4 -V fontsize=12pt -V geometry=margin=2cm -V lang=en-GB -V colorlinks=true -V linkcolor=blue -V urlcolor=red -V toccolor=gray -V citecolor=green -V toc-own-page=true -V footnotes-pretty=true -V table-use-row-colors=true -V titlepage=true -V titlepage-color=FFFFFF -V titlepage-text-color=5F5F5F -V titlepage-rule-color=435488 -V titlepage-rule-height=4 -V caption-justification=raggedright -V linestretch=1.15 -V classoption=oneside -V 'code-block-font-size=\small' -V float-placement-figure=htbp -V 'header-left=\thetitle' -V 'header-right=\thedate' -V 'footer-left=\rightmark' -V 'footer-right=\thepage' -o output.pdf
cp output.pdf ../rulebooks/operational-guidance-incident-handling.pdf
