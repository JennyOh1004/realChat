class ChatMessage < ApplicationRecord
  belongs_to :user
  belongs_to :chat, inverse_of: :chat_messages

  def as_json(options)
  	super(options).merge(user_avatar_url: user.gravatar_url)
  end

end
