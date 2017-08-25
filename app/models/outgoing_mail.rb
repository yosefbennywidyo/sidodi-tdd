class OutgoingMail < ApplicationRecord
  belongs_to :user
  belongs_to :section
  has_many :comments, as: :commentable
end
