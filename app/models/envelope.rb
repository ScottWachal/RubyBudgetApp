class Envelope < ActiveRecord::Base
  attr_accessible :budget, :name
  belongs_to :profile_account
  has_many :line_items
end
