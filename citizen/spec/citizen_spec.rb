require_relative '../citizen'

describe Citizen do
  describe "#can_vote?" do
    it "returns true if citizen is 18 years old" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it "returns false if citizen is less than 18 years old" do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it "returns the full name of the citizen" do
      citizen = Citizen.new("yuKiHirO", "MatSUMoto", 57)
      expect(citizen.full_name).to eq("Yukihiro Matsumoto")
    end
  end
end
