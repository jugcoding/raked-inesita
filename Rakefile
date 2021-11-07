# frozen_string_literal: true

require 'rubygems'
require 'bundler'

Bundler.require(:default)

ENV['OPAL_CACHE_DIR'] = './tmp/opal-builder/'

require 'opal-rake'

task :server do
  sh 'bundle exec foreman start --root=./ -f ./config/Procfile.dev'
end

Opal::Rake.config = {
  setup: {
    # this paths will be automatically created, they can be referenced by build task :
    paths: { root: './public', js: './public/js', css: './public/css' },

    # additional automatic directories creation :
    directory: %w[./tmp/pids ./log],

    # npm module installation :
    npm_dev: %w[browserify],
    npm: %w[bootstrap @popperjs/core],
  },

  # build of the various assets :
  build: [
    [:slim, './assets/index.html.slim', { out: :root }],
    [:link, './assets/static', { out: :root }],
    [:browserify, './assets/js-bundle.js'],
    [:sass, './assets/stylesheet.css.sass'],

    [:opal, './assets/opal-runtime.rb', { single: true }],
    [:opal, './app/application.rb'],
  ]

  # you can specify the output path by referencing a key in setup: :paths for ex { out: :js}
  # some mapper have default for ex :sass default to :css
  # you can examine all mappers here : https://github.com/jugcoding/opal-rake/tree/master/lib/opal/rake/mapper
  # you can easily write new one (adapt a existant one and require it in the Rakefile)
  # by default the :opal mapper add all file under parent folder in the prerequisites of the rake task
  # example : for './app/application.rb' : all files under './app' are watcheds by the corresponding task.
  # the option {single: true} prevent this (see below for opal-runtime)
  # see: https://github.com/jugcoding/opal-rake/blob/master/lib/opal/rake/mapper/opal.rb
}
