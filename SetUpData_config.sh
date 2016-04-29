# == Software ==
export FREESURFER_HOME=/projects/schiz/ra/eli/freesurfer5.3
export ANTSSRC=/projects/schiz/software/ANTS-git/
export ANTSPATH=/projects/schiz/software/ANTS-git-build2/bin/
export ANTSPATH_epi=/projects/schiz/software/deprecated/ANTs-1.9.y-Linux/bin/

#EPICORRECTION=true
EPICORRECTION=false

# Source data - set 'dwiraw', 't1align', and optionally 't2'
# Note: '$base' is set in 'SetUpData.sh' to be the pipeline directory where
# this file is located, so use it if your source data is already in the
# pipeline directory like the examples here
dwiraw=$base/$case/raw/$case-dwi.nrrd # Required
#t1align=$base/$case/raw/$case-t1w.nrrd # Required
t1align=/projects/schiz/3Tdata/PRODROMES/2015-jun-prodrome/$case/strct_jun/align-space/$case-t1w-realign.nrrd
t2=$base/$case/raw/$case-t2w.nhdr # Optional: 't2' needed for dwi epi correction, masked much better than unmasked


# If you want the pipeline to stop and wait for you to edit the
# DWI mask or generated T1 mask, then uncomment these lines
ATLASMASK_EDIT=true
#DWIMASK_EDIT=true
