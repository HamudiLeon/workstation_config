function _tide_item_git
    set -l location $_tide_location_color(git branch --show-current 2>/dev/null) || return
    # --quiet = don't error if there are no commits
    git rev-parse --quiet --git-dir --is-inside-git-dir --short HEAD |
    read --local --line git_dir is_inside_git_dir sha

    if test -z "$location" # Default to branch, then tag, then sha
        set location '#'$_tide_location_color(git tag --points-at HEAD)[1] # get the first tag
        test -z "$location" && set location '@'$_tide_location_color$sha
    end
w

    _tide_print_item git $_tide_location_color $tide_git_icon' ' (set_color white; printf %s $location
        set_color $tide_git_color_operation; printf %s ' '$tide_git_operation ' '$tide_git_step/$tide_git_total_steps
        set_color $tide_git_color_upstream; printf %s ' ⇣'$upstream_behind ' ⇡'$upstream_ahead
        set_color $tide_git_color_stash; printf %s ' *'$stash
        set_color $tide_git_color_conflicted; printf %s ' ~'$conflicted
        set_color $tide_git_color_staged; printf %s ' +'$staged
        set_color $tide_git_color_dirty; printf %s ' !'$dirty
        set_color $tide_git_color_untracked; printf %s ' ?'$untracked)
end
