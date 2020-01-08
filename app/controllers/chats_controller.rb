class ChatsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@chats = Chat.all
	end

	def new
		@chat = Chat.new
	end

	def create
		@chat = Chat.new permitted_parameters

		if @chat.save
			flash[:success] = "Chat room #{@chat.name} was created successfully"
			redirect_to chats_path
		else
			render :new
		end
	end


	def edit
		@chats = Chat.find(params[:id])
	end

	def update
		if @chat.update_attributes(permitted_parameters)
			flash[:success] = "Chat room #{@chat.name} was updated successfully"
			redirect_to root_path
		else
			render :new
		end
	end

	private

	def permitted_parameters
		params.require(:chat).permit(:name, :description)
	end
end








