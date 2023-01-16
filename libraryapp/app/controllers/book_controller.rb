class BookController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        render json: Book.all
    end
    def show
        b=Book.find(params[:id])
        render json: b
    end
    def create
        puts params[:bookName]
        puts params[:bookAuthor]
        puts params[:bookQuantity]
        v=!params[:bookName].empty?
        if(v)
        b=Book.create("bookName": params[:bookName], "bookAuthor": params[:bookAuthor], "bookQuantity": params[:bookQuantity])
        puts b
        render json: "Data Added"
        else
        render json: "Data not Added"
       end
    end
    def update
        b=Book.find(params[:id])
        b.update("bookName": params[:bookName], "bookAuthor": params[:bookAuthor], "bookQuantity": params[:bookQuantity])
        render json: "Data updated"
    end
    def destroy
        b=Book.find(params[:id])
        b.destroy
        render json: "Data Deleted"

end
end
