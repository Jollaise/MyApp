require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(:email => 'user@examplemail.com', :password => 'testpswd') }
  let(:user2) { User.create!(:email => 'user2@examplemail.com', :password => 'testpswd2') }

  describe 'Get#show' do
    context 'when a user is logged in' do
      before do
        sign_in user
      end
      it 'loads correct user details' do
        get :show, params: { id: user.id }
        expect(response).to be_ok
        expect(assigns(:user)).to eq user
      end
      it 'tries accessing other users page' do
        get :show, params: { id: user2.id }
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
    end

    context 'when a user is logged out' do
      it 'redirects to login' do
        get :show , params: { id: user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end

  end
end
