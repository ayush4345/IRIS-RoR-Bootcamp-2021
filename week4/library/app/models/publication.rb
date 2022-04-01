class Publication < ApplicationRecord
    has_many :books
    
    validates :name, presence: true
    

    def book_count
        books.count
    end
end
