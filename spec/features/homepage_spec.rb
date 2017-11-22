feature 'Sets up the home page' do
  scenario 'Renders a title on the page' do
    visit '/'
    expect(page).to have_text 'teamGen'
  end
end
