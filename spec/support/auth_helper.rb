class AuthHelper
  include Capybara::DSL
  @@paths = {registration: '/users/sign_up', login: '/users/sign_in'}

  def register(user)
    visit_page 'registration'
    fill_in 'Name', with: user.name
    fill_in 'Last name', with: user.last_name
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password
    click_button 'Sign up'
  end

  def login(user)
    visit_page 'login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  def visit_page(page)
    visit @@paths[page.to_sym] || page.to_s
  end
end
