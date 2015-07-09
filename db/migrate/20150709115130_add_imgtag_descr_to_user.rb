class AddImgtagDescrToUser < ActiveRecord::Migration
  def change
    add_column :users, :description, :string
    add_column :users, :img_tag, :string
  end
end
