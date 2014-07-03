require 'rails_helper'

feature 'visit the events' do
  scenario 'Events!' do
    visit '/events'
    expect(page).to have_content 'Events!'
  end
end
