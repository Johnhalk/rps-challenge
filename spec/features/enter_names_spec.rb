require 'spec_helper'

feature "Entry form"  do
  scenario "displays players names" do
    sign_in_and_play
    expect(page).to have_content('John')
    expect(page).to have_content('Eammon')
  end
end
