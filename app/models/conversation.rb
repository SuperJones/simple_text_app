# == Schema Information
#
# Table name: conversations
#
#  id           :bigint           not null, primary key
#  name         :string
#  phone        :string
#  text_message :string
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Conversation < ApplicationRecord
  before_save :normalize_phone

  belongs_to :user

  validates :name, :text_message, presence: true
  validates :phone, phone: true

  private

  def normalize_phone
    self.phone = Phonelib.parse(phone).full_e164.presence
  end
end
