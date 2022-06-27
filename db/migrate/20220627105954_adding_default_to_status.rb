class AddingDefaultToStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :todo_models, :status, :boolean, default: false
  end
end
