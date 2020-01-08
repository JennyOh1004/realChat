class ChatsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@chats = Chat.all
	end

	def new
		@chat = Chat.new
	end

	def create
		current_user.chats.create(chat_params)
		redirect_to root_path
	end

	private

	def chat_params
		params.require(:chat).permit(:name, :description)
	end
end
