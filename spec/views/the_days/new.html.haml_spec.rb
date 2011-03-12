require 'spec_helper'

describe "the_days/new.html.haml" do
  before(:each) do
    assign(:the_day, stub_model(TheDay,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new the_day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => the_days_path, :method => "post" do
      assert_select "input#the_day_name", :name => "the_day[name]"
    end
  end
end
