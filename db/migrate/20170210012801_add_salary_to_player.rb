class AddSalaryToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :salary, :decimal
  end
end
