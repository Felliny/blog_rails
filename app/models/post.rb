class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  belongs_to :user

  # Adds validations to the post
  validates_presence_of :content
end
