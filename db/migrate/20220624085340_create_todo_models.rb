class CreateTodoModels < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_models do |t|
      t.string :Task
      t.string :Description
      t.boolean :Status
      t.date :Date
      t.timestamps
    end
  end
end
