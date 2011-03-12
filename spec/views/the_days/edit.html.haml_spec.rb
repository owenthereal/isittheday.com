require 'spec_helper'

describe "the_days/edit.html.haml" do
  before(:each) do
    @the_day = assign(:the_day, stub_model(TheDay,
      :name => "MyString"
    ))
  end

  it "renders the edit the_day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => the_days_path(@the_day), :method => "post" do
      assert_select "input#the_day_name", :name => "the_day[name]"
    end
  end
end
