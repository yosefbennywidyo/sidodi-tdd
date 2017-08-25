require 'rails_helper'

RSpec.describe "roles/show", type: :view do
  before(:each) do
    @role = assign(:role, Role.create!(
      :job => "Job"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Job/)
  end
end
