require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :post => "Post"
      ),
      Post.create!(
        :post => "Post"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Post".to_s, :count => 2
  end
end
