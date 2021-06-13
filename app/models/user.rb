class User < ApplicationRecord
  has_one_attached :photo
  has_one_attached :cover_image
  validates :user_name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 12 }
  validates :full_name, presence: true, length: { minimum: 5, maximum: 20 }
  has_many :opinions, foreign_key: 'author_id', dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :followings, class_name: 'Following', foreign_key: 'follower_id'
  has_many :inverse_followings, class_name: 'Following', foreign_key: 'followed_id'
  has_many :follows, through: :followings, source: :followed
  has_many :followers, through: :inverse_followings, source: :follower

  def home_opinions
    home_opinions = Current.user.opinions
    Current.user.follows.each do |follow|
      home_opinions += follow.opinions
    end
    home_opinions
  end
end
