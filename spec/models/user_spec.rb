require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ActiveRecord associations' do
    it 'has many opinions' do
      expect { should has_many(opinions) }
    end
    it 'has many comments' do
      expect { should has_many(comments) }
    end
    it 'has many follows' do
      expect { should has_many(follows) }
    end
    it 'has many followers' do
      expect { should has_many(followers) }
    end
  end
end
