class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.date :birthdate
      t.string :pro_team

      t.timestamps
    end
  end
end
