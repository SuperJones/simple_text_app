require 'rails_helper'

RSpec.describe Conversation, type: :model do
    subject(:convo){ FactoryBot.create(:conversation) }

  it { should be_valid }
  it { should belong_to :user }

  describe "when first name is not present" do
    before { convo.text_message = " " }
    it { should_not be_valid }
  end
end
