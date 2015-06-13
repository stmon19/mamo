require 'spec_helper'

describe "biographies/show" do
  before(:each) do
    @biography = assign(:biography, stub_model(Biography,
      :description => "MyText",
      :sort => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
