class Publication < ApplicationRecord
    has_many :books
    
    validates :name, presence: true
    

    def self.book_count
        Book.all.count 
    
    
    end
end
