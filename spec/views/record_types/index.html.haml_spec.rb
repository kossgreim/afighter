require 'rails_helper'

RSpec.describe "record_types/index", type: :view do
  before(:each) do
    assign(:record_types, [create(:record_type)])
  end

  it "renders a list of record_types" do
    render
    assert_select "tr>td",:count => 1
  end
end
