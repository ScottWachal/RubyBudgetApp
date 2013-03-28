class Account < ActiveRecord::Base
  attr_accessible :balance, :name
  belongs_to :profile_account
  has_many :line_items
end
