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

  let(:auth1){
    Author.create(fname: "John", lname: "Doe", phone: "9876543210")
  }
  let(:auth2){
    Author.create(fname: "John", lname: "Snow", phone: "0123456789")
  }

  let(:pub){
    Publication.create(name: "TMH")
  }

  before {
    Book.create(title: "Harry potter", authors: [auth1, auth2], publication_id: pub.id, abstract: "story about something")
    Book.create(title: "Percy Jackson", authors: [auth1, auth2], publication_id: pub.id, abstract: "story about something")
    Book.create(title: "Sherlock Holmes", authors: [auth1, auth2], publication_id: pub.id, abstract: "story about something")
  }
  it "should correctly return the total number of books" do
    expect(described_class.book_count).to eq 3
  end

  describe "Associations" do
    it { should have_many(:books).without_validating_presence }
  end

end
