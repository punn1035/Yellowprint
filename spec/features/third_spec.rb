require 'rails_helper'

describe 'third screen', js: true do
  let(:normal_user) { create_normal_user(email: 'normal@user.com') }
  let(:super_admin) { create_super_admin(email: 'super@user.com') }

  before do
    super_admin
    normal_user

    sign_in normal_user
  end

  it 'can go to third page' do
    click_link 'Third'
    expect(page).to have_content 'Greeting!'
    puts "have a Greeting!"
  end

  it 'work!' do
    expect(page).to have_content 'Greeting'
    puts "in third page it have a text Greeting"
  end

end
