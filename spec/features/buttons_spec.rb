feature 'Displays buttons giving the user action options' do
  before do
    Game.create
  end

  scenario 'Teams page has buttons to reshuffle teams or change players' do
    visit '/teams'
    expect(page).to have_button 'reshuffle teams'
    expect(page).to have_button 'change players'
  end

  scenario 'Clicking \'change players\' returns the user to the home page' do
    visit '/teams'
    click_link 'change players'
    expect(page).to have_xpath('/')
    expect(page).to have_content 'teamGen'
  end
end
