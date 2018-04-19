class Transaction < ApplicationRecord
  belongs_to :user
  validates :description, presence: true

  belongs_to :event
end
