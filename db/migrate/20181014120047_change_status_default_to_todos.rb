class ChangeStatusDefaultToTodos < ActiveRecord::Migration[5.2]
  def change
    change_column_default :todos, :status, from: nil, to: 0 
  end
end
