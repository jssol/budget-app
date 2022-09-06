class Entity < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  has_and_belongs_to_many :groups, dependent: :destroy

  validates :author_id, :name, :amount, presence: true
end
