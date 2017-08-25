require 'rails_helper'

RSpec.describe "incoming_mails/index", type: :view do
  before(:each) do
    assign(:incoming_mails, [
      IncomingMail.create!(
        :title => "Title",
        :description => "Description"
      ),
      IncomingMail.create!(
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of incoming_mails" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
