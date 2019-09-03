include WrappityWrap

RSpec.describe WrappityWrap do

  it "has a version number" do
    expect(WrappityWrap::VERSION).not_to be nil
  end

  it "returns "" when given nil" do
    expect(WrappityWrap.wrap(nil, 4)).to eq("")
  end

end
