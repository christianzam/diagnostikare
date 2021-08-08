class Appointment < ApplicationRecord
  validates :symptoms, length: { minimum: 5 }
  has_many_attached :photos
  belongs_to :user
  belongs_to :doctor
end
