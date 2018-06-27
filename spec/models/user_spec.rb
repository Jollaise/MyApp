require 'rails_helper'

describe User, type: :model do

  describe "db structure" do
    it { is_expected.to have_db_column(:email).of_type(:string) }
    it { is_expected.to have_db_column(:encrypted_password).of_type(:string) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }

    it { is_expected.to have_db_index(:email) }
  end

  describe "secure password" do
    it { is_expected.to validate_length_of(:password) }
    it { should validate_presence_of(:password) }
  end

  describe "email" do
    it { should validate_presence_of(:email) }
  end
end
