class Event < ApplicationRecord
  has_and_belongs_to_many :users inverse_of: :event
end
