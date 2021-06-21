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
  # Find the users where id != user and id != any id of user follows
  scope :who_to_follow, ->(user) { where.not(id: user.id).where.not(id: user.follows).order('created_at DESC') }
  # Find the intersection between Current.user.follows and user.followers
  scope :followed_by, ->(current, user) { current.follows & user.followers }

  def self.home_opinions(user)
    ids = [user.id]
    user.follows.find_each do |follow|
      ids.push(follow.id)
    end
    home_opinions = Opinion.where(author_id: ids)
    home_opinions.order_by_most_recent
  end
end
