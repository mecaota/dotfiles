# macのgrepをGNU grepにする
export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH"
alias grep="$(brew --prefix grep)/libexec/gnubin/grep"

# Rover cli
export PATH="$HOME/.rover/bin:$PATH"
