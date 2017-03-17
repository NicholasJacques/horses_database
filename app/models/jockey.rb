class Jockey < ActiveRecord::Base
  has_many :horses

  def sum_winnings
    horses.sum("total_winnings")
  end

  def average_winnings
    horses.average("total_winnings").round(2)
  end
end