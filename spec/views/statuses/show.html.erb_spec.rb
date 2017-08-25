require 'rails_helper'

RSpec.describe "statuses/show", type: :view do
  before(:each) do
    @status = assign(:status, Status.create!(
      :detail => "Detail"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Detail/)
  end
end
