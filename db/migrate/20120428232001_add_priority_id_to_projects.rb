class AddPriorityIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :priority_id, :integer
  end
end
