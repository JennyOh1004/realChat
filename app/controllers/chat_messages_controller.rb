class ChatMessagesController < ApplicationController
	before_action :load_entities


	def create
		@chat_message = ChatMessage.create user: current_user,
										   chat: @chat,
										   message: params.dig(:chat_message, :message)
	end

	protected

	def load_entities
    	@chat = Chat.find params.dig(:chat_message, :chat_id)
 	end

end
