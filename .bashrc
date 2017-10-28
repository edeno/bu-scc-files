#
# default .bashrc
# 03/31/13
#
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

umask 022

# disable coredumps by default
ulimit -c 0

# User specific aliases and functions

alias rm='rm -i'
alias pfc='cd /projectnb/pfc-rule/Task-Switching-Analysis/'
alias braincom='cd /projectnb/braincom/Jadhav-2016-Data-Analysis/; source activate Jadhav-2016-Data-Analysis'
alias replay='cd /projectnb/braincom/Categorize-Replay-2017/; source activate Categorize_Replay_2017'


# Load tmux - for attaching sessions
module load tmux/2.0

# Load anaconda
module load anaconda3
module load libcurl

# insert the following to your .bashrc file
# source .bashrc to make the additions effective for current session
# points to system default version of matlab
MCRROOT=/usr/local/matlab
LD_LIBRARY_PATH=${MCRROOT}/runtime/glnxa64 ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/bin/glnxa64 ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/sys/os/glnxa64;
MCRJRE=${MCRROOT}/sys/java/jre/glnxa64/jre/lib/amd64 ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/native_threads ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/server ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/client ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE} ;
XAPPLRESDIR=${MCRROOT}/X11/app-defaults ;
export LD_LIBRARY_PATH;
export XAPPLRESDIR;

# conda environmental variable
export SCC_CONDA_ENVS=/projectnb/braincom/edeno/conda_envs
