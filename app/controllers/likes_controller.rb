# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    @like = Like.create(like_params.merge(user_id: current_user.id))
    respond_to do |format|
      format.html { redirect_to blogs_url }
      format.json { head :no_content }
    end
  end

  def destroy
    Like.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to blogs_url }
      format.json { head :no_content }
    end
  end

  private

  def like_params
    params.permit(:blog_id)
  end
end
