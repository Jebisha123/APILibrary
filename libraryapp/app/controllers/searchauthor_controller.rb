class SearchauthorController < ApplicationController
    skip_before_action :verify_authenticity_token
    def show
         v=!params[:bookAuthor].empty?
        if(v)

       b=Book.find_by('bookAuthor': params[:bookAuthor]) 
       if(b.nil?)
        render json: "Book Does not exist"
       else
        render json: b
       end
    end
    
    

       
    

end

end


