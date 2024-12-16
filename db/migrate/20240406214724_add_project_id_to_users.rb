class AddProjectIdToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :project_id, :integer
  end
end
