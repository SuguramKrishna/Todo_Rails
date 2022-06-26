class Renamingcolumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :todo_models , :Description , :description
    rename_column :todo_models , :Task , :task
    rename_column :todo_models , :Status , :status
    rename_column :todo_models , :Date , :date
  end
end
