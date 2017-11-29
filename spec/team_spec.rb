require './lib/team'

describe Team do
  
  it 'Should have players, initialised as an empty array' do
    team = Team.new
    expect(team.players).to eq []
  end

end
