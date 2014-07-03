require 'rails_helper'

feature 'visit the profile' do
  scenario 'Your Profile!' do
    visit '/profile'
    expect(page).to have_content 'Your Profile!'
  end


  scenario 'login button' do
    visit '/'
    expect(find('#loginForm')).to have_button('Login')
  end

  scenario 'sign in button' do
    visit '/'
    expect(find('#loginForm')).to have_button('Sign-up')
  end
end
