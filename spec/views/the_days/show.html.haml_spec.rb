require 'spec_helper'

describe "the_days/show.html.haml" do
  before(:each) do
    @the_day = assign(:the_day, stub_model(TheDay,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
