require_relative './stores/repos_store'

class Store
  include Inesita::Injection

  include ReposStore

  attr_accessor :counter

  def initialize
    init_repos_store
  end

  def init
    @counter = 0
  end

  def increase
    @counter += 1
  end

  def decrease
    @counter -= 1
  end
end
