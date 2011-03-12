require 'spec_helper'

describe "the_days/index.html.haml" do
  before(:each) do
    assign(:the_days, [
      stub_model(TheDay,
        :name => "Name"
      ),
      stub_model(TheDay,
        :name => "Name"
      )
    ])
  end

  it "renders a list of the_days" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
