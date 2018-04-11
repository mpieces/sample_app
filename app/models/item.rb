class Item < ApplicationRecord
  # attr_accessor :name, :responses_attributes
  has_many :responses
  # accepts_nested_attributes_for :responses, allow_destroy :true
  mount_uploader :image, ImageUploader
  validates_processing_of :image
  validate :image_size_validation

  private

  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end
end
