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

  it "shifts all letters keeping unchanged other type of characters" do
    expect(caesar_cipher('H3l10', 3)).to eql('K3o10')
  end

  it "shifts all letters keeping unchanged other type of characters even if the shift goes over the ASCII alphabet" do
    expect(caesar_cipher('H3ll0', 15)).to eql('W3aa0')
  end
end