class Mentor < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :topics, through: :mentor_topics
  has_many :ratings, through: :bookings
  has_many :mentor_topics, dependent: :destroy
end
