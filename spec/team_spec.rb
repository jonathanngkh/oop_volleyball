describe Team do

  subject(:team) { Team.new }
  let(:male_player)   { double :male_player, male?: true    }
  let(:female_player) { double :female_player, male?: false    }

  it 'the team is not ready without players' do
    expect(team).not_to be_ready
  end

  it 'the team is ready when it has enough players' do
    7.times{ team.add(male_player)   }
    2.times{ team.add(female_player) }
    expect(team).to be_ready
  end

  it 'the team is not ready when it has too many players' do
    11.times{ team.add(male_player) }
    expect(team).not_to be_ready
  end

  it 'the team is not ready when it does not have enough men' do
    1.times{ team.add(male_player)   }
    7.times{ team.add(female_player) }
    expect(team).not_to be_ready
  end
end