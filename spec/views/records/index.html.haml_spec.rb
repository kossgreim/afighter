require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        :record_type => nil,
        :qt => "9.99",
        :user => nil
      ),
      Record.create!(
        :record_type => nil,
        :qt => "9.99",
        :user => nil
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
