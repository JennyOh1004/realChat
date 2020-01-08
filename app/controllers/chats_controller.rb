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

	def show
		@chat = Chat.find(params[:id])
	end

	def edit
		@chat = Chat.find(params[:id])
		
	end


	def update
		@chat = Chat.find(params[:id])
		@chat.update_attributes(chat_params)
		redirect_to root_path
	end

	def destroy
		@chat = Chat.find(params[:id])
		@chat.destroy
		redirect_to root_path
	end

	private

	

	def chat_params
		params.require(:chat).permit(:name)
	end
end








