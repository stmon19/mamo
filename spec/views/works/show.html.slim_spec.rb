require 'spec_helper'

describe "works/show" do
  before(:each) do
    @work = assign(:work, stub_model(Work,
      :name => "Name",
      :description => "MyText",
      :width => 1,
      :height => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
