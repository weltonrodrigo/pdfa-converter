#!/bin/bash
#set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

INFILE="${1}"
OUTFILE="PDFA-${1}"

./gs-919-linux_x86_64 -dPDFA=1 -dNOOUTERSAVE -sProcessColorModel=DeviceRGB -sDEVICE=pdfwrite -o $OUTFILE ${DIR}/PDFA_def.ps -dPDFACompatibilityPolicy=1 $INFILE
