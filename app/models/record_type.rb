class RecordType < ApplicationRecord
  validates :name, :user, presence: true
  validates :name, length: { in: 2..30 }

  belongs_to :user
end
