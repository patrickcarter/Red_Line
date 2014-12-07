require 'rails_helper'

feature 'Creating Services' do
  scenario 'can create a service' do
    visit '/'

    click_link 'New Service'

    fill_in 'Make', with: 'Yamaha'
    fill_in 'Model', with: 'quad'
    fill_in 'Year', with: '2014'
    fill_in 'Service', with: 'Oil_Change'
    fill_in 'Date', with: 'Date'

    click_button 'Service'

    expect(page).to have_content('Service has been created')

    # expect(page).to have_content('Oil_Change')
    # expect(page).to have_content('Date')
  end
end
