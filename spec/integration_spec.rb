describe 'beachvolleyball' do

  let(:team)          { Team.new      }
  let(:player)        { Player.new    }
  let(:male_player)   { Player.male   }
  let(:female_player) { Player.female }

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

  it 'the team is not ready when it has too few women' do
    team.add female_player
    7.times { team.add male_player }

    expect(team).not_to be_ready
  end
end