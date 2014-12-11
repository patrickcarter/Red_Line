require 'rails_helper'

feature 'Editing Services' do
  scenario 'can edit a service'
    Service.create(
      make: 'Yamaha',
      model: 'quad',
      year: '2014',
      service_type: 'Oil Change',
      date: '2014-12-25'
    )

    visit '/'

    click_link 'Edit'

    fill_in 'Make', with: 'Yamaha'
    fill_in 'Model', with: 'quad'
    fill_in 'Year', with: '2014'
    fill_in 'Service type', with: 'Oil Change'
    fill_in 'Date', with: '2014-12-25'

    click_button 'Update'

    expect(page).to have_content('Your 2014 Yamaha quad drop off has been updated. Please call Robert or Kayla at 928-367-2630 to confirm drop off date.')

    within('#my_services') do
      expect(page).to have_content('Yamaha')
      expect(page).to have_content('quad')
      expect(page).to have_content('2014')
      expect(page).to have_content('Oil Change')
      expect(page).to have_content('2014-12-25')

    end
  end
