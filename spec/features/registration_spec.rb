require 'rails_helper'

describe 'Registration', type: :feature do
  it 'successfully signs up a user' do
    visit '/users/sign_up'
    user = build(:user)
    fill_in 'Name', with: user.name
    fill_in 'Last name', with: user.last_name
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully')
  end
end
