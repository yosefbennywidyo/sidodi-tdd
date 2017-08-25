require 'rails_helper'

RSpec.describe "outgoing_mails/index", type: :view do
  before(:each) do
    assign(:outgoing_mails, [
      OutgoingMail.create!(
        :title => "Title",
        :description => "Description"
      ),
      OutgoingMail.create!(
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of outgoing_mails" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
