module ReposStore
  def init_repos_store
    @repos = []
  end

  def fetch_repos
    Browser::HTTP.get 'https://reqres.in/api/users' do |req|
      req.on :success do |res|
        `console.log(#{res.json})`
        puts res.json['data']
        @repos = res.json['data']
        render!
      end
    end
  end

  def repos
    @repos
  end
end
