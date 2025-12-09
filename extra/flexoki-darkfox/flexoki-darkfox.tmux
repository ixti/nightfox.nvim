#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: flexoki-darkfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/flexoki-darkfox/flexoki-darkfox.tmux
set -g mode-style "fg=#000000,bg=#B7B5AC"
set -g message-style "fg=#000000,bg=#B7B5AC"
set -g message-command-style "fg=#000000,bg=#B7B5AC"
set -g pane-border-style "fg=#B7B5AC"
set -g pane-active-border-style "fg=#205ea6"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#B7B5AC,bg=#000000"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#000000,bg=#205ea6,bold] #S #[fg=#205ea6,bg=#000000,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#000000,bg=#000000,nobold,nounderscore,noitalics]#[fg=#205ea6,bg=#000000] #{prefix_highlight} #[fg=#B7B5AC,bg=#000000,nobold,nounderscore,noitalics]#[fg=#000000,bg=#B7B5AC] %Y-%m-%d  %I:%M %p #[fg=#205ea6,bg=#B7B5AC,nobold,nounderscore,noitalics]#[fg=#000000,bg=#205ea6,bold] #h "
setw -g window-status-activity-style "underscore,fg=#878580,bg=#000000"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#878580,bg=#000000"
setw -g window-status-format "#[fg=#000000,bg=#000000,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#000000,bg=#000000,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#000000,bg=#B7B5AC,nobold,nounderscore,noitalics]#[fg=#000000,bg=#B7B5AC,bold] #I  #W #F #[fg=#B7B5AC,bg=#000000,nobold,nounderscore,noitalics]"
