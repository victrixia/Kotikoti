class CreateNewsitems < ActiveRecord::Migration
  def change
    create_table :newsitems do |t|
      t.string :name
      t.string :content

      t.timestamps null: false
    end
  end
end
