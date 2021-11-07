# frozen_string_literal: true

require 'opal'

# fix missing IO::Writable module (for browser/socket to work)
require 'assets/opal-browser-fix'

require 'inesita'
require 'inesita-router'

require 'promise'

require 'browser'
require 'browser/socket'
require 'browser/http'
