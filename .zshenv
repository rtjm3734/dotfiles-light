#
# Defines environment variables.
#
# Authors:
#   Byron Dover <byrondover@gmail.com>
#
# Contributors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Increase command line history cache size.
export HISTSIZE=1000000

# virtualenvwrapper environment variables.
export PROJECT_HOME=$HOME/code
export WORKON_HOME=$HOME/.virtualenvs

export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

# Set options for less.
export LESS='--ignore-case --quit-if-one-screen --status-column --tabs=4 --LONG-PROMPT --RAW-CONTROL-CHARS'

# Set colors for less.
# Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less.
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Go path.
export GOPATH=$HOME/code/go
