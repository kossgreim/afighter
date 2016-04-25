require 'rails_helper'

RSpec.describe "record_types/show", type: :view do
  before(:each) do
    @record_type = assign(:record_type, create(:record_type))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
