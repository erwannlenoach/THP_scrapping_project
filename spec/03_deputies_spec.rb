require_relative '../lib/03_deputies'

describe " the is_multiple_of_3_or_5? method " do

  it "should return the name of a crypto" do
    expect(is_multiple_of_3_or_5(3)).to eq(true)
    expect(is_multiple_of_3_or_5(9)).to eq(true)
    expect(is_multiple_of_3_or_5(5)).to eq(true)
    expect(is_multiple_of_3_or_5(10)).to eq(true)
  end 

end

