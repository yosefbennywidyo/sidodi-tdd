class Section < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :outgoing_mails
  has_many :incoming_mails
end
