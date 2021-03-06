require('rspec')
require('scrabble')

describe('Word#scrabble') do
  it("returns a scrabble score for a letter") do
    word = Word.new("a")
    expect(word.scrabble()).to(eq(1))
  end
  it("returns a scrabble score for a letter using our points hash") do
    word = Word.new("b")
    expect(word.scrabble()).to(eq(3))
  end
  it("returns a scrabble score for a word using our points hash") do
    word = Word.new("jackalop")
    expect(word.scrabble()).to(eq(23))
  end
  it("returns a scrabble score for a word using our points hash regardless of caps") do
    word = Word.new("JacKAloP")
    expect(word.scrabble()).to(eq(23))
  end
end