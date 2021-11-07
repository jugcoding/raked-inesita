class Repositories
  include Inesita::Component

  def fetch_repos
    store.fetch_repos
  end

  def render
    button.btn.btn_default.btn_primary onclick: -> { fetch_repos } do
      text 'Fetch repos'
    end
    table class: 'table' do
      thead do
        tr do
          th { text '#ID' }
          th { text 'Name' }
          th { text 'Avatar' }
          th { text 'Owner' }
        end
      end
      tbody do
        store.repos.each do |repo|
          tr do
            th { text repo['id'] }
            td { text "#{repo['first_name']} #{repo['last_name']}" }
            td { img height: 25, width: 25, src: repo['avatar'] }
            td { text repo['email'] }
          end
        end
      end
    end
  end
end
