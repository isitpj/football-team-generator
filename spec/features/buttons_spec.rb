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

  scenario 'Clicking \'reshuffle teams\' reloads the page with newly reshuffled teams' do
    visit '/'
    fill_in 'players', with: 'Peter, Ed, Mark, Ainsley'
    click_button 'generate'
    allow_any_instance_of(Game).to receive(:team_one).and_return([Player.new('Ed'), Player.new('Peter')])
    allow_any_instance_of(Game).to receive(:team_two).and_return([Player.new('Ainsley'), Player.new('Mark')])
    click_button 'reshuffle teams'
    expect('Ed').to appear_before('Team Two')
    expect('Peter').to appear_before('Team Two')
    expect('Team Two').to appear_before('Ainsley')
    expect('Team Two').to appear_before('Mark')
  end
end
