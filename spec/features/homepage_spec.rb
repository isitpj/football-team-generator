feature 'Sets up the home page' do
  scenario 'Renders a title on the page' do
    visit '/'
    expect(page).to have_text 'teamGen'
  end
  scenario 'Renders a field to enter player names on the page' do
    visit '/'
    expect(page).to have_field 'players'
  end
  scenario 'Renders a button allowing the player to submit their players to generate two teams' do
    visit '/'
    expect(page).to have_button 'generate'
  end
end
