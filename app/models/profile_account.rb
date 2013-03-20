class ProfileAccount < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :line_items
  has_many :envelopes
  has_many :accounts
end
