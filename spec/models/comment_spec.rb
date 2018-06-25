require 'rails_helper'

RSpec.describe Comment, type: :model do
  # before do
  #   @product = FactoryBot.create(:product)
  #   @user = FactoryBot.create(:user)
  #   @comment = FactoryBot.create(:comment, user: @user, product: @product)
  # end

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

# describe Comment do
#
#   context "is valid with user, product, body and rating" do
#     before do
#       @user = FactoryBot.create(:user)
#       @product = FactoryBot.create(:product)
#       #@comment = @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
#       @comment = FactoryBot.create(:comment, user: @user, product: @product)
#     end
#
#     it "returns valid" do
#      expect(@comment).to be_valid
#     end
#   end
#
#
#   context "user not logged in" do
#     before do
#       @product = FactoryBot.create(:product)
#       # @comment = @product.comments.create!(rating: 1, user: nil, body: "Awful bike!")
#       @comment1 = FactoryBot.create(:comment, user: nil)
#     end
#
#     it "returns invalid" do
#       expect(@comment1).not_to be_valid
#     end
#   end
#
#
#   context "body missing" do
#     before do
#       @user = FactoryBot.create(:user)
#       @product = FactoryBot.create(:product)
#       #@comment = @product.comments.create!(rating: 1, user: @user, body: nil)
#       @comment2 = FactoryBot.create(:comment, :no_body, user: @user)
#     end
#
#     it "returns invalid" do
#      expect(@comment2).not_to be_valid
#     end
#   end
#
#
#   context "rating missing" do
#     before do
#       @user = FactoryBot.create(:user)
#       @product = FactoryBot.create(:product)
#       #@comment = @product.comments.create!(rating: nil, user: @user, body: "Awful bike!")
#       @comment3 = FactoryBot.create(:comment, :no_rating, user: @user)
#     end
#
#     it "returns invalid" do
#       expect(@comment3).not_to be_valid
#     end
#   end
#
#
#   context "rating is not an integer" do
#     before do
#       @user = FactoryBot.create(:user)
#       @product = FactoryBot.create(:product)
#       #@comment = @product.comments.create!(rating: 1.5, user: @user, body: "Awful bike!")
#       @comment4 = FactoryBot.create(:comment, :rating_not_integer, user: @user)
#     end
#
#     it "returns invalid" do
#       expect(@comment4).not_to be_valid
#     end
#   end
# end
