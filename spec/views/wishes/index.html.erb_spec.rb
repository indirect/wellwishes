require 'rails_helper'

RSpec.describe "wishes/index", type: :view do
  before(:each) do
    assign(:wishes, [
      Wish.create!(
        :message => "MyText",
        :source => "Source",
        :event => nil
      ),
      Wish.create!(
        :message => "MyText",
        :source => "Source",
        :event => nil
      )
    ])
  end

  it "renders a list of wishes" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
