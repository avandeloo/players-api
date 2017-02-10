class AddLocationToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :location, :string
    add_column :players, :quote, :text
  end
end
