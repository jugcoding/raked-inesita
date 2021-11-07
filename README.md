# [Inesita](https://github.com/inesita-rb/inesita) web application example

Fork of : [Inesita Demo App](https://github.com/inesita-rb/playground)

## Modifications :

* latest Opal version (1.3.1)
* sprocket v4 BUG fixed by replacing it with rake [Opal Rake](https://github.com/jugcoding/opal-rake)
* fast compilation time (recompilation is instant thanks to new Opal Builder)
* npm + browserify
* sass
* livereload (guard + guard-rake + guard-livereload + rack-livereload)
* sinatra backend server
* foreman

## Installation

### dev env example for ubuntu :
```sh
$ sudo apt-get update
$ sudo apt-get install ruby ruby-bundler ruby-dev build-essential npm
$ bundle install
$ rake setup
$ rake server
```

### the app
```sh
$ git clone https://github.com/jugcoding/raked-inesita.git
$ cd raked-inesita
$ bundle install
$ bundle exec rake setup
$ bundle exec rake server
```

Go to [http://localhost:9292/](http://localhost:9292/)

edit some file under ./app and see livereload magic.


## Other rake tasks :
* bundle exec rake compile : recompile assets and opal ruby app.
* bundle exec rake reset : cleanup public, then recompile.
* bundle exec rake full_reset : cleanup node_module, public, then reinstall and recompile.
