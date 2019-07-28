class LikesController < ApplicationController

  def create
    @like = Like.create(like_params.merge(user_id: current_user.id))
  end

  def destroy
    @like.destroy
    respond_to do |format|
      format.html { redirect_to likes_url, notice: 'like was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def like_params
    params.permit(:blog_id)
  end
end