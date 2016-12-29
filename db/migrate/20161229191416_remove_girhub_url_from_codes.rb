class RemoveGirhubUrlFromCodes < ActiveRecord::Migration
  def change
    remove_column :codes, :girhub_url, :string
  end
end
