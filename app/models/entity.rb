class Entity < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :groups, dependent: :destroy

  validates :author_id, :name, :amount, presence: true
end
