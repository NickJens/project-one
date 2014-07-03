require 'rails_helper'

feature 'convert the url' do
  scenario 'Form exists' do
    visit '/'
    expect(find('#loginForm')).to have_button('Login')
  end

  scenario 'Get the converted URL' do
    visit '/'
    within('#loginForm') do
      fill_in 'email', :with => 'example@gmail.com'
      fill_in 'password', :with => '1234'
      click_on 'Login'
    end
    expect(current_path).to eq('/')
  end

  scenario 'login text field' do
    visit '/'
    expect(page).to have_css('input')
    end
end