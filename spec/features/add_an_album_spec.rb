require 'spec_helper'

feature 'user adds a directory' do
  scenario 'add a directory with albums' do
    visit new_directory_path
    fill_in 'Name', with: '~/albums'
    click_on 'Submit'
    expect(page).to have_content('Directory was successfully created')
    binding.pry
  end
end
