require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:pub){
    Publication.create(name: "Publication 1")
  }
  let(:auth1){
    Author.create(fname: "John", lname: "Doe", phone: "9876543210")
  }
  let(:auth2){
    Author.create(fname: "John", lname: "Snow", phone: "0123456789")
  }
  subject{
    described_class.new(title: "Book Name" , abstract: "Random text", publication_id: pub.id)
  }

  before{
    subject.authors << [auth1, auth2]
  }
  it "is valid with valid parameters" do
    expect(subject).to be_valid
  end

  it "gives the correct citation info" do
    citation_info = "Book Name, written by- John Doe, John Snow is a Random text published by Publication 1"
    print(subject.citation_info)
    expect(subject.citation_info).to eq citation_info
  end

  it "is invalid without an" do
    subject.authors = []
    expect(subject).to be_invalid
  end

  it "is invlaid without a publication" do
    subject.publication_id = nil
    expect(subject).to be_invalid
  end

  describe "Associations" do
    it { should have_many(:authors).through(:author_books) }
    it { should belong_to(:publication) }
  end

end
