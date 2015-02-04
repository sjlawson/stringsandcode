require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :title => "MyString",
      :content => "MyText",
      :order => 1,
      :published => false,
      :category => nil
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_content[name=?]", "article[content]"

      assert_select "input#article_order[name=?]", "article[order]"

      assert_select "input#article_published[name=?]", "article[published]"

      assert_select "input#article_category_id[name=?]", "article[category_id]"
    end
  end
end
