class User < ApplicationRecord
  has_and_belongs_to_many :sections
  has_many :outgoing_mails
  has_many :incoming_mails
  has_many :comments
  has_many :roles
end
