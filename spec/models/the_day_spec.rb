require 'spec_helper'

describe TheDay do
  def given_the_day(date)
    yield TheDay.new(:name => "The day", :date => date)
  end

  describe "#today?" do
    it "should return true if today is the day" do
      given_the_day(Time.now) do |the_day|
        the_day.today?.should be
      end
    end

    it "should return false if today is not the day" do
      given_the_day(1.day.ago) do |the_day|
        the_day.today?.should be_false
      end
    end
  end
end
