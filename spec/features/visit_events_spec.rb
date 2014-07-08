require 'rails_helper'

feature 'visit the events' do
  scenario 'Events!' do
    visit '/events'
    expect(page).to have_content 'Events!'
  end


  scenario 'visit the events' do
    visit '/events'
    expect(find('#findForm')).to have_button('Find Event')
  end
end
