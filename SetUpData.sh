export PATH=/projects/pnl/software/pnlutil/pipeline/pipeline/scripts-pipeline:$PATH
base=$(readlink -m ${BASH_SOURCE[0]})
base=${base%/*}
caselist=$base/caselist
source SetUpData_config.sh
source SetUpData_pipeline.sh
