#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: carbonfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/carbonfox/carbonfox.tmux
set -g mode-style "fg=#0d0b0b,bg=#8d8989"
set -g message-style "fg=#0d0b0b,bg=#8d8989"
set -g message-command-style "fg=#0d0b0b,bg=#8d8989"
set -g pane-border-style "fg=#8d8989"
set -g pane-active-border-style "fg=#4589ff"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#8d8989,bg=#0d0b0b"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#0d0b0b,bg=#4589ff,bold] #S #[fg=#4589ff,bg=#0d0b0b,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#0d0b0b,bg=#0d0b0b,nobold,nounderscore,noitalics]#[fg=#4589ff,bg=#0d0b0b] #{prefix_highlight} #[fg=#8d8989,bg=#0d0b0b,nobold,nounderscore,noitalics]#[fg=#0d0b0b,bg=#8d8989] %Y-%m-%d  %I:%M %p #[fg=#4589ff,bg=#8d8989,nobold,nounderscore,noitalics]#[fg=#0d0b0b,bg=#4589ff,bold] #h "
setw -g window-status-activity-style "underscore,fg=#504e4d,bg=#0d0b0b"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#504e4d,bg=#0d0b0b"
setw -g window-status-format "#[fg=#0d0b0b,bg=#0d0b0b,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#0d0b0b,bg=#0d0b0b,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#0d0b0b,bg=#8d8989,nobold,nounderscore,noitalics]#[fg=#0d0b0b,bg=#8d8989,bold] #I  #W #F #[fg=#8d8989,bg=#0d0b0b,nobold,nounderscore,noitalics]"
