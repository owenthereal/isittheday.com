class TheDay < ActiveRecord::Base
  def is_today?
    date.today?
  end

  def is_it?
    is_today? ? "Yes" : "No"
  end
end