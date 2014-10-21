require 'rails_helper'

feature 'visit_homepage' do   #use this keyword to define the feature"
  scenario 'Hello World!' do
    visit '/'
    expect(page).to have_content 'Hello World!'
  end
end