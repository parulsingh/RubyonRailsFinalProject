class AddStuffToJoke < ActiveRecord::Migration
  def change
    add_column :jokes, :class, :stringcontent
    add_column :jokes, :likes, :int
  end
end
