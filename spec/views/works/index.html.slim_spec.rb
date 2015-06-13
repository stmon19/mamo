require 'spec_helper'

describe "works/index" do
  before(:each) do
    assign(:works, [
      stub_model(Work,
        :name => "Name",
        :description => "MyText",
        :width => 1,
        :height => 2
      ),
      stub_model(Work,
        :name => "Name",
        :description => "MyText",
        :width => 1,
        :height => 2
      )
    ])
  end

  it "renders a list of works" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
