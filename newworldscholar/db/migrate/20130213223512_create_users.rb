class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :pic_url
      t.string :website_url
      t.string :description

      t.timestamps
    end
  end
end
