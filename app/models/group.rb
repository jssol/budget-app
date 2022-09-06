class Group < ApplicationRecord
  belongs_to :user
  belongs_to :entity
  has_many :entities, dependent: :destroy

  validates :name, :icon, presence: true
end
