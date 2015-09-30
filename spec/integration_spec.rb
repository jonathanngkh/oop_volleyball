describe 'beachvolleyball' do
  it 'the team is not ready without players' do
    team = Team.new
    expect(team.ready?).to eq false
  end
end