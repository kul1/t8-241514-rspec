require 'rails_helper'

RSpec.describe "samples/show", type: :view do
  before(:each) do
    @sample = assign(:sample, Sample.create!(
      :title => "Title",
      :item => "Item"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Item/)
  end
end
