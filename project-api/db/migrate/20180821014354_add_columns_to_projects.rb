class AddColumnsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :studio, :string
    add_column :projects, :location, :string 
    add_column :projects, :genre, :string
  end
end
