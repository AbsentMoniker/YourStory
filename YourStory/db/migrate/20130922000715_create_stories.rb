class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :body
      t.string :author
      t.boolean :beginning

      t.timestamps
    end
  end
end
