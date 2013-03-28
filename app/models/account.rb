class Account < ActiveRecord::Base
  attr_accessible :name
  belongs_to :profile_account
  has_many :line_items

  def balance
    expenses = line_items.sum(:price, :conditions => {:allocation => false})
    income = line_items.sum(:price, :conditions => {:allocation => true})
    income - expenses
  end
end
