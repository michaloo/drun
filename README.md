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

Init a NPM package:

`drun node npm init`

