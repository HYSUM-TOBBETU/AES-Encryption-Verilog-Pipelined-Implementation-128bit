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
ExecStep $xv_path/bin/xsim aes_wrapper_behav -key {Behavioral:sim_1:Functional:aes_wrapper} -tclbatch aes_wrapper.tcl -log simulate.log
