require 'rails_helper'
describe 'Opinions', type: :feature do
  before :each do
    User.create(user_name: 'bishoy',  full_name: 'Bishoy')
  end
  it 'posts an opinion' do
    visit root_path
    fill_in 'user_name', with: 'bishoy'
    click_button 'Log In'

    fill_in 'opinion', with: 'This is opion'
    click_button 'Create Opinion'
    expect(page).to have_text('This is opion')
    
  end

end