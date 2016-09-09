#!/bin/bash
#set -x

INFILE="${1}"
OUTFILE="PDFA-${1}"

./gs-919-linux_x86_64 -dPDFA=1 -dNOOUTERSAVE -sProcessColorModel=DeviceRGB -sDEVICE=pdfwrite -o $OUTFILE PDFA_def.ps -dPDFACompatibilityPolicy=1 $INFILE
