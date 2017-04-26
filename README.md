# drun
Bash alias to simplify running one-off commands using selected docker images.

## Installation

Add the alias to you `~/.bash_profile` file and source it (alternatively restart terminal):

`curl https://raw.githubusercontent.com/michaloo/drun/master/alias.bash >> ~/.bash_profile`

`source ~/.bash_profile`

## Usage

Run one-off command with current directory mounted to the container:

`drun [OPTIONS] IMAGE[:TAG|@DIGEST] [COMMAND] [ARG...]`

Notice that the form of the command is compatible with [docker run](https://docs.docker.com/engine/reference/run/). All options will be passed to docker.

## Examples

List current files using official Node image:

`drun node node -e "console.log(require('fs').readdirSync('.'))"`

List current files using official Alpine image:

`drun alpine ls`

Connect to a selected MySQL/MariaDB database:

`drun mariadb mysql -h localhost -u test`

Serve PHP files using built in PHP server

`drun -p 80:80 php php -S 0.0.0.0:80`

Serve static files using Python2

`drun -p 8000:8000 python:2-alpine python -m SimpleHTTPServer 8000`

Serve static files using Python3 (there are plenty other options [here](https://gist.github.com/willurd/5720255))

`drun -p 8000:8000 python:3-alpine python -m http.server 8000`

Init a NPM package:

`drun node npm init`

Needs other node version? Nothing easier:

`drun node:5 npm start`

Start IRC client:

`drun irssi:alpine`

## More?

If you have any more interesting examples of using docker images
in context of current directory, let me know by forking that repo
and adding it to this README :)

## What it does exactly?

1. runs a container for selected image with interactive options passed
2. mounts the current directory inside the container and sets workdir for it
3. makes sure that the container will be removed after it exits
4. sets container user to the current user (thanks [Leynos](https://news.ycombinator.com/item?id=13284468))
5. mounts host ~/.drun directory to the container and sets home for it - that's simple support for caching
