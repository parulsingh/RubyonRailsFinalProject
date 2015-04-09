class AddStuffToComment < ActiveRecord::Migration
  def change
    add_column :comments, :comment_content, :string
  end
end
