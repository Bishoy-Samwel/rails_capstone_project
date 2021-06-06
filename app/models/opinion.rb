class Opinion < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, dependent: :destroy
  validates :text, presence: true, length: { minimum: 5, maximum: 500 }
  scope :order_by_most_recent, -> { includes(:author).order(created_at: :desc) }
end
