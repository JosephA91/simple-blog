class Post < ApplicationRecord
  has_many :comments

  validates :title,
  presence: true,
  length: {
    minimum: 1,
    maximum: 254,
    allow_blank: false
  }

  validates :body,
    presence: true
end
