require 'rails_helper'

RSpec.describe "roles/index", type: :view do
  before(:each) do
    assign(:roles, [
      Role.create!(
        :job => "Job"
      ),
      Role.create!(
        :job => "Job"
      )
    ])
  end

  it "renders a list of roles" do
    render
    assert_select "tr>td", :text => "Job".to_s, :count => 2
  end
end
