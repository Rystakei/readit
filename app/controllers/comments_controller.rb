class CommentsController < ApplicationController
  # This method is from devise
  before_filter :redirect_back_unless_logged_in
 
  def create
    @comment = current_user.comments.create(params[:comment].merge(link_id:params[:link_id]]))
    redirect_to :back
  end


# Declaring all methods below as private
  private

  def redirect_back_unless_logged_in 
    redirect_to :back, alert: 'You need to be logged in.' unless current_user.present?


  end

end
