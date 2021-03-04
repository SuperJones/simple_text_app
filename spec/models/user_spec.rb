require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user){ FactoryBot.create(:user) }

  it { should be_valid }
  it { should respond_to(:password_digest) }

  describe "when first name is not present" do
    before { user.first_name = " " }
    it { should_not be_valid }
  end
end
