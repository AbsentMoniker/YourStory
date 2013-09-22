class StoriesController < ApplicationController
  def new
    @story = Story.new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      @story = Story.new(user_params, author => user[:name],
                         beginning => true)
      if @story.save
        flash[:success] = "#{story[:title]} was saved!"
        redirect_to @user
      end
    else
      redirect_to root_url
    end
  end

  private
  def story_params
    params.require(:story).permit(:title, :body)
  end
    
end
