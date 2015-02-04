require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :title => "MyString",
      :content => "MyText",
      :order => 1,
      :published => false,
      :category => nil
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_content[name=?]", "article[content]"

      assert_select "input#article_order[name=?]", "article[order]"

      assert_select "input#article_published[name=?]", "article[published]"

      assert_select "input#article_category_id[name=?]", "article[category_id]"
    end
  end
end
