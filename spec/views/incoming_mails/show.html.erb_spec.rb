require 'rails_helper'

RSpec.describe "incoming_mails/show", type: :view do
  before(:each) do
    @incoming_mail = assign(:incoming_mail, IncomingMail.create!(
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
