class StoriesController < ApplicationController
  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.user_id = current_user.id
    if @story.save
      flash[:success] = "#{@story[:title]} was successfully saved!"
      redirect_to root_url
   
    else
      redirect_to root_url
    end
  end

  private
  def story_params
    params.require(:story).permit(:title, :body)
  end
    
end
