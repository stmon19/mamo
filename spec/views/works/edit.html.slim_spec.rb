require 'spec_helper'

describe "works/edit" do
  before(:each) do
    @work = assign(:work, stub_model(Work,
      :name => "MyString",
      :description => "MyText",
      :width => 1,
      :height => 1
    ))
  end

  it "renders the edit work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", work_path(@work), "post" do
      assert_select "input#work_name[name=?]", "work[name]"
      assert_select "textarea#work_description[name=?]", "work[description]"
      assert_select "input#work_width[name=?]", "work[width]"
      assert_select "input#work_height[name=?]", "work[height]"
    end
  end
end
