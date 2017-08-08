class AddDuedateToManagerTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :manager_tasks, :due_date, :date
  end
end
