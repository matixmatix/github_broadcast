class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :strategy_id

      t.timestamps
    end
  end
end
