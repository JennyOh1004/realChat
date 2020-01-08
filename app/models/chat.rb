class Chat < ApplicationRecord
	has_many :chat_message, dependent: :destroy,
							inverse_of: :chat
end
