module MoviesHelper
  def can_edit_movie?(movie)
    movie.user_id == current_user.id
  end
end
