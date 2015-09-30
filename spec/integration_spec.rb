describe 'beachvolleyball' do

  let(:team) {Team.new}
  let(:player) { Player.new }

  it 'the team is not ready without players' do
    expect(team).not_to be_ready
  end

  it 'the team is ready when it has enough players' do
    7.times{team.add(player)}
    expect(team).to be_ready
  end

  it 'the team is not ready when it has too many players' do
    11.times{team.add(player)}
    expect(team).not_to be_ready
  end
end