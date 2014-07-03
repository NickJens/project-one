require 'rails_helper'

feature 'visit the site' do
  scenario 'Hello World!' do
    visit '/'
    expect(page).to have_content 'Hi, there!'
  end

  scenario 'Users' do
    visit '/users'
    expect(page).to have_content 'Users'
  end

  scenario 'Events' do
    visit '/events'
    expect(page).to have_content 'Events'
  end

  scenario 'Profile' do
    visit '/profile'
    expect(page).to have_content 'Profile'
  end


end


