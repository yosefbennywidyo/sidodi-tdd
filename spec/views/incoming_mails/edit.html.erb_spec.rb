require 'rails_helper'

RSpec.describe "incoming_mails/edit", type: :view do
  before(:each) do
    @incoming_mail = assign(:incoming_mail, IncomingMail.create!(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit incoming_mail form" do
    render

    assert_select "form[action=?][method=?]", incoming_mail_path(@incoming_mail), "post" do

      assert_select "input[name=?]", "incoming_mail[title]"

      assert_select "input[name=?]", "incoming_mail[description]"
    end
  end
end
