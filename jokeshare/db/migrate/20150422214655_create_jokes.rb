class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :content
      t.string :jokeclass
      t.integer :likes

      t.timestamps
    end
  end
end
