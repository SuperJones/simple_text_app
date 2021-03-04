# == Schema Information
#
# Table name: conversations
#
#  id           :integer          not null, primary key
#  name         :string
#  phone        :string
#  text_message :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Conversation < ApplicationRecord
  belongs_to :user

  validates :name, :text_message, presence: true
  validates :phone, presence: true
end
