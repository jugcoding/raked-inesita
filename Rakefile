# frozen_string_literal: true

require 'rubygems'
require 'bundler'

Bundler.require(:default)

require 'opal-rake'

Opal::Rake.config = {
  setup: {
    dist: { root: './public', js: 'js', css: 'css' },
    directory: %w[./tmp/pids ./log],

    npm_dev: %w[browserify],
    npm: %w[bootstrap @popperjs/core],
  },

  build: [
    [:slim, './assets/index.html.slim', { out: :root }],
    [:link, './assets/static', { out: :root }],
    [:browserify, './assets/js-bundle.js'],
    [:sass, './assets/stylesheet.css.sass'],
    [:opal, './assets/opal-runtime.rb', { single: true }],
    [:opal, './app/application.rb'],
  ]
}

task :server do
  sh 'bundle exec foreman start --root=./ -f ./config/Procfile.dev'
end
