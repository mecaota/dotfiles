# macのgrepをGNU grepにする
alias grep="$(brew --prefix grep)/libexec/gnubin/grep"

# macのgitをbrew経由のgitにする
alias git="$(brew --prefix git)/bin/git"

# Rover cli
export PATH="$HOME/.rover/bin:$PATH"

# mysql client@8.0
export PATH="$(brew --prefix mysql-client)@8.0/bin:$PATH"
