require 'rails_helper'

  describe OrdersController, type: :controller do
    context 'GET #index' do
      before do
        @admin = FactoryBot.create(:admin)
        @user = FactoryBot.create(:user)
      end

    it "allows admin to access page" do
      sign_in(@admin)
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end

    it "doesnt allow user to access page" do
      sign_in(@user)
      get :index
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(root_path)
    end
  end
end
