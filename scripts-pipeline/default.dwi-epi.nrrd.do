#!/bin/bash -eu

source scripts-pipeline/util.sh
inputvars="\
    dwiepi_dwi \
    dwiepi_dwimask \
    dwiepi_t2 \
    dwiepi_t2mask"
setupdo $@
#epi.sh $(varvalues $inputvars) $3
run scripts-pipeline/epi.sh $dwiepi_dwi $dwiepi_dwimask $dwiepi_t2 $dwiepi_t2mask $3
log_success "Made '$1'"
