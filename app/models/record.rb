class Record < ApplicationRecord
  belongs_to :record_type
  belongs_to :user

  validates :qt, :user, :record_type, presence: true
  validates_numericality_of :qt, greater_than: 0
end
