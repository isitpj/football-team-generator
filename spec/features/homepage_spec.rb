feature 'Sets up the home page' do
  scenario 'Renders a title on the page' do
    visit '/'
    expect(page).to have_text 'teamGen'
  end
  scenario 'Renders a field to enter player names on the page' do
    visit '/'
    expect(page).to have_field 'players'
  end
end
