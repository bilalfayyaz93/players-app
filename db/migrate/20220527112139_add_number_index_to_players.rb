class AddNumberIndexToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_index :players, :number
  end
end
