require 'rails_helper'

RSpec.describe Author, type: :model do
  subject{
    described_class.new(fname: "John", lname: "Doe", phone: "9876543210")
  }

  it "is valid with all valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first name" do
    subject.fname = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without last name" do
    subject.lname = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without phone" do
    subject.phone = nil
    expect(subject).to_not be_valid
  end

  before { described_class.create!(fname:"Jon", lname:"Snow", phone:"0123456789")}
  it "is not valid if phone is not unique" do
    subject.phone = "0123456789"
    expect(subject).to be_invalid
  end

  it "gives the full name correctly" do
    full_name = "John Doe"
    expect(subject.full_name).to eq full_name
  end

  describe "Associations" do
    it { should have_many(:books).through(:author_books) }
  end
end
