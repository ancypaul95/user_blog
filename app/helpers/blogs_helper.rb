module BlogsHelper
  def liked(blog)
    @user_post_like = blog.likes.find_by(user_id: current_user.id)
    @user_post_like ? true : false
  end
end
