require 'rails_helper'

RSpec.describe Following, type: :model do
  describe 'following Associations' do
    it 'belongs to followed' do
      expect { should belongs_to(followed) }
    end
    it 'belongs to follower' do
      expect { should belongs_to(follower) }
    end
  end
end
