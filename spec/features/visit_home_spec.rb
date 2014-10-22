require 'rails_helper'

feature 'visit_homepage' do   #use this keyword to define the feature"
  scenario 'Hello World!' do
    visit '/'
    expect(page).to have_content 'Hello World!'
  end

  scenario 'Privacy' do
    visit root_path
    click_link 'Privacy'
    expect(page).to have_content 'Privacy'
  end

  scenario 'Terms and Conditions' do
    visit root_path
    click_link 'Terms and Conditions'
    # expect(page).have_selector('h1'))
    # except(page).to have_content 'Terms'
    expect(page).to have_xpath('//h1[text() = "Terms and Conditions"]')
  end
end