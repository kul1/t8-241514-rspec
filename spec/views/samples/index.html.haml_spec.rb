require 'rails_helper'

RSpec.describe "samples/index", type: :view do
  before(:each) do
    assign(:samples, [
      Sample.create!(
        :title => "Title",
        :item => "Item"
      ),
      Sample.create!(
        :title => "Title",
        :item => "Item"
      ),
      Sample.create!(
        :title => "Title",
        :item => "Item"
      )
    ])
  end

  it "renders a list of samples" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 3
    assert_select "tr>td", :text => "Item".to_s, :count => 3
    assert_select "tr>td", :text => "Item".to_s, :count => 3
  end
end
