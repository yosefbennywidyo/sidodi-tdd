require 'rails_helper'

RSpec.describe "outgoing_mails/edit", type: :view do
  before(:each) do
    @outgoing_mail = assign(:outgoing_mail, OutgoingMail.create!(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit outgoing_mail form" do
    render

    assert_select "form[action=?][method=?]", outgoing_mail_path(@outgoing_mail), "post" do

      assert_select "input[name=?]", "outgoing_mail[title]"

      assert_select "input[name=?]", "outgoing_mail[description]"
    end
  end
end
