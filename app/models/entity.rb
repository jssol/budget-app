class Entity < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :group, dependent: :destroy

  validates :author_id, :name, :amount, presence: true
end
