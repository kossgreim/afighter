require 'rails_helper'

RSpec.describe "records/edit", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      :record_type => nil,
      :qt => "9.99",
      :user => nil
    ))
  end

  it "renders the edit record form" do
    render

    assert_select "form[action=?][method=?]", record_path(@record), "post" do

      assert_select "input#record_record_type_id[name=?]", "record[record_type_id]"

      assert_select "input#record_qt[name=?]", "record[qt]"

      assert_select "input#record_user_id[name=?]", "record[user_id]"
    end
  end
end
