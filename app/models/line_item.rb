class LineItem < ActiveRecord::Base
  attr_accessible :date_of_purchase, :description, :name, :price
  belongs_to :profile_account
  belongs_to :envelope
  belongs_to :account
end
