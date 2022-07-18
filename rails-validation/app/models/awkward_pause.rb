class AwkwardPause < ApplicationRecord
  validates :location, presence: true
  validates :topic, presence: true
  validates :minutes, numericality: { only_integer: true }
end
