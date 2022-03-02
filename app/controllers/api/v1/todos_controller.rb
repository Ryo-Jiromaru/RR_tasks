class Api::V1::TodosController < ApplicationController
     include ActionController::MimeResponds
    
    def index
        genres = Genre.all
        genre = Genre.find(1)
        render json: genres, include: [:todos]
    end

end
