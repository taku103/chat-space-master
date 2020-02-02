class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :messages
  validates :name, presence: true, uniqueness: true

  def show_last_message
    last_message = messages.last
    if last_message.present?
      if last_message.text?
        last_message.text
      else
        "画像が投稿されています。"
      end
    else
      "まだメッセージはありません。"
    end
  end 

  def show_member
    members = "Member: "
    users.each do |user|
      members = members + " " + user.name
    end
    return members
  end
end
