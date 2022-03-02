require 'rails_helper'

RSpec.describe Publication, type: :model do
  subject{
    described_class.new(name: "Publication 1")
  }
  it "is valid with a valid parameters" do
    expect(subject).to be_valid
  end

  it "is invalid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it { should have_many(:books).without_validating_presence }
  end

end
