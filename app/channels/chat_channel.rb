class ChatChannel < ApplicationCable::Channel
	def subscribed
		chat = Chat.find params[:chat]
		stream_for chat

		# or
		# stream_from "room_#{params[:chat]}"
	end
end