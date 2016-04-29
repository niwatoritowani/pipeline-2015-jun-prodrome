#!/bin/bash

# todo
# befor running this script, need to `source SetUpFreesurfer.csh` in the terminal, Why? 

# set variables

source /home/jkonishi/junutil/util.sh
projectdir=/projects/schiz/3Tprojects/2015-jun-prodrome
caselist=${projectdir}/caselist/caselist_freesurfer2.txt
freesurfersettings=SetUpFreeSurfer.csh
cases=($(cat ${caselist}))
for i in $(seq 0 $(expr ${#cases[@]} - 1)); do
#    fscases[i]=${cases[i]}/strct/${cases[i]}.freesurfer.edited
    echo "setenv SUBJECTS_DIR /rfanfs/pnl-zorro/Collaborators/jun/2015-jun-prodrome/pipeline/${cases[i]}/strct"
#    printf "recon-all -segstats -subjid %s/strct/%s.freesurfer.edited\n" ${cases[i]} ${cases[i]}
    echo "recon-all -segstats -subjid ${cases[i]}.freesurfer.edited"
done

# start running program

startlogging

#tcsh ${freesurfersettings}    # This does not work well. Why? 

#run asegstats2table --subjects ${fscases[@]} --meas volume --tablefile edited.aseg_stats.txt --skip
#run aparcstats2table --subjects ${fscases[@]} --hemi rh --meas volume --tablefile edited.aparc_stats_rh_volume.txt --skip
#run aparcstats2table --subjects ${fscases[@]} --hemi lh --meas volume --tablefile edited.aparc_stats_lh_volume.txt --skip

#echo ${fscases[@]}

stoplogging $0.log

