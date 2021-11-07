# frozen_string_literal: true

require 'sinatra/base'

class Backend < Sinatra::Base
  set :public_folder, './public'

  get '/*' do # '/*' => to make livereload work with inesita router
    send_file File.join(settings.public_folder, 'index.html')
  end
end
