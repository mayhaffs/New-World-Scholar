class RemoveResourceIdColumn < ActiveRecord::Migration
  def up
    remove_column :categories, :resource_id
  end

  def down
    add_column :categories, :resource_id, :integer
  end
end
