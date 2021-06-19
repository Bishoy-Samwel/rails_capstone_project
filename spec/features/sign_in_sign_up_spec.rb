require 'rails_helper'
describe 'the sign in sign up processes', type: :feature do
  before :each do
    User.create(user_name: 'bishoy', full_name: 'Bishoy')
  end
  it 'signs @user in' do
    visit root_path
    fill_in 'user_name', with: 'bishoy'
    click_button 'Log In'
    expect(current_path).to eq(root_path)
    expect(page).to have_text('Bishoy')
  end

  it 'signs @user up' do
    visit root_path
    click_link 'Sign Up'
    expect(current_path).to eq('/sign_up')
    expect(page).to have_text('Username')
    expect(page).to have_text('Fullname')
    expect(page).to have_text('Profile picture')
    fill_in 'user_name', with: 'johan'
    fill_in 'full_name', with: 'Johan'
    click_button 'Sign Up'
    expect(current_path).to eq(root_path)
    expect(page).to have_text('Johan')
  end
end
