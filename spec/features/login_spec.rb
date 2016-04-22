require 'rails_helper'

describe 'Login', type: :feature do
  it 'successfully signs in' do
    AuthHelper.new.login create(:user)
    expect(page).to have_content('Signed in successfully.')
  end
end
