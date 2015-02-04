require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :title => "Title",
        :content => "MyText",
        :order => 1,
        :published => false,
        :category => nil
      ),
      Article.create!(
        :title => "Title",
        :content => "MyText",
        :order => 1,
        :published => false,
        :category => nil
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
