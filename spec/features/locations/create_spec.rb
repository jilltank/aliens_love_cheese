require ‘spec_helper’

describe 'creating locations' do
	visit '/winner'
	fill_in "City", with: "Boring"
	click 'state'
	click 'OR'
	click_button "I'm here, where are you?"
	it 'redirects to alien nachos on success' do
		expect(page).to have_content("Boring")
	end

end