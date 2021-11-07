# require main parts of application

require 'router'
require 'store'

# require all components
require_tree './components'

# uncomment to trace render :
# require_relative 'trace_render'

# when document is ready render application to <body>

class Application
  include Inesita::Component

  inject Router
  inject Store

  def render
    div.container do
      component NavBar
      component router
    end
  end
end

Inesita::Browser.ready? do
  Application.mount_to(Inesita::Browser.body)
end
