require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user){ FactoryBot.create(:user, password: "foobar", password_confirmation: "foobar") }

  it { should be_valid }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  describe "when first name is not present" do
    before { user.first_name = " " }
    it { should_not be_valid }
  end

  describe "when password is not present" do
    # TODO: This might need to be a capybara view spec
    before { user.password = user.password_confirmation = " " }
    xit { should_not be_valid }
  end
end
