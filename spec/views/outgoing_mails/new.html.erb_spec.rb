require 'rails_helper'

RSpec.describe "outgoing_mails/new", type: :view do
  before(:each) do
    assign(:outgoing_mail, OutgoingMail.new(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new outgoing_mail form" do
    render

    assert_select "form[action=?][method=?]", outgoing_mails_path, "post" do

      assert_select "input[name=?]", "outgoing_mail[title]"

      assert_select "input[name=?]", "outgoing_mail[description]"
    end
  end
end
