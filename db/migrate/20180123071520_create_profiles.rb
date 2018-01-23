class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :distance, default: 2
      t.string :sexual_preference
      t.integer :min_age, default: 18
      t.integer :max_age, default: 25
      t.boolean :discovery, default: true
      t.string :gender
      t.string :work
      t.string :school
      t.text :about
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :sex
      t.integer :user_id, null: false

      t.timestamps
    end
    add_index :profiles, :user_id, unique: true
  end
end
