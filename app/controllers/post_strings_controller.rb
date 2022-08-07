class PostStringsController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!, except: [:index]

  def index
    @post_strings = PostString.all.order(created_at: :desc).page(params[:page])
  end

  def new
    @post_string = PostString.new
    @user_id = current_user.id
  end

  def create
    post_string = PostString.new(post_string_params)
    if post_string.save
      redirect_to post_strings_index_path
    else
      redirect_to post_strings_new_path
    end
  end

  private def post_string_params
    params.require(:post_string).permit(:user_id, :body)
  end

end
