class Topic < ApplicationRecord
    validates :user_id, presence: true
    validates :description, presence: true
    validates :image, presence: true
    
    belongs_to :user
    validate :image_size
    mount_uploader :image, ImageUploader
    private
    def image_size
      if image.size > 10.megabytes
        errors.add(:image, "should be less than 10MB")
      end
    end
end
