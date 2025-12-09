# Nightfox Color Palette
# Style: flexoki-darkfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/flexoki-darkfox/flexoki-darkfox.fish
set -l foreground CECDC3
set -l selection 282726
set -l comment 6F6E69
set -l red af3029
set -l orange bc5215
set -l yellow ad8301
set -l green 66800b
set -l purple 5e409d
set -l cyan 24837b
set -l pink a02f6f

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
