require 'rails_helper'

describe 'Login', type: :feature do
  it 'successfully signs in' do
    user = build(:user)
    visit '/users/sign_in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    user.save!
    click_button 'Log in'
    expect(page).to have_content('Signed in successfully.')
  end
end
