module ListsHelper
  COVER_IMAGES = %w[
    covers/cover1.avif
    covers/cover2.avif
    covers/cover3.avif
    covers/cover4.avif
  ].freeze

  def list_cover_image(list)
    COVER_IMAGES[list.id % COVER_IMAGES.size]
  end
end
