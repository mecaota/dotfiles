# macのgrepをGNU grepにする
export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH"
alias grep="$(brew --prefix grep)/libexec/gnubin/grep"

# php-buildが要求してくるやつ
export PHP_BUILD_CONFIGURE_OPTS="--with-bz2=$(brew --prefix bzip2) --with-iconv=$(brew --prefix libiconv) --with-tidy=$(brew --prefix tidy-html5) --with-jpeg=$(brew --prefix jpeg-turbo)"

# Rover cli
export PATH="$HOME/.rover/bin:$PATH"
