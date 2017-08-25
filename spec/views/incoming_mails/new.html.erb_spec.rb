require 'rails_helper'

RSpec.describe "incoming_mails/new", type: :view do
  before(:each) do
    assign(:incoming_mail, IncomingMail.new(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new incoming_mail form" do
    render

    assert_select "form[action=?][method=?]", incoming_mails_path, "post" do

      assert_select "input[name=?]", "incoming_mail[title]"

      assert_select "input[name=?]", "incoming_mail[description]"
    end
  end
end
