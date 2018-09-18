class AddLikesToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :like, :integer
  end
end
