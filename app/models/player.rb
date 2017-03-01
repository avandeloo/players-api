class Player < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
#   validates :position, presence: true
#   validates :birthdate, presence: true
#   validates :pro_team, presence: true
#   validates :salary, presence: true
#   validates :location, presence: true
#   validates :quote, presence: true
end
