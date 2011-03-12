Given /^the day of ([^"]*) is set to ([^"]*)/ do |name_of_the_day, the_day|
  @the_day = TheDay.create(:name => name_of_the_day, :date => Date.send(the_day))
end