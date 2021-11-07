# [Inesita](https://github.com/inesita-rb/inesita) web application example

Fork of : [Inesita Demo App](https://github.com/inesita-rb/playground)

## Modifications :

* last Opal version
* sprocket v4 BUG fixed by replacing it with rake (x3 to x5 speed) [Opal Rake](https://github.com/jugcoding/opal-rake)
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

## Other rake tasks :
* bundle exec rake compile : recompile assets and opal ruby app.
* bundle exec rake reset : cleanup, then setup.
