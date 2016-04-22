require 'rails_helper'

describe 'Login', type: :feature do
  it 'successfully signs in' do
    user = create(:user)
    auth_helper = AuthHelper.new
    auth_helper.login user
    expect(page).to have_content('Signed in successfully.')
  end
end
