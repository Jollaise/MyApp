require 'rails_helper'

describe User do

  context 'is not valid without an email' do
    let(:user) { User.new(:password => 'testpswd') }

    it 'should return password only' do
      expect(User.new(:password => 'testpswd')).not_to be_valid
    end
  end

  context 'is not valid without an password' do
    let(:user) { User.new(:email => 'user@examplemail.com') }

    it 'should return email only' do
      expect(User.new(:email => 'user@examplemail.com')).not_to be_valid
    end
  end
end
