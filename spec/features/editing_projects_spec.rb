require 'rails_helper.rb'

RSpec.feature 'Users can edit existing projects' do

  scenario 'with valid attributes' do
    FactoryGirl.create(:project, name: 'Sublime Text 3')
    updated_name = 'Sublime Text 4 beta'

    visit '/'
    click_link 'Sublime Text 3'
    click_link 'Edit Project'
    fill_in 'name', with: updated_name
    click_button 'Update Project'

    expect(page).to have_content 'Project has been updated.'
    expect(page).to have_content updated_name
  end
end