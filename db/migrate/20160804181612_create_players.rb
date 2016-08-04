class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :nationality, null: false
      t.string :position, null: false
      t.date :birthdate, null: false

      t.timestamps
    end
  end
end
