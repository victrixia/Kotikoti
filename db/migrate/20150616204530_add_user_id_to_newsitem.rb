class AddUserIdToNewsitem < ActiveRecord::Migration
  def change
    add_column :newsitems, :user_id, :integer
  end
end
