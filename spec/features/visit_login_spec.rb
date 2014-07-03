require 'rails_helper'

feature 'user login' do
  scenario 'Login' do
    visit '/'
    expect(page).to have_button 'Login'
  end

  scenario 'Login' do
    visit '/'
    expect(find('#email')).to_not be_nil
  end

  scenario 'Login' do
    visit '/'
    expect(find('#password')).to_not be_nil
  end
end


feature 'user sign in' do
  scenario 'Signin' do
    visit '/'
    expect(page).to have_button 'Sign-up'
  end
end