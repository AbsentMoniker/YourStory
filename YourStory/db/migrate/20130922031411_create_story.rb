class CreateStory < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :body
      t.references :user, index: true
    end
  end
end
