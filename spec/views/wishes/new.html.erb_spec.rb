require 'rails_helper'

RSpec.describe "wishes/new", type: :view do
  before(:each) do
    assign(:wish, Wish.new(
      :message => "MyText",
      :source => "MyString",
      :event => nil
    ))
  end

  it "renders new wish form" do
    render

    assert_select "form[action=?][method=?]", wishes_path, "post" do

      assert_select "textarea[name=?]", "wish[message]"

      assert_select "input[name=?]", "wish[source]"

      assert_select "input[name=?]", "wish[event_id]"
    end
  end
end
