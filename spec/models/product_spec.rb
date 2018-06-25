require 'rails_helper'

RSpec.describe Product, type: :model do

  context 'comment rating' do
    before do
      @product = FactoryBot.create(:product)
      @user = FactoryBot.create(:user)
      @comment1 = @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @comment2 = @product.comments.create!(rating: 3, user: @user, body: "Ok bike!")
      @comment3 = @product.comments.create!(rating: 5, user: @user, body: "Great bike!")
    end

    it "has lowest rated comment" do
      expect(@comment1).to eq(@product.lowest_rating_comment)
    end
    it "has a highest rated comment" do
      expect(@comment3).to eq(@product.highest_rating_comment)
    end
    it 'returns the average rating of all comments' do
      expect(@product.average_rating).to eq(3)
    end
  end

  context 'validations' do
    describe '#name' do
      it { should validate_presence_of(:name) }
    end

    describe '#description' do
      it { should validate_presence_of(:description) }
    end

    describe '#price' do
      it { should validate_presence_of(:price) }
    end

    describe '#image_url' do
      it { should validate_presence_of(:image_url) }
    end
  end

end
