require "./lib/caesar-cipher"

describe "#caesar_cipher" do
  it "shifts all lowercase letters to the correct value" do
    expect(caesar_cipher('hello', 3)).to eql('khoor')
  end

  it "shifts all uppercase letters to the correct value" do
    expect(caesar_cipher('HELLO', 3)).to eql('KHOOR')
  end
end