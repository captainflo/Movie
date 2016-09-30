module ReviewsHelper
  def self_or_other(review)
    review.user == current_user ? "self" : "other"
  end

  def can_edit_review?(review)
    review.user_id == current_user.id
  end
end
