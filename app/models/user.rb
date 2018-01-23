class User < ApplicationRecord
  has_one :profile

  has_many :decisions,
  primary_key: 'id',
  foreign_key: 'decision_maker_id',
  class_name: 'Decision'
end
