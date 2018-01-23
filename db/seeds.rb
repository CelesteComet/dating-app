# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    # create_table :users do |t|
    #   t.string :email, null: false
    #   t.string :password_digest, null: false
    #   t.string :session_token, null: false

    # create_table :decisions do |t|
    #   t.integer :decision_maker_id
    #   t.integer :decision_receiver_id
    #   t.boolean :approved, default: false
    #   t.boolean :active, default: true

    #   t.timestamps
    # end
    # add_index :decisions, :decision_maker_id 
    # add_index :decisions, :decision_receiver_id

10.times do |m|
  user = User.create!(
    email: Faker::Internet.email,
    password_digest: SecureRandom.urlsafe_base64,
    session_token: SecureRandom.urlsafe_base64
    );

  Profile.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user_id: user.id,
    sex: 'male'
  )
end

Decision.create!(
  decision_maker_id: 1,
  decision_receiver_id: 2,
  approved: true,
  active: true
)

Decision.create!(
  decision_maker_id: 1,
  decision_receiver_id: 3,
  approved: true,
  active: true
)

Decision.create!(
  decision_maker_id: 1,
  decision_receiver_id: 4,
  approved: true,
  active: true
)

Decision.create!(
  decision_maker_id: 1,
  decision_receiver_id: 10,
  approved: true,
  active: true
)

