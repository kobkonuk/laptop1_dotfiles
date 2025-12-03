set fish_greeting ''

set -x PATH ~/.local/bin/ $PATH

if test -f ~/.cache/wal/sequences
    cat ~/.cache/wal/sequences
end

if status is-interactive
	# commands to run in interactive sessions
end
