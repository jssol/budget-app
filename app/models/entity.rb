class Entity < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  has_many :groups

  validates :author_id, :name, :amount, presence: true
end
