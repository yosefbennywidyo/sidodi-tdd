require 'rails_helper'

RSpec.describe "statuses/index", type: :view do
  before(:each) do
    assign(:statuses, [
      Status.create!(
        :detail => "Detail"
      ),
      Status.create!(
        :detail => "Detail"
      )
    ])
  end

  it "renders a list of statuses" do
    render
    assert_select "tr>td", :text => "Detail".to_s, :count => 2
  end
end
