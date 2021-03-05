require 'rails_helper'

RSpec.describe "conversations/index", type: :view do
  before(:each) do
    assign(:conversations, [
      Conversation.create!(),
      Conversation.create!()
    ])
  end

  xit "renders a list of conversations" do
    render
  end
end
