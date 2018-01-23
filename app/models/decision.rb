class Decision < ApplicationRecord
  belongs_to :user,
  primary_key: 'id',
  foreign_key: 'decision_maker_id',
  class_name: 'User'
end
