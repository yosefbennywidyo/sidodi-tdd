require 'rails_helper'

RSpec.describe "outgoing_mails/show", type: :view do
  before(:each) do
    @outgoing_mail = assign(:outgoing_mail, OutgoingMail.create!(
      :title => "Title",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
  end
end
