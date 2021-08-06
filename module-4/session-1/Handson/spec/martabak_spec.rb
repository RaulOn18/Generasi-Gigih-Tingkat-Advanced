require_relative '../martabak'

describe Martabak do
  it 'is salty' do
    martabak = Martabak.new('telor')
    taste = martabak.taste

    expect { taste }.to eq('martabak telor is salty')
  end

  it 'is salty' do
    martabak = Martabak.new('coklat')
    taste = martabak.taste

    expect { taste }.to eq('martabak coklat is sweet')
  end
  it 'is salty' do
    martabak = Martabak.new('mobil')
    taste = martabak.taste

    expect { taste }.to eq('martabak mobil is not martabak')
  end
end
