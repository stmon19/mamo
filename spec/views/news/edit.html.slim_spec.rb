require 'spec_helper'

describe "news/edit" do
  before(:each) do
    @news = assign(:news, stub_model(News,
      :title => "MyString",
      :location => "MyString",
      :location_address => "MyText",
      :content => "MyText",
      :permalink => "MyString"
    ))
  end

  it "renders the edit news form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", news_path(@news), "post" do
      assert_select "input#news_title[name=?]", "news[title]"
      assert_select "input#news_location[name=?]", "news[location]"
      assert_select "textarea#news_location_address[name=?]", "news[location_address]"
      assert_select "textarea#news_content[name=?]", "news[content]"
      assert_select "input#news_permalink[name=?]", "news[permalink]"
    end
  end
end
