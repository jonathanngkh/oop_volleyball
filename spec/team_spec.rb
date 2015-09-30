describe Team do

  subject(:team) { Team.new }
  let(:male_player)   { double :male_player, male?: true    }
  let(:female_player) { double :female_player, male?: false    }

  it 'the team is not ready without players' do
    expect(team).not_to be_ready
  end

  it 'the team is ready when it has enough players' do
    add_players_to(team, males: 7, females: 2)
    expect(team).to be_ready
  end

  it 'the team is not ready when it has too many players' do
    add_players_to(team, males: 5, females: 6)
    expect(team).not_to be_ready
  end

  it 'the team is not ready when it does not have enough men' do
    add_players_to(team, males: 1, females: 7)
    expect(team).not_to be_ready
  end

  def add_players_to(team, males: 0, females: 0)
    males.times { team.add(male_player)   }
    females.times{ team.add(female_player) }
    team
  end
end