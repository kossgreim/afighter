class RecordType < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { in: 2..30 }
end
