class AddLikedToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :like_count, :integer
    add_column :projects, :liked, :string
  end
end
