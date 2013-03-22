class Account < ActiveRecord::Base
  attr_accessible :balance, :name
  has_many :line_items
end
