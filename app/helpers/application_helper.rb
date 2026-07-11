module ApplicationHelper
  def star_rating(rating)
    return "" if rating.blank?

    full_stars = (rating.to_f / 2).round.clamp(0, 5)
    safe_join(
      Array.new(5) { |i| content_tag(:i, "", class: i < full_stars ? "fa-solid fa-star" : "fa-regular fa-star") }
    )
  end
end
