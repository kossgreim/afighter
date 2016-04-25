require 'rails_helper'

RSpec.describe "record_types/edit", type: :view do
  before(:each) do
    @record_type = assign(:record_type, create(:record_type))
  end

  it "renders the edit record_type form" do
    render

    assert_select "form[action=?][method=?]", record_type_path(@record_type), "post" do

      assert_select "input#record_type_name[name=?]", "record_type[name]"
    end
  end
end
