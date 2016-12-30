# Docker on-off command aliases:
# https://github.com/michaloo/drun
alias drun='docker run -v `pwd`:/app --workdir /app -it --rm'
alias drunp='drun -p 80:80 -p 443:433'
