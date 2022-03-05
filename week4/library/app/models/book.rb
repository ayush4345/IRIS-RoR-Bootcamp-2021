class Book < ApplicationRecord
    has_many :authors ,through: :author_books
    belongs_to :Publication
    #belongs_to :author 
    
    
    
    validates :publication, presence: true
    #validates :author, presence: true
    validates :title, uniqueness: true
    validates :title, presence: true
    validates :abstract, presence: true

    def citation_info
        "#{self.books.authors}"
    end

    def publication
       
    
    
    end
end
