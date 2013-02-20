class CreateCategoriesLinkResources < ActiveRecord::Migration
  def change
    create_table :categories_resources do |t|
      t.integer :resource_id
      t.integer :category_id

      t.timestamps
    end
  end
end
