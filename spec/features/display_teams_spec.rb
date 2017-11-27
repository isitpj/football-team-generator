feature 'Displays the two teams' do
  scenario 'The page is set up with two blank teams' do
    visit '/teams'
    expect(page).to have_content 'Team One'
    expect(page).to have_content 'Team Two'
  end

  scenario 'Page displays a list of two random teams' do
    visit '/'
    fill_in 'players', with: 'Peter, Ed, Mark, Ainsley, Alex, Max, Sam, Jamie, Umair, Ignacio'
    click_button 'generate'
    expect('Peter, Ed, Ignacio, Alex, Umair').to appear_before('Team Two')
  end
end
