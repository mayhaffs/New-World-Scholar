class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :picture
      t.string :url
      t.string :category

      t.timestamps
    end
  end
end
