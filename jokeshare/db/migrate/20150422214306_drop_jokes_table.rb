class DropJokesTable < ActiveRecord::Migration
  def up
  	drop_table :jokes
  end

end
