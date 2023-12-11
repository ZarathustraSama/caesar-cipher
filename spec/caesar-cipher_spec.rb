require "./lib/caesar-cipher"

describe "#caesar_cipher" do
  it "shifts all lowercase letters to the correct value" do
    expect(caesar_cipher('hello', 3)).to eql('khoor')
  end

  it "shifts all uppercase letters to the correct value" do
    expect(caesar_cipher('HELLO', 3)).to eql('KHOOR')
  end

  it "shifts all lowercase and uppercase letters to the correct value" do
    expect(caesar_cipher('Hello', 3)).to eql('Khoor')
  end
end