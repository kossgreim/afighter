require 'rails_helper'

describe 'Registration', type: :feature do
  it 'successfully signs up a user' do
    user = build(:user)
    auth_helper = AuthHelper.new
    auth_helper.register user
    expect(page).to have_content('Welcome! You have signed up successfully')
  end
end
