describe Player do
  it 'is male when created male' do
    player = Player.male
    # expect(player).to be_male
    expect(player.male?).to eq true
  end

  it 'is female when created female' do
    player = Player.female
    expect(player.male?).to eq false
  end
end