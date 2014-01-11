require 'spec_helper'

feature 'user adds a directory' do
  scenario 'add a directory with albums' do
    visit new_directory_path
    fill_in 'Full path', with: '~/Dropbox/code_tunes'
    click_on 'Submit'
    expect(page).to have_content('Directory was successfully created')
    
    # add a symbolic link to the public folder
    expect(File.exist?(Directory.last.name))
  end
end
