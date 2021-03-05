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
  # before_save :normalize_phone

  belongs_to :user

  validates :name, :text_message, presence: true
  # validates :attribute, phone: true

  # def formatted_phone
  #   parsed_phone = Phonelib.parse(phone)
  #   return phone if parsed_phone.invalid?

  #   formatted =
  #     if parsed_phone.country_code == "1" # NANP
  #       parsed_phone.full_national # (415) 555-2671;123
  #     else
  #       parsed_phone.full_international # +44 20 7183 8750
  #     end
  #   formatted.gsub!(";", " x") # (415) 555-2671 x123
  #   formatted
  # end

  private

  def normalize_phone
    self.phone = Phonelib.parse(phone).full_e164.presence
  end
end
