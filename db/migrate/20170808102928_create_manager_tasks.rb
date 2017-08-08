class CreateManagerTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :manager_tasks do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
