class EntitiesController < ApplicationController
    def index 
      @entities = Entity.all
      @categ
    end
  
    def new 
      @entity = Entity.new
    end
  
    def create 
      @entity = Entity.new(name: transaction_params[:name], amount: transaction_params[:amount], user_id: current_user.id)
      if @entity.save
        redirect_to category_entities_path, notice: "Entity was successfully created."
      else
        render :new
      end
    end
  
    private
  
    def transaction_params
      params.require(:entity).permit(:name, :amount)
    end
  end
  