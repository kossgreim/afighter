require 'rails_helper'

RSpec.describe "record_types/new", type: :view do
  before(:each) do
    assign(:record_type, create(:record_type))
  end

  it "renders new record_type form" do
    render

    assert_select "form[action=?][method=?]", record_types_path, "post" do

      assert_select "input#record_type_name[name=?]", "record_type[name]"
    end
  end
end
