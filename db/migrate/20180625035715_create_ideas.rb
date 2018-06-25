class CreateIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :ideas do |t|
      t.references :user, foreign_key: true
      t.text :idea_text, null: false
      t.string :image_url
      t.timestamps
    end
  end
end
