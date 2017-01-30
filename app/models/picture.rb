class Picture < ApplicationRecord
  # Associations
  belongs_to :user

  # This method associates the attribute ":image" with a file attachment
  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validations
  # Validate the attached image is image/jpg, image/png, etc
  validates :image,
    attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
    attachment_size: { less_than: 5.megabytes }
  # Max number of pictures allowed per user
  MAX_PICTURES_PER_USER = 2
  validate :max_picture_count

  def max_picture_count
    if User.find(user_id).pictures.count >= MAX_PICTURES_PER_USER
      errors.add(:image, "has exceeded the maximum number of images allowed per user: #{MAX_PICTURES_PER_USER}")
    end
  end
end
