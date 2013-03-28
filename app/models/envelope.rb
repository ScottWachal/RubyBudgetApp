class Envelope < ActiveRecord::Base
  attr_accessible :budget, :name
  belongs_to :profile_account
  has_many :line_items

  def current_budget
    expenses = line_items.sum(:price, :conditions => {:allocation => false})
    income = line_items.sum(:price, :conditions => {:allocation => true})
    income - expenses
  end
end
