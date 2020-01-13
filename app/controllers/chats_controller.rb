class ChatsController < ApplicationController
	before_action :load_entities


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

	def show
		@chat_message = ChatMessage.new chat: @chat
		@chat_messages = @chat.chat_messages.includes(:user)
	
	end

	def edit
		@chat = Chat.find(params[:id])
		
	end


	def update
		@chat = Chat.find(params[:id])
		@chat.update_attributes(chat_params)
		redirect_to chats_path
	end

	def destroy
		@chat = Chat.find(params[:id])
		@chat.destroy
		redirect_to root_path
	end

	protected



	def load_entities
		@chats = Chat.all
		@chat = Chat.find(params[:id]) if params[:id]
	end

	def permitted_parameters
   		params.require(:chat).permit(:name)
  end
end








