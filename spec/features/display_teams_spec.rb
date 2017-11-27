feature 'Displays the two teams' do
  scenario 'The page is set up with two blank teams' do
    visit '/teams'
    expect(page).to have_content 'Team One'
    expect(page).to have_content 'Team Two'
  end
end
