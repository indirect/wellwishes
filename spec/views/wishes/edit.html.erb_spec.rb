require 'rails_helper'

RSpec.describe "wishes/edit", type: :view do
  before(:each) do
    @wish = assign(:wish, Wish.create!(
      :message => "MyText",
      :source => "MyString",
      :event => nil
    ))
  end

  it "renders the edit wish form" do
    render

    assert_select "form[action=?][method=?]", wish_path(@wish), "post" do

      assert_select "textarea[name=?]", "wish[message]"

      assert_select "input[name=?]", "wish[source]"

      assert_select "input[name=?]", "wish[event_id]"
    end
  end
end
