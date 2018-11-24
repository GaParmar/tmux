#!/bin/bash
tmux kill-server

DEV_PATH="~/Desktop/MLPC"
SESSION="session_MLPC"
tmux -2 new-session -d -s $SESSION


# create the grid of terminals
tmux split-window -h
tmux split-window -v
tmux select-pane -t 0
tmux split-window -v

tmux select-pane -t 3
tmux split-window -v

# top left
tmux select-pane -t 0
tmux send-keys "top" C-m

# top right
tmux select-pane -t 1
tmux send-keys "ssh gparmar@yanghui.ucsd.edu" C-m

tmux select-pane -t 2
tmux send-keys "jupyter notebook" C-m


# Reattach
tmux -2 attach-session -t $SESSION