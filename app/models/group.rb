class Group < ApplicationRecord
  belongs_to :user
  has_many :entities, dependent: :destroy
  has_one_attached :icon

  validates :name, :icon, presence: true

  def total_expenses
    entities.sum(:amount)
  end
end
