class TheDay < ActiveRecord::Base
  def today?
    date.today?
  end
end
