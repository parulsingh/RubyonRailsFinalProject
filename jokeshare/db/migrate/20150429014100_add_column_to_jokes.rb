class AddColumnToJokes < ActiveRecord::Migration
  def change
    add_column :jokes, :course_id, :integer
  end
end
