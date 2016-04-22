require 'rails_helper'

describe 'Login', type: :feature do
  it 'successfully signs in' do
    user = create(:user)
    AuthHelper.new.login user
    expect(page).to have_content('Signed in successfully.')
    expect(page).to have_content(user.full_name)
  end
end
