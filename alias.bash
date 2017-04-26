# Docker one-off command alias:
# https://github.com/michaloo/drun
alias drun='docker run -u $(id -u):$(id -g) -v ~/.drun:/drun -e HOME=/drun -v `pwd`:/app --workdir /app -it --rm --network=host'
