class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :last_name, presence: true
  validates :name, :last_name, length: { in: 2..50 }
  has_many :record_types, dependent: :destroy
  has_many :records, dependent: :destroy

  def full_name
    "#{name} #{last_name}"
  end
end
