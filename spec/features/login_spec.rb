require 'rails_helper'

describe 'the signin process', type: :feature do
  before :each do
    @user = User.create(name: 'user_name', email: 'user1@gmail.com', password: 'password')
  end

  it 'signs @user in' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'user1@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log In'
    expect(current_path).to eq(user_groups_path(user_id: @user.id))
    expect(page).to have_text('GROUPS')
  end
end
