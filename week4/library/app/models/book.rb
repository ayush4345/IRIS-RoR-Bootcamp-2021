class Book < ApplicationRecord
    has_many :author_books
    has_many :authors ,through: :author_books
    belongs_to :publication
    
    #belongs_to :author 
    
    
    
    validates :publication_id, presence: true
    
    #validates :author, presence: true
    validates :title, uniqueness: true
    validates :title, presence: true
    validates :abstract, presence: true

    def citation_info
        "#{self.title} #{self.authors.map(&:full_name)} #{self.publication.name}"
    end
end