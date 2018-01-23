class Profile < ApplicationRecord
  belongs_to :user

  def self.get_potentials_of(user_id)
    Profile.find_by_sql(
      ['SELECT profiles.id FROM profiles 
       WHERE profiles.id NOT IN (SELECT id FROM decisions WHERE decision_maker_id = ?) 
       AND profiles.id NOT IN (?)
       AND profiles.sex = (
       SELECT sex FROM profiles WHERE profiles.id = (?)
       )', user_id, user_id, user_id]);
  end
end
