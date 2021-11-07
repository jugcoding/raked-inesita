# frozen_string_literal: true

require 'rack-livereload'
require File.absolute_path('backend/backend.rb')

use Rack::LiveReload, source: :livereload

run Backend
