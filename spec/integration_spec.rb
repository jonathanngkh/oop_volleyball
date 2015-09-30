describe 'beachvolleyball' do

  let(:team)          { Team.new      }
  let(:player)        { Player.new    }
  let(:male_player)   { Player.male   }
  let(:female_player) { Player.female }

  it 'the team is not ready without players' do
    expect(team).not_to be_ready
  end

  it 'the team is ready when it has enough players' do
    add_players_to(team, males: 3, females: 5)

    expect(team).to be_ready
  end

  it 'the team is not ready when it has too many players' do
    add_players_to(team, males: 11)

    expect(team).not_to be_ready
  end

  it 'the team is not ready when it has too few men' do
    add_players_to(team, males: 1, females: 7)

    expect(team).not_to be_ready
  end

  def add_players_to(team, males: 0, females: 0)
    males.times { team.add(male_player)   }
    females.times{ team.add(female_player) }
    team
  end
end