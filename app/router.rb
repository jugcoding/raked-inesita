class Router
  include Inesita::Router

  def routes
    route '/', to: Home
    route '/description', to: Description
    route '/counter', to: Counter
    route '/repositories', to: Repositories
  end
end
