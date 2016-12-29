class AddGithubUrlToCodes < ActiveRecord::Migration
  def change
    add_column :codes, :github_url, :string
  end
end
