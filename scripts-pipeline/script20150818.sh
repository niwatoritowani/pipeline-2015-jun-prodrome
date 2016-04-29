#!/bin/bash
# Usage: $0 [case id]
# $1 is the first argument
case=$1
subjectdir=/projects/schiz/3Tdata/PRODROMES/2015-jun-prodrome/${case}
editedbetmask=${subjectdir}/strct_jun/align-space/${case}-t1w-realign-brain_mask-edr.nrrd
base=/rfanfs/pnl-zorro/Collaborators/jun/2015-jun-prodrome/pipeline

mkdir ${base}/${case}
mkdir ${base}/${case}/strct

cp ${editedbetmask} ${base}/${case}/strct/${case}.t1atlasmask.edited.nrrd
