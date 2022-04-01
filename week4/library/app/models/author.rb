class Author < ApplicationRecord
    has_many :author_books
    has_many :books, through: :author_books

    validates :phone, length: {is:10}
    validates :fname, presence: true
    validates :lname, presence: true
    validates :phone , presence: true
    validates :phone, uniqueness: true

    def full_name
        "#{self.fname} #{self.lname}"
    
    end
end
