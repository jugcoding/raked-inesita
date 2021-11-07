# frozen_string_literal: true

source 'https://rubygems.org'

# rake tasks :
path = File.expand_path('../opal-rake')
if File.exist? path
  gem 'opal-rake', path: path
else
  gem 'opal-rake', git: 'https://github.com/jugcoding/opal-rake'
end

# inesita gems
gem 'inesita', '~> 0.9.0'
gem 'inesita-router', '~> 0.3.0'
gem 'opal-browser', git: 'https://github.com/opal/opal-browser'

# backend
gem 'sinatra'

# mappers
gem 'sassc'
gem 'slim'
gem 'uglifier'

# foreman
gem 'foreman'

# fancy utils
gem 'rainbow'

group :development, :test do
  gem 'guard'
  gem 'guard-livereload'
  gem 'guard-rake'
  gem 'rack-livereload'
end
