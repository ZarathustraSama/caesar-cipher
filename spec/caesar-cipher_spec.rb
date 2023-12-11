require "./lib/caesar-cipher"

describe "#caesar_cipher" do
  it "shifts all lowercase letters to the correct value" do
    expect(caesar_cipher('hello', 3)).to eql('khoor')
  end
end