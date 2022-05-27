class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name, null: false
      t.integer :number

      t.timestamps
    end
  end
end