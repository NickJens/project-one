require 'rails_helper'

feature 'visit the users' do
  scenario 'Users' do
    visit '/users'
    expect(page).to have_content 'Users'
  end
end
