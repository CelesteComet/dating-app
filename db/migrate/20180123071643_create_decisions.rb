class CreateDecisions < ActiveRecord::Migration[5.1]
  def change
    create_table :decisions do |t|
      t.integer :decision_maker_id
      t.integer :decision_receiver_id
      t.boolean :approved, default: false
      t.boolean :active, default: true

      t.timestamps
    end
    add_index :decisions, :decision_maker_id 
    add_index :decisions, :decision_receiver_id
  end
end

