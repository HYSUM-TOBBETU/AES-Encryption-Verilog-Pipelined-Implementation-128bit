#!/bin/bash -f
xv_path="/opt/XilinxBroken/Vivado/2016.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto a578bf3b64574a489239148e6af7b6b9 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip --snapshot aes_wrapper_behav xil_defaultlib.aes_wrapper xil_defaultlib.glbl -log elaborate.log
