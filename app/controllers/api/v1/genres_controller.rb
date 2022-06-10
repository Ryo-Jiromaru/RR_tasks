class Api::V1::GenresController < ApplicationController
    def create
        genre = Genre.new(genre_params)
        if genre.save
            render json: genre
        else
            render json: genre.errors, status: 422
        end
    end

    private
    def genre_params
        params.require(:genre).permit(:name, :user_id)
    end
end
