# macのgrepをGNU grepにする
export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH"
alias grep="$(brew --prefix grep)/libexec/gnubin/grep"

# macのgitをbrew経由のgitにする
export PATH="$(brew --prefix git)/bin/git:$PATH"
alias git="$(brew --prefix git)/bin/git"

# Rover cli
export PATH="$HOME/.rover/bin:$PATH"

# mysql client@8.0
export PATH="$(brew --prefix mysql-client)@8.0/bin:$PATH"
