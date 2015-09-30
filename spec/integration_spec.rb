describe 'beachvolleyball' do

  it 'the team is not ready without players' do
    team = Team.new
    expect(team).not_to be_ready
  end

  it 'the team is ready when it has enough players' do
    team = Team.new
    7.times{team.add(Player.new)}
    expect(team).to be_ready
  end

end