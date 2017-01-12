class User < ApplicationRecord
  has_many :comments
  has_many :topics
  belongs_to :course
end
