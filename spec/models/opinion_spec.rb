require 'rails_helper'

RSpec.describe Opinion, type: :model do
  describe 'ActiveRecord associations' do
    it 'has many comments' do
      expect { should has_many(comments) }
    end
    it 'belongs to user' do
      expect { should belongs_to(user) }
    end
  end
end
