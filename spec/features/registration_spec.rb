require 'rails_helper'

describe 'Registration', type: :feature do
  it 'successfully signs up' do
    AuthHelper.new.register build(:user)
    expect(page).to have_content('Welcome! You have signed up successfully')
  end
end
