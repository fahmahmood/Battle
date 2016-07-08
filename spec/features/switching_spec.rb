require_relative '../spec_helper'

feature 'switching turns' do
	scenario 'allows players to switch turns' do
		sign_in_and_play
		click_button 'Switch Players'
    expect(page).to have_content "P2's chance to retaliate!"
    click_button 'Attack back'
  end 
end 
