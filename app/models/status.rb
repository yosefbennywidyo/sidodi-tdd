class Status < ApplicationRecord
  has_and_belongs_to_many :outgoing_mails
  has_and_belongs_to_many :incoming_mails
end
