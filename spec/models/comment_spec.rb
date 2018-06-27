require 'rails_helper'

describe Comment, type: :model do
  before do
    @product = FactoryBot.create(:product)
    @user = FactoryBot.create(:user)
    @comment = FactoryBot.create(:comment, user: @user, product: @product)
  end

  describe '#user' do
    it { should validate_presence_of(:user) }
  end

  describe '#body' do
    it { should validate_presence_of(:body) }
  end

  describe '#rating' do
    it { should validate_presence_of(:rating) }
    it { should_not allow_value(1.5).for(:rating) }
  end
end
