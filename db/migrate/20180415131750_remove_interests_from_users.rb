class RemoveInterestsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :interests, :string
  end
end
