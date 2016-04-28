require 'rails_helper'

RSpec.describe "records/show", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      :record_type => nil,
      :qt => "9.99",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
