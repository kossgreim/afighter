require 'rails_helper'

RSpec.describe "records/new", type: :view do
  before(:each) do
    assign(:record, Record.new(
      :record_type => nil,
      :qt => "9.99",
      :user => nil
    ))
  end

  it "renders new record form" do
    render

    assert_select "form[action=?][method=?]", records_path, "post" do

      assert_select "input#record_record_type_id[name=?]", "record[record_type_id]"

      assert_select "input#record_qt[name=?]", "record[qt]"

      assert_select "input#record_user_id[name=?]", "record[user_id]"
    end
  end
end
