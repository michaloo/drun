# drun
Bash alias to simplify running one-off commands using selected docker images.

## Installation

Add the alias to you `~/.bash_profile` file and restart terminal:

`curl https://raw.githubusercontent.com/michaloo/drun/master/alias.bash >> ~/.bash_profile`

## Usage

Run one-off command with current directory mounted to the container:

`drun [OPTIONS] IMAGE COMMAND [ARG...]`

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

