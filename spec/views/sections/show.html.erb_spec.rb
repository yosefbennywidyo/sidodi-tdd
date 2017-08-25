require 'rails_helper'

RSpec.describe "sections/show", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :section_name => "Section Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Section Name/)
  end
end
