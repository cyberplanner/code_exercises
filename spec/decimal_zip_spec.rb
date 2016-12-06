require 'decimal_zip'

describe Decimalzip do
  let(:zip) { described_class.new }

  it "Has a decimal_zip function/method" do
    expect(zip).to respond_to(:decimal_zip).with(2).argument
  end
  describe "#decimal_zip" do
    it "returns decimal zip of two non-negative" do
      expect(zip.decimal_zip(12, 56)).to eq 1526
      expect(zip.decimal_zip(12345, 678)).to eq 16273845
      expect(zip.decimal_zip(123, 67890)).to eq 16273890
    end
  end

end
