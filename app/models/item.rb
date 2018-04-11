class Item < ApplicationRecord
  # attr_accessor :name, :responses_attributes
  has_many :responses
  # accepts_nested_attributes_for :responses, allow_destroy :true
end
