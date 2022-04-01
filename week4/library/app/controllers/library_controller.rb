class LibraryController < ApplicationController

    def index
        @public= Publication.all
        @book= Book.all
    end

    def show
        @book=Book.all
    end
end
