class CategoriesController < ApplicationController
  def new 
		@categories = Group.new
	end

	def create 
		@categories = Group.new(ca valuetegory_params)
		@categories.user_id = current_user.id 

		if @catogories.save 
			redirect_to root_path
		else
			render new
		end

	end 

	private 

	def category_params
    params.require(:group).permit(:name, :icon)
  end
end