feature 'Displays the two teams' do
  before do
    player_ed = double('player_ed', name: 'Ed')
    player_mark = double('player_mark', name: 'Mark')
    player_peter = double('player_peter', name: 'Peter')
    player_ainsley = double('player_ainsley', name: 'Ainsley')
    allow_any_instance_of(Game).to receive(:team_one).and_return([player_ed, player_mark])
    allow_any_instance_of(Game).to receive(:team_two).and_return([player_peter, player_ainsley])
  end

  scenario 'The page is set up with two blank teams' do
    Game.create
    visit '/teams'
    expect(page).to have_content 'Team One'
    expect(page).to have_content 'Team Two'
  end

  scenario 'Page displays a list of two random teams' do
    visit '/'
    fill_in 'players', with: 'Peter, Ed, Mark, Ainsley'
    click_button 'generate'
    expect('Ed').to appear_before('Team Two')
    expect('Mark').to appear_before('Team Two')
    expect('Team Two').to appear_before('Peter')
    expect('Team Two').to appear_before('Ainsley')
  end
end
