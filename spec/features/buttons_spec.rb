feature 'Displays buttons giving the user action options' do
  scenario 'Teams page has buttons to reshuffle teams or change players' do
    Game.create
    visit '/teams'
    expect(page).to have_button 'reshuffle teams'
    expect(page).to have_button 'change players'
  end
end
