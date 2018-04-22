class Response < ApplicationRecord
  belongs_to :item
  belongs_to :user

  RESPONSE_TYPES = %w(claim donate sell).freeze

validates :response_type, inclusion: { in: RESPONSE_TYPES }

end
