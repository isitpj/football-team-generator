feature 'Displays the two teams' do
  let(:game) { double('game') }

  scenario 'The page is set up with two blank teams' do
    Game.create
    visit '/teams'
    expect(page).to have_content 'Team One'
    expect(page).to have_content 'Team Two'
  end

  scenario 'Page displays a list of two random teams' do
    allow(game).to receive(:team_one).and_return([Player.new('Ed'), Player.new('Mark')])
    visit '/'
    fill_in 'players', with: 'Peter, Ed, Mark, Ainsley'
    click_button 'generate'
    expect('Ed').to appear_before('Team Two')
    expect('Mark').to appear_before('Team Two')
  end
end
