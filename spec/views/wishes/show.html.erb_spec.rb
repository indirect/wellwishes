require 'rails_helper'

RSpec.describe "wishes/show", type: :view do
  before(:each) do
    @wish = assign(:wish, Wish.create!(
      :message => "MyText",
      :source => "Source",
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(//)
  end
end
