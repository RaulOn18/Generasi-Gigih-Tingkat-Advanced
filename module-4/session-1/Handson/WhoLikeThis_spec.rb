require_relative '../main'

describe WhoLikeThis do
  it 'is 0' do
    wli = WhoLikeThis.new
    expect(wli.likes).to(eq("no one likes this"))
  end
  it 'is 1' do
    wli = WhoLikeThis.new
    wli.names = ["Peter"]
    expect(wli.likes).to(eq("Peter likes this"))
  end
  it 'is 2' do
    wli = WhoLikeThis.new
    wli.names = ["Jacob", "Alex"]
    expect(wli.likes).to(eq("Jacob, Alex like this"))
  end
  it 'is 3' do
    wli = WhoLikeThis.new
    wli.names = ["Jacob", "Alex", "Mark"]
    expect(wli.likes).to(eq("Jacob, Alex, Mark like this"))
  end
  it 'is 4' do
    wli = WhoLikeThis.new
    wli.names = ["Jacob", "Alex", "Mark", "Max"]
    expect(wli.likes).to(eq("Jacob, Alex and 2 others like this"))
  end
end
