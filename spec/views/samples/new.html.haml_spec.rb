require 'rails_helper'

RSpec.describe "samples/new", type: :view do
  before(:each) do
    assign(:sample, Sample.new(
      :title => "MyString",
      :item => "MyString"
    ))
  end

  it "renders new sample form" do
    render

    assert_select "form[action=?][method=?]", samples_path, "post" do

      assert_select "input[name=?]", "sample[title]"

      assert_select "input[name=?]", "sample[item]"
    end
  end
end
