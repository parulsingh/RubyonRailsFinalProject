class AddContentToJokes < ActiveRecord::Migration
  def change
    add_column :jokes, :content, :string
  end
end
